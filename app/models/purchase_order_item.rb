class PurchaseOrderItem < ActiveRecord::Base
  belongs_to :purchase_order, :inverse_of => :purchase_order_items
  belongs_to :product

  before_save :update_sub_total

  def update_sub_total
    self.sub_total_price = amount * product.price.to_f
  end

  rails_admin do
    visible false
  end
end
