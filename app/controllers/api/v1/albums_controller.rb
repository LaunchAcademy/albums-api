class Api::V1::AlbumsController < ApplicationController
  def index
    albums = Album.order(created_at: :desc).limit(10)

    respond_to do |format|
      format.json { render json: albums }
      format.xml { render xml: albums }
    end
  end
end
