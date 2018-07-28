class SitesController < ApplicationController
    def index
    end
    
    def competition
    end
    
    def study
        @notes = Note.where(mainCategory: 'study')
    end
    
    def club
        @club = Note.where(mainCategory: 'club')
    end
end
