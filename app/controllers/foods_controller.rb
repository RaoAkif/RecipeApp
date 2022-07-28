class FoodsController < ApplicationController
  before_action :set_food, only: %i[edit update show destroy]

  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    @food.user = current_user
    if @food.save
      flash[:notice] = 'Food was successfully created'
      redirect_to foods_path(@food)
    else
      render 'new'
    end
  end

  def show
    @food = Food.find(params[:id])
  end

  def general_shopping_list
    @foods = Food.all
  end

  def destroy
    @food.destroy
    flash[:notice] = 'Food was successfully deleted'
    redirect_to foods_path(@food)
  end

  def food_params
    params.require(:food).permit(:name, :measurement_unit, :price, :quantity, :user_id)
  end

  def set_food
    @food = Food.find(params[:id])
  end
end
