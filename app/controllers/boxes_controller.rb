class BoxesController < ApplicationController
  def index
    @boxes = Box.all
  end

  def show
    @box = Box.find(params[:id])
    @reviews = Review.where(box_id: @box.id)
  end
end
