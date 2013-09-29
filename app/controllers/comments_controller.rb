class CommentsController < ApplicationController
  def create
    
    @post = Post.find_by_slug!(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    
    if @comment.save
      redirect_to @post, :notice => 'Comment was successfully created!'
    else
      redirect_to @post, :flash => {:error => "Comment creation failed. Please make sure that all fields are filled in and the security question is answered correctly."}
    end
    
  
  end

  def destroy
  
    p params.inspect
  
    @post = Post.find_by_slug!(params[:post_id])
    @comment = Comment.find(params[:id])
    
    if @comment.destroy
      redirect_to @post, :notice => 'Comment was successfully deleted!'
    end
  
  end
end
