class Api::V1::HikesController < ApplicationController
  

  def index
    hikes = Hike.all
    #render json: hikes, include: [:comments]
    render json: HikeSerializer.new(hikes, include: [:comments])
  end

  def update
    hike = Hike.find(params[:hike_id])
    new_comment = hike.comments.build(user_name: params[:user_name], content: params[:content] )
    new_comment.save
    render json: HikeSerializer.new(hike), status: :accepted
  end


  #def create
    #hikes = Hike.new(hike_params) 
  #end

  private

  def hike_params
    params.require(:hike).permit(:user_name, :content, :hike_id)
  end
end