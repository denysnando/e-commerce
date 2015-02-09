class CreatePurchaseOrderItem < ActiveRecord::Migration
  def change
    create_table :purchase_order_items do |t|
      t.integer :product_id, references: :product
      t.float :amount
      t.float :sub_total_price

      t.timestamp
    end
  end
end
