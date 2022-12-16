class ReviewsController < ApplicationController

  def index
    reviews = Review.all.order(rating: :desc)
    render json: reviews, status: :ok, 
      except: [:created_at, :updated_at], 
      include: { dog_house: { except: [:created_at, :updated_at]}}
  end

end
