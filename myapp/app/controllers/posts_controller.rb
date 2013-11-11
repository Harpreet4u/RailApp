class PostsController < ApplicationController
 
 def update
  @post = Post.find(params[:id])

  if @post.update(params[:post].permit(:title, :text))
   redirect_to @post
  else
   render 'edit'
 end
end

 def edit
  @post = Post.find(params[:id])
 end

 def new
  @post = Post.new
 end

 def index
  #@paginator, @post = paginate :posts,
  @posts = Post.paginate :per_page => 5, :page => params[:page]
 end

 def create
  #render text: params[:post].inspect
  @post = Post.new(post_params)

  if @post.save
   redirect_to @post
  else
   render 'new'
  end
 end 

 def show
  @post = Post.find(params[:id])
 end

 private
  def post_params
   params.require(:post).permit(:title, :text, :avatar, :tag_list)
  end
end
