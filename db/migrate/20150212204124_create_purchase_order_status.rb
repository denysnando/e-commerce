class CreatePurchaseOrderStatus < ActiveRecord::Migration
  def change
    create_table :purchase_order_statuses do |t|
      t.string :status
    end
  end
end
