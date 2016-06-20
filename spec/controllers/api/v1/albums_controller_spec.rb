require "rails_helper"

RSpec.describe Api::V1::AlbumsController, type: :controller do
  describe "#index" do
    it "returns an index of albums in the JSON format" do
      albums = create_list(:album, 5)
      get :index
      json = JSON.parse(response.body)
      expect(json).to_not be_empty
      expect(json.first["title"]).to eq(albums.last.title)
    end
  end
end
