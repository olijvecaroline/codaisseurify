require 'rails_helper'

RSpec.describe Song, type: :model do


  describe " song association with artist" do
  let(:song) { create :song, title: title }
  let(:artist) {create :artist}

  it "belongs to an artist" do
    song = artist.songs.new(title: "Pianoconcerto")

    expect(song.artist).to eq(artist)
  end
end

end
