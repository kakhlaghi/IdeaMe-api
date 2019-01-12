class Api::V1::PostsController < ApplicationController
    def index
        @posts = Post.order("created_at DESC")
        render json: @posts
    end

    def create
        @post = Post.new(post_params)
        render json: @post
    end

    def update
        @post = Post.find(params[:id])
        @post.update_attributes(post_params)
        render json: @post
    end

    private

       def post_params
            params_require(:post).permit(:title, :body)
       end

end
