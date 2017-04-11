class CommentsController < ApplicationController
  def create
  	@article = Article.find(params[:article_id])
  	@comment = @article.comments.create(params[:comment])
  	redirect_to article_path(params[:article_id])
  end

  def destroy
  	Comment.destroy(params[:id])
  	redirect_to article_path(params[:article_id])
  end
  private
  	def comment_params
    	#params.require(:article_id).map do |u|
    		ActionController::Parameters.new({
    			"utf8"=>"✓",
 				"authenticity_token"=>"bE4z6L2adHcomNSGrz1mn+WIykYcsjB4Rr4bYfGpQE+HmJ6L3+FaD5QS/NfrbIvL2NpbRFcqdQrdYAhqgVGblA==",
 				"comment"=>{"from"=>"mvs]", "content"=>"mL's:", "article_id"=>"1"},
 				"commit"=>"コメントを投稿する",
 				"article_id"=>"1"
 				})
    		

  	end
end
