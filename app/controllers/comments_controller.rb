class CommentsController < ApplicationController
  
  def create
    @article = Article.find(params[:id])
    if Article.find(params[:id]).comments.create(params[:comment].merge({user_id:current_user.id}))
      render :json => {success:true, content:params[:comment]["comment"], created_at:Time.now, user_name:current_user.username, user_profile_path:'#' }
     else 
      render :json => {success:false}
     end
    
  end

end
