class Artist < ActiveRecord::Base
  has_and_belongs_to_many :concerts
  
  
  def full_name
      "#{name_last}, #{name_first}"
  end

  
end
