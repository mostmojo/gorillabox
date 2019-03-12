class BoxesController < ApplicationController
	skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @boxes = Box.all
  end

  def show
    @box = Box.find(params[:id])
    @reviews = Review.where(box_id: @box.id)
  end
end
