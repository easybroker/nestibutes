module Nestibutes
  class DynamicNestedAttribute < ActiveRecord::Base
    self.abstract_class = true

    def blank?
      raise NotImplementedError
    end

    def present?
      !blank?
    end
  end
end
