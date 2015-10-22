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

  def edit
    @picture = Picture.find(params[:id])
  end

  def update

    @picture = Picture.find(params[:id])
    if @picture.update(picture_params)
      redirect_to picture_path(@picture)
    else
      render :edit
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    if @picture.destroy
      redirect_to user_path(current_user)
      flash[:notice] = "You Told That Pic To GTFO"
    else
      flash[:alert] = "That Pic Ain't Goin Anywhere"
    end
  end


  def show
    @picture = Picture.find(params[:id])
    @favorite = Favorite.new
    @comments = @picture.comments
    @comment = Comment.new
    @tag = Tag.new
  end





  private

  def picture_params
    params.require(:picture).permit(:title, :asset)
  end
end
