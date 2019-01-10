class Api::V1::PostsController < ApplicationController
    def index
        @posts = Post.all
        render json: @posts
    end



    private

       def post_params

       end

end
