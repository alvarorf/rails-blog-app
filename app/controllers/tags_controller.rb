class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @tags = Tag.all
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    flash.notice = "The tag'#{@tag.name}' has be deleted!"

    redirect_to action: :index
  end
end
