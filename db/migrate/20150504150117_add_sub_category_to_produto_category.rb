class AddSubCategoryToProdutoCategory < ActiveRecord::Migration
  def change
    add_column :product_categories, :sub_category_id, :integer, references: :sub_categories
  end
end
