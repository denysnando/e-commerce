class CreatePurchaseOrder < ActiveRecord::Migration
  def change
    create_table :purchase_orders do |t|
      t.integer :user_id, references: :users
      t.float :total_price

      t.timestamps
    end
  end
end
