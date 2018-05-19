class Api::V1::ReviewsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @reviews = Review.where(reviewable_id: params[:id], reviewable_type: params[:type].capitalize!) 
    render json: Api::V1::ReviewSerializer.new(@reviews, include: [:user]).serialized_json
  end

  def create
    @review = Review.new(review_params.merge(user: current_user))
    if @review.save
      render json: @review
    else
      render json: { errors: @review.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

    def review_params
      params.require(:review).permit(:reviewable_type, :reviewable_id, :rating, :description)
    end
end