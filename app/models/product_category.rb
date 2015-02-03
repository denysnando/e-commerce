class ProductCategory < ActiveRecord::Base
  belongs_to :product, inverse_of: :product_categories
  belongs_to :category

end
