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

def self.least_popular_show
    Show.where("rating = ?", self.lowest_rating)[0]
end

def self.ratings_sum
 <Show>.sum(:<rating>)
end 

