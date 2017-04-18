class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
  	@comment = Comment.create(comment_params)
  end

  def destroy
  	Comment.destroy(params[:id])
  	redirect_to article_path(params[:article_id])
  end
  private
  	def comment_params	
  		params.require(:comments).permit(:form, :content, :article_id)
  	end
end
