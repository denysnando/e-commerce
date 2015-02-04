class Category < ActiveRecord::Base
  has_many :product_category

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
