class Product < ActiveRecord::Base
  has_many :images, inverse_of: :product
  has_many :purchase_order_items
  has_many :purchase_orders
  has_many :product_sizes, inverse_of: :product
  has_many :product_categories, inverse_of: :product

  accepts_nested_attributes_for :images, :allow_destroy => true
  accepts_nested_attributes_for :product_categories, :allow_destroy => true
  accepts_nested_attributes_for :product_sizes, :allow_destroy => true

  validates :name, presence: true
  validates :price, presence: true


  rails_admin do
    navigation_label 'Cadastros'
    list do
      field :id
      field :name
      field :description
      field :price
    end
    edit do
      field :name
      field :description
      field :price
      field :amount
      field :weight
      field :product_categories
      field :product_sizes
      field :images
    end
  end
end
