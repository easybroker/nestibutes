require 'test_helper'

module Nestibutes
  class ContactsControllerTest < Capybara::Rails::TestCase
    include ActiveJob::TestHelper

    def test_show_new_attributes
      visit '/contacts/edit'
      assert_selector '.phone-numbers-group .phone-number', count: 2
      assert_selector '.phone-numbers-group .hidden.empty-template', count: 1
    end
  end
end
