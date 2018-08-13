class SitesController < ApplicationController
    before_action :lnb_class1, only: [:study]
    before_action :lnb_class2, only: [:competition]
    before_action :lnb_class3, only: [:club]
    
    
    def lnb_class1
        @study = 'bg-color1 black3'
    end
    
    def lnb_class2
        @comp = 'bg-color1 black3'
    end
    
    def lnb_class3
        @club = 'bg-color1 black3'
    end
    
    
    
    def index
        @header = 11;
    end
    
    def competition
    end
    
    def study
        @notes = Note.where(mainCategory: 'study').order("created_at DESC").page params[:page]
    end
    
    def club
        @club = Note.where(mainCategory: 'club').order("created_at DESC").page params[:page]
    end
end
