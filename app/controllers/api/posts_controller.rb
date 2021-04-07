module API
  class PostsController < ApplicationController
    def index
      posts = ['Post 1', 'Post 2']

      render json: { posts: posts }

    def create
      render json: { params: params }
      end
    end
  end
end