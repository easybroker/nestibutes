module Nestibutes
  module FormHelper
    def dynamic_nested_field(form, nested_attributes, options = {}, &block)
      template = form.object.send(nested_attributes).build

      include_blank = options[:include_blank]
      blank = form.object.send(nested_attributes).build if include_blank

      content_tag(:div, class: 'dynamic-nested-fields', id: nested_attributes.to_s) do

        form.fields_for nested_attributes do |fields|
          css_classes = ['dynamic-item']
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

    def dynamic_add_link(link_text = 'add')
      link_to link_text, '#', class: 'data-dynamic-add'
    end

    def dynamic_delete_link(link_text = 'delete')
      link_to link_text, '#', class: 'data-dynamic-delete'
    end
  end
end
