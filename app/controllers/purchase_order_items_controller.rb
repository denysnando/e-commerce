class PurchaseOrderItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    @purchaseorderitems = PurchaseOrderItem.all
  end

  def show
    @purchase_order_item = PurchaseOrderItem.find(params[:id])
  end
end
