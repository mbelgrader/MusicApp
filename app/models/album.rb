class Album < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true

  belongs_to :band
  has_many :tracks, dependent: :destroy
end
