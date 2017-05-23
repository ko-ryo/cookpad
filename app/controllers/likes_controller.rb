class LikesController < ApplicationController
  def create
    @like = Like.create(user_id: current_user.id, recipe_id: params[:recipe_id])
    @likes = Like.where(recipe_id: params[:recipe_id])
    redirect_to root_path
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, recipe_id: params[:recipe_id])
    @like.destroy
    @likes = Like.where(recipe_id: params[:recipe_id])
    redirect_to root_path
  end
end
