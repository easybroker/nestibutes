module Nestibutes
  module NestingClassConcerns
    extend ActiveSupport::Concern

    included do
      before_validation :mark_attributes_for_removal
    end

    module ClassMethods
      def dynamic_nested_attributes_for(*attributes)
        attributes.each { |attribute| accepts_nested_attributes_for attribute }
      end
    end

    private

    def mark_attributes_for_removal
      nested_attributes_options.keys.each do |attribute|
        send(attribute).each do |record|
          record.mark_for_destruction if record.blank?
        end
      end
    end

  end
end
