class FavoritesController < ApplicationController
  before_action :favorite_toggle_feature
    
    def favorite_toggle2
      redirect_to "/club"
    end
    
    def favorite_toggle
      redirect_to "/club/#{params[:id]}"
    end
    
    
    
    def favorite_toggle_feature
      f = Favorite.find_by(user: current_user, note_id: params[:id])
      if f.nil?
        Favorite.create!(user: current_user, note_id: params[:id])
        # f = Favorite.new
        # f.user = current_user
        # f.note_id = params[:id]
        # f.save
      else
        f.destroy
      end
    end
    
end
