class Category < ActiveRecord::Base
  has_many :product_categories
  has_many :products, through: :product_categories

  rails_admin do
   navigation_label 'Cadastros'
   list do
    field :id
    field :name
   end
   edit do
    field :name
   end
  end
end
