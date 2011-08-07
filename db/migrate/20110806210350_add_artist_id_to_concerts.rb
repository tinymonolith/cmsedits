class AddArtistIdToConcerts < ActiveRecord::Migration
  def self.up
    add_column :concerts, :artist_id, :integer
  end

  def self.down
    remove_column :concerts, :artist_id
  end
end
