class Show < ActiveRecord::Base
end

def self.highest_rating
  Show.maximum(:rating)
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

def self.popular_shows
    Song.where("rating > ?", 5)[]
end

