class Book < ApplicationRecord
  belong_to :user
  mount_uplodader :avatar, AvatarUploader




end
