class ReviewsController < ApplicationController
 def new
   @user = current_user
   @box = Box.find(params[:box_id])
   @review = Review.new
 end

 def create
   @review = Review.new
   @box = Box.find(params[:box_id])
   if review.save
     redirect_to box_path(@box)
   else
     render :new
   end
 end
end
