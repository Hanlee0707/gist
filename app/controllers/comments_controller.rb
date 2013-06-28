class CommentsController < ApplicationController
  def create
    @comment = Comment.new(params[:comment])
    respond_to do |format|
      if @comment.save
        format.html { redirect_to article_url(@comment.article_id), notice: 'Successfully commented.' and return }
      else
        format.html { redirect_to article_url(@comment.article_id), notice: "Can't comment right now." and return }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @return_article_id = @comment.article_id
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to article_url(@return_article_id) }
      format.json { head :no_content }
    end
  end
end
