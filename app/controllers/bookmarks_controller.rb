class BookmarksController < ApplicationController
  before_action :set_list

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    if @bookmark.save
      redirect_to @list
    else
      @bookmarks = @list.bookmarks.includes(:movie)
      render "lists/show", status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to @bookmark.list
  end

  private

  def bookmark_params
  params.require(:bookmark).permit(:comment, :movie_id)
  end
end
