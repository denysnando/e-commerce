class ProductSize < ActiveRecord::Base
  belongs_to :product, inverse_of: :product_sizes

  rails_admin do
    visible false
  end
end
