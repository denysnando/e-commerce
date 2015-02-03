class CreateProductCategory < ActiveRecord::Migration
  def change
    create_table :product_categories do |t|
      t.integer :product_id, references: :product
      t.integer :category_id, references: :category
    end
  end
end
