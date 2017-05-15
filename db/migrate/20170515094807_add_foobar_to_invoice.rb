class AddFoobarToInvoice < ActiveRecord::Migration[5.0]
  def change
    add_column :invoices, :foobar, :string
  end
end
