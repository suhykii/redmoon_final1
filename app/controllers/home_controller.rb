class HomeController < ApplicationController
  def main
  end

  def gita
    @posts = Post.all
  end
  
  def write
  end

  def create
    @post = Post.new
    @post.db_title = params[:title]
    @post.db_content = params[:content]
    @post.image =params[:image]
    @post.save
    @posts = Post.order.page("created_at DESC")
    
    
    redirect_to '/gita'
  end

  def read
  end
end
