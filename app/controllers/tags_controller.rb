class TagsController < ApplicationController

  def create
    @picture = Picture.find(params[:tag][:picture_id])
    name = "#" + (params[:tag][:name])
    if Tag.find_by(name: name)
      @tag = Tag.find_by(name: name)
      @picture.tags << @tag
    else
      @tag = Tag.new(tag_params)
      @picture.tags << @tag
    end

    if @tag.save
      flash[:notice] = "Dude that's the greatest tag ever. You should go get some brunch."
      redirect_to picture_path(@picture)
    else
      string = ""
      @tag.errors.full_messages.each { |msg| string += msg + ". " }
      flash[:alert] = "#{string}"
      redirect_to picture_path(@picture)
    end
  end

  def show
    @tag = Tag.find(params[:id])
    @pictures = @tag.pictures
  end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end

end
