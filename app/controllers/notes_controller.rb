class NotesController < ApplicationController
    before_action :authenticate_user!
    
    def new_study
    end
    
    def new_club
    end
    
    def create
        n = Note.new
        n.title = params[:input_title]
        n.content = params[:input_content]
        n.mainCategory = params[:input_mainCategory]
        n.user = current_user
        n.save
        
        redirect_to "/#{params[:input_mainCategory]}"
    end
    
    
    def show_study
        @note = Note.find(params[:id])
    end
    
    def show_club
        @note = Note.find(params[:id])
    end
    
    def destroy
        @note = Note.find(params[:id])
        @note.destroy
            
        redirect_to "/#{@note.mainCategory}"
    end
    
    def edit_club
        @note = Note.find(params[:id])
    end
    
    def edit_study
        @note = Note.find(params[:id])
    end
    
    def update
        note = Note.find(params[:id])
        note.title = params[:input_title]
        note.content = params[:input_content]
        note.save
        
        redirect_to "/#{note.mainCategory}/#{note.id}"
    end
end
