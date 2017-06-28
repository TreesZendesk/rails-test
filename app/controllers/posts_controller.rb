class PostsController < ApplicationController
    def home
        render 'home'
    end

    def index
        @posts = ['Aku adalah saya', "Bahagia sekali", "Cara mengupas"]
        render 'index'
    end

    def show
        @post = Post.where(id: params[:id]).first
        #abort @post.inspect
        render 'show'
    end

    def new
        render 'new'
    end


    def create
        @post = Post.new("title" => "This is title", "body" => "It's the content or body")
        @post.save
        render json: @post
    end
end
