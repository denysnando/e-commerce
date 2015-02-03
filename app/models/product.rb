class Product < ActiveRecord::Base
  has_many :images,  inverse_of: :product

  accepts_nested_attributes_for :images, :allow_destroy => true

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
      field :images
    end
  end

end
