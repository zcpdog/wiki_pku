require_dependency "wiki_pku/application_controller"

module WikiPku
  class CommentsController < ApplicationController
    def create
      @comment = Comment.new(comment_params)
      @comment.user = current_user
      @entry = Entry.find(params[:entry_id])
      @comment.entry = @entry
      @comment.save
      
      redirect_to @entry
    end
    
    protected
    def comment_params
      params.require(:comment).permit(:content)
    end
    
  end
end