require 'test_helper'

class LineItemTest < ActiveSupport::TestCase
  test 'Calculate total item cost' do
    li = line_items(:one)
    assert_equal 19.98, li.total
  end
end
