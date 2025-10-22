class BookmarksController < ApplicationController
  before_action :set_list, only: [:new, :create]
  before_action :set_bookmark, only: :destroy

  def new
    @bookmark = Bookmark.new
  end

  def create
<<<<<<< HEAD
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
=======
    @bookmark = @list.bookmarks.new(bookmark_params)
>>>>>>> 45e19eca97f4264d309e9bbd282c068f9804e6a3
    if @bookmark.save
      redirect_to list_path(@list)
    else
      @review = Review.new
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
<<<<<<< HEAD
    @bookmark.destroy
    redirect_to list_path(@bookmark.list), status: :see_other
=======
    @bookmark = Bookmark.find(params[:id])
    if @bookmark
      @bookmark.destroy
      redirect_to @bookmark.list
    else
      redirect_to lists_path
    end
>>>>>>> 45e19eca97f4264d309e9bbd282c068f9804e6a3
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def bookmark_params
  params.require(:bookmark).permit(:comment, :movie_id)
  end

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end
end
