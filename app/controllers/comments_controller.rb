class CommentsController < ApplicationController

  def create
    @user = current_user
    @picture = Picture.find(params[:picture_id])
    @comment = @picture.comments.new(comment_params)
    @comment.user = @user

    if @comment.save
      flash[:notice] = "Dude that's the greatest comment ever. You should go get some brunch."
      redirect_to picture_path(@picture)
    else
      string = ""
      @comment.errors.full_messages.each { |msg| string += msg + ". " }
      flash[:alert] = "#{string}"
      redirect_to picture_path(@picture)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

end
