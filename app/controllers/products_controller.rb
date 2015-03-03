class ProductsController < ApplicationController

  def index
    @products = Product.limit(3)
    @best_sellers = Product.limit(1)
  end

  def show
    @product = Product.find(params[:id])
    @products = Product.limit(3)
    @best_sellers = Product.limit(1)
  end
end
