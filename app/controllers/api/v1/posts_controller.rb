class api::v1::PostsController < ApplcationController
    def index
        @posts = Posts.all
        render json: @posts
    end

    

    private

       def post_params

       end

end
