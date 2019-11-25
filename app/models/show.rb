class Show < ActiveRecord::Base
end

def highest_rating
  Song.maximum(:rating)
end