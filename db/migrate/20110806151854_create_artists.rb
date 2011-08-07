class CreateArtists < ActiveRecord::Migration
  def self.up
    create_table :artists do |t|
      t.string :name_first
      t.string :name_last
      t.string :instrument

      t.timestamps
    end
  end

  def self.down
    drop_table :artists
  end
end
