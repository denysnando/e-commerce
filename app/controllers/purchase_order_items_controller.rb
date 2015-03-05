class PurchaseOrderItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    @purchaseorderitems = PurchaseOrderItem.all
  end

  def show
    @purchase_order_item = PurchaseOrderItem.find(params[:id])
  end

  def create
    @purchase_order = current_order
    @purchase_order_item = @purchase_order.purchase_order_items.new(purchase_order_item_params)
    @purchase_order.save
    session[:purchase_order_id] = @purchase_order.id
    redirect_to purchase_order_path(@purchase_order)
  end

  def destroy
    @purchase_order = current_order
    @purchase_order_item = @purchase_order.purchase_order_items.find(params[:id])
    @purchase_order_item.destroy
    @purchase_order_item = @purchase_order.purchase_order_items
    redirect_to purchase_order_path(@purchase_order)
  end

  private
  def purchase_order_item_params
    params.require(:purchase_order_item).permit(:product_id, :amount, :sub_total_price, :purchase_order_id)
  end
end
