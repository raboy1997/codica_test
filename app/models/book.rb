class Book < ApplicationRecord
  has_and_belongs_to_many :autors
  belongs_to :category,  optional: true

  validates :name, :cover, :description,  presence: true
  mount_uploader :cover, CoverUploader

end
