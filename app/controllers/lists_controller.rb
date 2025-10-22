class ListsController < ApplicationController
<<<<<<< HEAD
  before_action :set_list, only: [:show, :destroy]
=======
  before_action :set_list, only: [:show, :edit, :update]
>>>>>>> 45e19eca97f4264d309e9bbd282c068f9804e6a3

  def index
    @lists = List.all
  end

  def show
    @bookmark = Bookmark.new
    @review = Review.new(list: @list)
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @list.destroy
    redirect_to lists_path, status: :see_other
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
