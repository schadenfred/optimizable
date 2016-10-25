module Optimizable
  class Optimization < ApplicationRecord
    belongs_to :optimizable, polymorphic: true, class_name: "Product"

    # enum name: %w[
    #   site_name title site_image canonical_url description keywords twitter_site_name twitter_site twitter_card twitter_description twitter image og_url og_site_name og_title og_image og_description og_type
    # ]
  end
end
