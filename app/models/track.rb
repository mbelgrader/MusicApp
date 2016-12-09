class Track < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  belongs_to :album
end
