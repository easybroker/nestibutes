# -*- encoding : utf-8 -*-
class Contact < ApplicationRecord
  include Nestibutes::NestingClassConcerns

  has_many :phone_numbers
  has_many :email_addresses, dependent: :destroy
  dynamic_nested_attributes_for :phone_numbers, :email_addresses
end
