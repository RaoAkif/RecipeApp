class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def new
  end

  def show
    @food = Food.find(params[:id])
  end

  def general_shopping_list
    @foods = Food.all
  end
end
