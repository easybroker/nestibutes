module Nestibutes
  module FormHelper

    def dynamic_nested_field(form, nested_attributes, options = {}, &block)
      template = form.object.send(nested_attributes).build

      blank = form.object.send(nested_attributes).build

      content_tag(:div, class: 'dynamic-nested-fields', id: nested_attributes.to_s) do

        form.fields_for nested_attributes do |fields|
          css_classes = ['dynamic-item margin-lv2-bottom']
          if fields.object == template
            css_classes << 'empty-template hidden'
          elsif fields.object.blank? && blank != fields.object
            css_classes << 'hidden'
          end

          content_tag(:div, class: css_classes) do
            yield fields
          end
        end
      end
    end

    def dynamic_delete_link(label, options = {})
      class_options = (options[:class].to_s + ' dynamic-delete').strip
      link_to label, '#', options.merge(class: class_options)
    end

  end
end
