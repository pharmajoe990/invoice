class CreateLineItems < ActiveRecord::Migration[5.0]
  def change
    create_table :line_items do |t|
      t.string :description
      t.bigint :amount
      t.decimal :unitCost
      t.boolean :includesTax
      t.integer :order
      t.references :invoice, foreign_key: true

      t.timestamps
    end
  end
end
