class ReviewsController < ApplicationController
    def new
        @review = Review.new
        @restaurant = Restaurant.find(params[:restaurant_id])
        @review.restaurant = @restaurant
    end

    def create
        @review = Review.new(review_params)
        if @review.save
          redirect_to restaurant_path(@review.restaurant_id)
        else
          render :new
        end
    end
    def review_params
        params.require(:review).permit(:content, :rating,:restaurant_id)
    end
end
