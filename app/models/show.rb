class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    rating = Show.highest_rating
    Show.where(rating: rating).first
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    rating = Show.lowest_rating
    Show.where(rating: lowest_rating).first
  end
end

# least_popular_show: returns the show with the lowest rating.
#
# ratings_sum: returns the sum of all of the ratings.
#
# popular_shows: returns an array of all of the shows that have a rating greater than 5. hint: use the where Active Record method.
#
# shows_by_alphabetical_order: returns an array of all of the shows sorted by alphabetical order according to their names. hint: use the order Active Record method.
