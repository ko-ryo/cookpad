class UsersController < ApplicationController

  def show
      @user = User.find(params[:id])
      @favorite_recipe_ids = []
      @favorite_records = Like.where(user_id: @user.id)
      @favorite_records.each do |favorite_records|
        recipe_id = favorite_records.recipe_id
        @favorite_recipe_ids << recipe_id
      end
      @favorite_recipes = Recipe.where(id: @favorite_recipe_ids)
      binding.pry
  end

  def get_favorite_recipe_ids
  end
end
