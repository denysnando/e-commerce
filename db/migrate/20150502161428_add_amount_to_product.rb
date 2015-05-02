class AddAmountToProduct < ActiveRecord::Migration
  def change
    add_column :products, :amount, :float
  end
end
