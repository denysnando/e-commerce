class PurchaseOrderStatus < ActiveRecord::Base
  belongs_to :purchase_order, :inverse_of => :purchase_order_status

  def name
    status
  end

  rails_admin do
    visible false
  end
end
