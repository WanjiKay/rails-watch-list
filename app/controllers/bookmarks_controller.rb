class BookmarksController < ApplicationController
  before_action :set_list

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = @list.bookmarks.new(bookmark_params)
    if @bookmark.save
      redirect_to @list
    else
      @bookmarks = @list.bookmarks.includes(:movie)
      render "lists/show", status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    if @bookmark
      @bookmark.destroy
      redirect_to @bookmark.list
    else
      redirect_to lists_path
    end
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def bookmark_params
  params.require(:bookmark).permit(:comment, :movie_id)
  end
end
