class Api::V1::CommentsController < ApplicationController

    def index

    end

    def destroy
      comment = Comment.find(params[:id])
      comment.destroy
    end

end