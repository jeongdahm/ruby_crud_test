class PostController < ApplicationController
  def index
    @posts = Post.all.reverse
  end

  def new
  end

  def create
      @post = Post.new
      @post.title = params[:title]
      @post.content =params[:content]
      @post.save
    redirect_to '/post/index'
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
      @post = Post.find(params[:id])
      @post.title = params[:title]
      @post.content = params[:content]
      @post.save
    redirect_to '/post/index'
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to '/post/index'
  end
end
