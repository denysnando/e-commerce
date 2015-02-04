class WelcomesController < ApplicationController

  def index
    @categories = Category.limit(10)
  end

end

