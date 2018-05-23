class BoardController < ApplicationController
  def index
    @list_post = Post.all
  end

  def show
    @show_post = Post.find(params[:p_id])
  end

  def new
  end

  def create
    new_p = Post.new(title: params[:title], editor: params[:editor], content: params[:content])
    new_p.save
    
    redirect_to "/"
  end

  def edit
    @edit_p = Post.find(params[:p_id])
  end

  def update
    update_p = Post.find(params[:p_id])
    update_p.title = params[:title]
    update_p.editor = params[:editor]
    update_p.content = params[:content]
    update_p.save

    redirect_to '/board/show/' + update_p.id.to_s
  end

  def delete
    Post.find(params[:p_id]).destroy
    redirect_to '/'
  end
end
