class ProductCategory < ActiveRecord::Base
  belongs_to :product, inverse_of: :product_categories
  belongs_to :category
  belongs_to :sub_category

  rails_admin do
    visible false
  end
end
