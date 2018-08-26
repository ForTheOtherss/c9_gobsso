class Club < ActiveRecord::Base
    belongs_to :note
    has_many :applies
    
    mount_uploader :image, ImageUploader

end
