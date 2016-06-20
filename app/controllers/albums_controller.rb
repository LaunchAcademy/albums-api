class AlbumsController < ApplicationController
  def index
    @albums = Album.order(created_at: :desc).limit(10)
  end
end
