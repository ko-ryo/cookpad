class RecipesController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @recipe = Recipe.new
    @recipes = Recipe.all
    # binding.pry
  end

  def show
  end

  def new
    @recipe = Recipe.new
    # @material = Material.new
    # @step = Step.new
    7.times { @recipe.materials.build }
    4.times { @recipe.steps.build }
  end

  def create
    # binding.pry
    @recipe = Recipe.new(recipe_params)

    @recipe.save
    redirect_to root_path

    # @step.save
    # @material.save

    # @recipe.materials.build
    # @recipe.steps.build
    # @recipe.create

  end

  private
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def recipe_params
    params.require(:recipe).permit(:title, :image, :point,materials_attributes: [:name, :quantity],steps_attributes: [:body])
  end

end
