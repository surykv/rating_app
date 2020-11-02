class MoviesController < ApplicationController

  def index
    # group by movie ids, calculate and sort by average rating/stars in desc order and pluck movie ids
    # '-' is used to sort in desc order
    @average_ratings = Review.group(:movie_id).average('stars')
    movie_ids = @average_ratings.to_a.sort_by{ |h| -h.second }.map(&:first) 
    @movies = Movie.where(id: movie_ids).order_as_specified(id: movie_ids)
  end
end
