class FavoritesController < ApplicationController

  def create
    @user = current_user
    @picture = Picture.find(params[:favorite][:picture_id])
    @favorite = @picture.favorites.new
    @favorite.user = @user
      if @favorite.save
        flash[:notice] = "Yo I thought that one was tight, Too."
        redirect_to picture_path(@picture)
      else
        flash[:alert] = "Do you really want to favorite this one?"
        redirect_to picture_path(@picture)
      end
  end

  # private
  #
  # def favorite_params
  #   params.require(:favorite)
  # end
end
