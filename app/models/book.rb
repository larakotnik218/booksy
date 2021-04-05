class Book < ApplicationRecord
  belongs_to :user
  mount_uploader :avatar, AvatarUploader

  GENRES = ["Romance", "Drama","Horror","Crime","Action","Fantasy","Kids","Biography"]

end
