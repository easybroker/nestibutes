require 'test_helper'

class Nestibutes::FormHelperTest < ActionView::TestCase

  test "delete link" do
    assert_dom_equal %{<a class="nestibutes-delete" href="#">test</a>},
     dynamic_delete_link('test')
  end

  test "delete link with options" do
    assert_dom_equal %{<a class="foo nestibutes-delete" href="#">test</a>},
     dynamic_delete_link('test', class: 'foo')
  end

end
