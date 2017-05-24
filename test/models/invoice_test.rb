require 'test_helper'

class InvoiceTest < ActiveSupport::TestCase
  test "Invoice total equals total of all line items subtotals" do
    invoice = invoices(:one)
    assert_equal 62.21, invoice.total
  end
end
