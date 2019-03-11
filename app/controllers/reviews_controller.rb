class ReviewsController < ApplicationController

 def index
  @reviews = Review.all
 end

 def new
   @user = current_user
   @box = Box.find(params[:box_id])
   @review = Review.new
 end

 def create
   @box = Box.find(params[:box_id])
   @review = Review.new(review_params)
   @review.box = @box
   @review.user = current_user
   if @review.save
     redirect_to box_path(@box)
   else
     render :new
   end
 end

  private

  def review_params
    params.require(:review).permit(:description, :stars)
  end
end
