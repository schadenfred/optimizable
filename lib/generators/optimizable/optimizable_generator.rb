class OptimizableGenerator < Rails::Generators::NamedBase
  namespace "optimizable"

  source_root File.expand_path('../templates', __FILE__)



  def add_engine_route_to_app
    route "mount Optimizable::Engine => \"\/optimizable\""
  end

  def add_optimizable_to_models
    insert_into_file "app/models/#{file_name}.rb", "  include Optimizify\n", :after => "ApplicationRecord\n"
  end
end
