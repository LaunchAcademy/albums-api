require "rails_helper"

RSpec.describe Api::V1::AlbumsController, type: :controller do
  describe "#index" do
    let!(:albums) { create_list(:album, 5) }

    it "returns an index of albums in the JSON format" do
      get :index, format: :json
      json = JSON.parse(response.body)
      title = json["data"].first["attributes"]["title"]

      expect(json).to_not be_empty
      expect(title).to eq(albums.last.title)
    end

    it "returns an index of albums in the XML format" do
      get :index, format: :xml
      xml = Nokogiri::XML(response.body)
      title = xml.xpath("//albums/album/title").first.text

      expect(xml.errors).to be_empty
      expect(title).to eq(albums.last.title)
    end
  end
end
