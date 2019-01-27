class Api::V1::PostsController < ApplicationController
    def index
        @posts = Post.order("created_at DESC")
        render json: @posts
    end

    def create
        @post = Post.new(post_params)
        if @post.save 
            render json: @post, status: 200
        else
            render json: {message: comment.errors}, status: 400    
        end
    end    

    def update
        @post = Post.find(params[:id])
        @post.update_attributes(post_params)
        render json: @post
    end

    def show 
        @post = Post.find(params[:id])
        render json: @post
    end


    private

       def post_params
            params.require(:post).permit(:title, :body, :votes)
       end

end
