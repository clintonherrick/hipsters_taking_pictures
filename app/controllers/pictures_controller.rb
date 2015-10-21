class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    @user = current_user
    @picture = @user.pictures.new(picture_params)
    if @picture.save
      flash[:notice] = "Congrats you Hipster."
      redirect_to picture_path(@picture)
    else
      flash[:alert] = "Your Polaroid's Hipster Rating Is Too Low"
      render :new
    end
  end

  def show
    @picture = Picture.find(params[:id])
    @comments = @picture.comments
    @comment = Comment.new
    @tag = Tag.new
  end





  private

  def picture_params
    params.require(:picture).permit(:title, :asset)
  end
end
