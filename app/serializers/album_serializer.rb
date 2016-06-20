class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist, :year, :image
end
