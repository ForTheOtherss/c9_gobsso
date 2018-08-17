class NotesController < ApplicationController
    # before_action :authenticate_user!
    before_action :lnb_class1, only: [:edit_study, :new_study, :show_study]
    before_action :lnb_class2, only: [:edit_comp, :new_comp, :show_comp]
    before_action :lnb_class3, only: [:edit_club, :new_club, :show_club]
    
    
    def lnb_class1
        @study = 'bg-color1 black3'
    end
    
    def lnb_class2
        @comp = 'bg-color1 black3'
    end
    
    def lnb_class3
        @club = 'bg-color1 black3'
    end
        
    
    
    
    def new_study
    end
    
    def new_club
    end
    
    def create
        n = Note.new
        n.title = params[:input_title]
        n.subtitle = params[:input_subtitle]
        n.content = params[:input_content]
        n.qualification = params[:input_qualification]
        n.mainCategory = params[:input_mainCategory]
        n.user = current_user
        n.save
        
        c = Club.new
        c.field = params[:input_field]
        c.official = params[:input_type]
        c.room = params[:input_room]
        c.size = params[:input_size]
        c.note = n
        c.save
        

        

        
        redirect_to "/#{params[:input_mainCategory]}"
        # binding.pry
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
