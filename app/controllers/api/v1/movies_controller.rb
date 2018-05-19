class Api::V1::MoviesController < ApplicationController
  def show
    @movie = Movie.find(params[:id])
    render json: Api::V1::MovieSerializer.new(@movie, params: { user: current_user }).serialized_json
  end
end