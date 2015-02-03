class Category < ActiveRecord::Base
  has_many :product_category

  rails_admin do
   navigation_label 'Cadastros'
  end
end
