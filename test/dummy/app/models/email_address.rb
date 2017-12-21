# -*- encoding : utf-8 -*-
class EmailAddress < Nestibutes::DynamicNestedAttribute
  belongs_to :contact

  def blank?
    email.blank?
  end
end
