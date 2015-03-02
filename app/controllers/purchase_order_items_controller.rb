class PurchaseOrderItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    @purchaseorderitems = PurchaseOrderItem.all
  end

  def show
    @purchase_order_item = PurchaseOrderItem.find(params[:id])
  end

   def create
     @purchase_order = PurchaseOrder.find(params[:id])
     if @purchase_order.size > 0
       redirect_to purchase_order_path(@purchase_order)
    end
  end

  private
  def purchase_params
    params.require(:purchase_order).permit(:product_id, :amount, :sub_total_price,
                                           :purchase_order_id)
  end
end
