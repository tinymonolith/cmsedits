class CreateConcerts < ActiveRecord::Migration
  def self.up
    create_table :concerts do |t|
      t.string :title
      t.string :artist
      t.string :repertoire
      t.datetime :date

      t.timestamps
    end
  end

  def self.down
    drop_table :concerts
  end
end
