class PurchaseOrderItem < ActiveRecord::Base
  belongs_to :purchase_order, :inverse_of => :purchase_order_items
  belongs_to :product

  def calc_sub_total
    amount * sub_total_price
  end

  rails_admin do
    visible false
  end
end
