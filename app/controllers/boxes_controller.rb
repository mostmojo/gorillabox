class BoxesController < ApplicationController
  def index
    @boxes = Box.all
  end

  def show
    @box = Box.find(params[:id])
  end
end
