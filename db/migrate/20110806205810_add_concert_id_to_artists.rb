class AddConcertIdToArtists < ActiveRecord::Migration
  def self.up
    add_column :artists, :concert_id, :integer
  end

  def self.down
    remove_column :artists, :concert_id
  end
end
