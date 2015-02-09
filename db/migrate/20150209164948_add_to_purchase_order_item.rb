class AddToPurchaseOrderItem < ActiveRecord::Migration
  def change
    add_column :purchase_order_items, :purchase_order_id, :integer, references: :purchase_orders
  end
end
