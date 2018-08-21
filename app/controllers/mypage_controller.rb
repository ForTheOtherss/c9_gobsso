class MypageController < ApplicationController
    before_action :check_site
    
    
    def info
    end
    
    def info2
    end
    
    def info3
    end
    
    def info4
    end
    
    def notes_list
        @notes = current_user.notes.where(mainCategory: 'club').order("created_at DESC")
    end
    
    private
        def check_site
            @mypage = request.env['PATH_INFO']
        end
    
end
