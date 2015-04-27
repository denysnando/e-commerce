class CategoriesController < ApplicationController


  def show
    if params[:id]
      @category = Category.find(params[:id])
    end
    @best_sellers = Product.limit(2)
  end

end
