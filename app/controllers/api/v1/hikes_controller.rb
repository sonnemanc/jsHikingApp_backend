class Api::V1::HikesController < ApplicationController

  def index
    hikes = Hike.all
    #render json: hikes, include: [:comments]
    render json: HikeSerializer.new(hikes, include: [:comments])
  end

  #def create
    #hikes = Hike.new(hike_params) 
  #end

  private

  def hike_params
    
  end
end