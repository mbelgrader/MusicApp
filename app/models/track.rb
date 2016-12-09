class Track < ActiveRecord::Base
  validates :name

  belongs_to :album 
end
