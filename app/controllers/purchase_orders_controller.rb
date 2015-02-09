class PurchaseOrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @purchase_orders = PurchaseOrder.all
    @best_sellers = Product.limit(1)
  end

  def show
    @purchase_order = PurchaseOrder.find(params[:id])
  end
end
