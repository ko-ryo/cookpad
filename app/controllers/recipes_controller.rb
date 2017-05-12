class RecipesController < ApplicationController

  def index
    @recipe = Recipe.new
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
  end
end
