class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def public_recipes
    @recipes = Recipe.all
  end
end
