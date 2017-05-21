class Subcategory < ApplicationRecord
  belongs_to :category
  has_many :events, dependent: :destroy
  mount_uploader :photo, PhotoUploader
end
