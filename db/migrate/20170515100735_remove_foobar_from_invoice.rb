class RemoveFoobarFromInvoice < ActiveRecord::Migration[5.0]
  def change
    remove_column :invoices, :foobar, :string
  end
end
