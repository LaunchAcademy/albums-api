class Album < ActiveRecord::Base
  def display_image
    image || "/images/album.png"
  end
end
