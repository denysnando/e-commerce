class AddSchedulesForStatusPurchase < ActiveRecord::Migration
  def change
    add_column :purchase_orders, :open_at, :datetime
    add_column :purchase_orders, :closed_at, :datetime
    add_column :purchase_orders, :canceled_at, :datetime
    add_column :purchase_orders, :transport_at, :datetime
  end
end
