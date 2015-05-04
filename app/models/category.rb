class Category < ActiveRecord::Base
  has_many :product_categories
  has_many :products, through: :product_categories
  belongs_to :sub_category, inverse_of: :category

  def to_s
    name
  end

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
