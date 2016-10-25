class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

   before_action :prepare_meta_tags, if: "request.get?"

  def prepare_meta_tags(options)
    site_name   = find_optimization("site_name")
    title       = find_optimization("title", [controller_name, action_name].join(" "))
    description = find_optimization("description")
    image       = options[:image] || "your-default-image-url"
    current_url = request.url

    defaults = {
      site:        site_name,
      title:       title,
      image:       image,
      description: description,
      keywords:    %w[web software development mobile app],
      twitter: {
        site_name: site_name,
        site: '@thecookieshq',
        card: 'summary',
        description: description,
        image: image
      },
      og: {
        url: current_url,
        site_name: site_name,
        title: title,
        image: image,
        description: description,
        type: 'website'
      }~~
    }

    options.reverse_merge!(defaults)

    set_meta_tags options
  end

  private

  def find_optimization(name, default)
    optimization = Optimizable::Optimization.where(name: name).first
    optimization ? optimization.content : "Please optimze this in application_controller.rb"
  end
end
