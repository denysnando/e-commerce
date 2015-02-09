class PurchaseOrder < ActiveRecord::Base
  belongs_to :user, :inverse_of => :purchase_order
  has_many :purchase_order_items, :inverse_of => :purchase_order
  #has_many :product, :through => :purchase_order_items

  accepts_nested_attributes_for :purchase_order_items, :allow_destroy => true

  rails_admin do
    navigation_label 'Financeiro'
    edit do
      field :user
      field :purchase_order_items
      field :total_price
    end
  end
end
