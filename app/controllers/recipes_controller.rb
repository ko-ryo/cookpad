class RecipesController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    # @recipes = Recipe.all
    @recipes = Recipe.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @recipe = Recipe.new
    7.times { @recipe.materials.build }
    4.times { @recipe.steps.build }
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save
    redirect_to root_path
  end

  def search
    @recipes = Recipe.where('title LIKE(?)', "%#{params[:title]}%").limit(5)
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def recipe_params
    params.require(:recipe).permit(:title, :image, :point,materials_attributes: [:name, :quantity],steps_attributes: [:body])
  end

end
