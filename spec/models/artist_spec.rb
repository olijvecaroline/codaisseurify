require 'rails_helper'

RSpec.describe Artist, type: :model do

  describe " Artists association with song" do
    let(:artist) { create :artist }
    let!(:song) { create :song, artist: artist }

    it "has many songs" do
      song1 = artist.songs.new(title: "title1")
      song2 = artist.songs.new(title: "title2")

      expect(artist.songs).to include(song1)
      expect(artist.songs).to include(song2)
    end

    it "deletes associated rooms" do
      expect { artist.destroy }.to change(Song, :count).by(-1)
    end
  end
end
