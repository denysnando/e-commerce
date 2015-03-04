class ProductsController < ApplicationController

  def index
    @products = Product.limit(3)
    @best_sellers = Product.limit(1)
  end

  def show
    @product = Product.find(params[:id])
    @products = Product.limit(3)
    @best_sellers = Product.limit(1)
    @purchase_order_item = current_order.purchase_order_items.new
  end
end
