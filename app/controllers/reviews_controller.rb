class ReviewsController < ApplicationController

  def create
    @list = list.find(params[:list_id])
    @review = list.reviews(review_params)
    if @review.saveredirect_to @list
    else
      render 'list/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

end
