class Show < ActiveRecord::Base
end

def self.highest_rating
  Song.maximum(:rating)
end

def self.most_popular_show
    Show.where("rating = ?", self.highest_rating)[0]
end
  
def self.lowest_rating
  Song.minimum(:rating)
end