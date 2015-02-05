class WelcomesController < ApplicationController

  def index
    @categories = Category.limit(10)
    @products = Product.limit(6)
    @best_sellers = Product.limit(1)
    @banners = Banner.limit(3)
  end

end

