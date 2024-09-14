class Api::V1::PokemonController < ApplicationController
  def index
    data = ApiClient.fetch_data
    render json: data
  end
end