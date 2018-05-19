class Api::V1::ExecutionsController < ApplicationController
  before_action :set_execution, only: :update
  skip_before_action :verify_authenticity_token

  def show
    movie = Movie.find(params[:id])
    @player = movie.players.find_or_create_by(end_date: nil, user: current_user)
    render json: Api::V1::PlayerSerializer.new(@player, include: [:movie]).serialized_json
  end

  def update
    if @player.update(player_params.merge(user: current_user))
      render json: Api::V1::PlayerSerializer.new(@player, include: [:movie]).serialized_json
    else
      render json: { errors: @player.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

    def player_params
      params.require(:execution).permit(:elapsed_time, :end_date)
    end

    def set_execution
      @player = Player.find_by(movie_id: params[:id])
    end
end