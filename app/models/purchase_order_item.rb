class PurchaseOrderItem < ActiveRecord::Base
  belongs_to :purchase_order, :inverse_of => :purchase_order_items
  belongs_to :product

  rails_admin do
    visible false
  end
end
