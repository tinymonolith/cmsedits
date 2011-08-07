class CreateConcertsArtistsJoinTable < ActiveRecord::Migration
  def self.up
    create_table :artists_concerts, :id => false do |t|
      t.integer :concert_id
      t.integer :artist_id
    end
  end

  def self.down
    drop_table :artists_concerts
  end
end
