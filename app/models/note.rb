class Note < ActiveRecord::Base
    has_many :comments, :dependent => :destroy
    paginates_per 10
    belongs_to :user
    has_one :club, dependent: :destroy
    
    has_many :favorites
    has_many :f_users, through: :favorites, source: :user
    
    
    has_many :impressions, :as=>:impressionable
    
    acts_as_votable
    
    def impression_count
       impressions.size
    end
 
    def unique_impression_count
       # impressions.group(:ip_address).size gives => {'127.0.0.1'=>9, '0.0.0.0'=>1}
       # so getting keys from the hash and calculating the number of keys
       impressions.group(:ip_address).size.keys.length #TESTED
    end
end
