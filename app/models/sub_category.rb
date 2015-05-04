class SubCategory < ActiveRecord::Base
  has_many :product_categories
  has_many :products, through: :product_categories
  belongs_to :category, inverse_of: :sub_category

  rails_admin do
   navigation_label 'Cadastros'
   list do
    field :id
    field :name
   end
   edit do
    field :name
    field :category
   end
  end
end
