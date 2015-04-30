class WelcomesController < ApplicationController

  def index
   @products = Product.paginate(:page => params[:page], :per_page => 9)

    @categories = Category.limit(10)
    @best_sellers = Product.limit(2)
    @banners = Banner.limit(3)
  end

  def show
    @product = Product.find(params[:id])
  end

end

