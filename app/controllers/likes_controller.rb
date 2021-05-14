class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    if(@like = @post.likes.create(like_params))
    redirect_to posts_path(@post)
  else
    render 'home'
  end
  end
  private def like_params
    params.require(:like).permit(:username)
  end
end
