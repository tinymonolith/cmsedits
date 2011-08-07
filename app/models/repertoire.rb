class Repertoire < ActiveRecord::Base
  validates :composer, :presence => true
  validates :title, :presence => true
  validates :audio_file_name, :presence => true
  
  has_attached_file :audio
  
end
