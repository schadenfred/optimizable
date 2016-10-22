module Optimizable
  class Optimization < ApplicationRecord
    belongs_to :optimizable, polymorphic: true
  end
end
