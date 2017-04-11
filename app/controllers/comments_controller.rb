class CommentsController < ApplicationController
  def create
  	@comments = Comment.new(comment_params)
   	respond_to do |format|
      if @comments.save
        format.html { redirect_to @comments, notice: 'Comments was successfully created.' }
        format.json { render :show, status: :created, location: @comments }
      else
        format.html { render :new }
        format.json { render json: @comments.errors, status: :unprocessable_entity }
      end
    end

  def destroy
  	@comments.destroy
  	respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Comments was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
  	def comment_params
      params.require(:name , :article_id).permit(:content)
    end
end
