class ArticlesController < ApplicationController
  def show
    @article = Article.published.find(params[:id])
    @comments = @article.comments.page(params[:page]).per(10)
    @comment = Comment.new( { :article_id => @article.id } )
  end

end
