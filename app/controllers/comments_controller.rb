class CommentsController < ApplicationController
    def create
        comment = Comment.new
        comment.content = params[:input_content]
        comment.note_id = params[:note_id]
        comment.save
        
        redirect_to "/#{comment.note.mainCategory}/#{comment.note.id}"
    end
    
    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
        
        redirect_to "/#{comment.note.mainCategory}/#{comment.note.id}"
    end
end
