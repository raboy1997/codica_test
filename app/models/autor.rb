class Autor < ApplicationRecord
  has_and_belongs_to_many :books

  validates :name, :photo, :years_of_life, presence: true
  mount_uploader :photo, PhotoUploader

end
