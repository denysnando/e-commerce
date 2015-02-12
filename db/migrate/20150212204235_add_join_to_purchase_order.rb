class AddJoinToPurchaseOrder < ActiveRecord::Migration
  def change
    add_column :purchase_orders, :purchase_order_status_id, :integer, references: :purchase_order_statuses
  end
end
