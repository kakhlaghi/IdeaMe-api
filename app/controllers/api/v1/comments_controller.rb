class Api::V1::CommentsController < ApplicationController

    def create
        comment = Comment.new(comment_params)
        if comment.save
            render json: response, status: 200
        else
            render json: {message: comment.errors}, status: 400
            
        end    
    end
    


    private

    def comment_params
        params.require(:comment).permit(:comment_body, :post_id)
    end

end
