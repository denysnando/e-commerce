class JointProductToProductSize < ActiveRecord::Migration
  def change
    add_column :product_sizes, :product_id, :integer, references: :product
  end
end
