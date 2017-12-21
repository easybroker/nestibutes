# -*- encoding : utf-8 -*-
class PhoneNumber < Nestibutes::DynamicNestedAttribute
  belongs_to :contact

  def blank?
    number.blank?
  end
end
