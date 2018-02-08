class Autor < ApplicationRecord
  has_and_belongs_to_many :books

  mount_uploader :photo, PhotoUploader

end
