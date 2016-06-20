class Api::V1::AlbumsController < ApplicationController
  def index
    albums = Album.order(created_at: :desc).limit(10)
    render json: albums
  end
end
