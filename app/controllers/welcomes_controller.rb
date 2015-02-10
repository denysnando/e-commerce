class WelcomesController < ApplicationController

  def index
    @categories = Category.limit(10)
    @products = Product.limit(6).order('name')
    @best_sellers = Product.limit(2)
    @banners = Banner.limit(3)
  end

  def show
    @product = Product.find(params[:id])
  end

end

