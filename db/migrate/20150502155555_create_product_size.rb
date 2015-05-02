class CreateProductSize < ActiveRecord::Migration
  def change
    create_table :product_sizes do |t|
      t.string :name
      t.integer :amout
      t.string :color
    end
  end
end
