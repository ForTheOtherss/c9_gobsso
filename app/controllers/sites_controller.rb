class SitesController < ApplicationController
    def index
        render layout: 'index_layout'
    end
    
    
    
    def club_content
    end
    
    def competition
    end
    
    def study
        @notes = Note.all
    end
    
    def club
        @club = Club.all
    end
    
end
