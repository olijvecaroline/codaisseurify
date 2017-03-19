require 'rails_helper'

RSpec.describe Photo, type: :model do

    describe " photo association with artist" do
    let!(:photo) { create :photo, artist: artist }
    let!(:artist) {create :artist}

    it "belongs to an artist" do
      photo = artist.photo
      expect(photo.artist).to eq(artist)
    end
  end
end
