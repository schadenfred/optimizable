module Optimizify

  extend ActiveSupport::Concern

  included do
    has_many :optimizations, as: :optimizable
  end
end