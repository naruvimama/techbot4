class ArticlesController < ApplicationController
  def show
    @article = Article.published.find(params[:id])
    @comments = @article.comments.page(params[:page])
    @comment = Comment.new( { :article_id => @article.id } )
  end

end
