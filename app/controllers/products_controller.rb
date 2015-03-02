class ProductsController < ApplicationController

  def index
    @products = Product.limit(3)
    @best_sellers = Product.limit(1)
  end

  def show
    @product = Product.find(params[:id])
    @products = Product.limit(3)
    @best_sellers = Product.limit(1)
    form_info
    @purchase_order_items.product_id = @product.try(:id)
  end

  private

  def form_info
    @purchase_order_items = PurchaseOrderItem.new
  end

end
