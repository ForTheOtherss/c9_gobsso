class NotesController < ApplicationController
    # before_action :set_note, only: [:show, :edit, :update, :destroy]
    # before_action :authenticate_user!, except: [:study]
    
    def new
    end
    
    def create
        n = Note.new
        n.title = params[:input_title]
        n.content = params[:input_content]
        n.user = current_user
        n.save
        
        redirect_to "/notes"
    end
    
    def study
        @notes = Note.all
    end
    
    def show
        @note = Note.find(params[:id])
    end
    
    def destroy
        @note = Note.find(params[:id])
        @note.destroy
            
        redirect_to "/notes"
    end
    
    def edit
        @note = Note.find(params[:id])
    end
    
    def update
        note = Note.find(params[:id])
        note.title = params[:input_title]
        note.content = params[:input_content]
        note.save
        
        redirect_to "/notes/#{note.id}"
    end
    
    
end
