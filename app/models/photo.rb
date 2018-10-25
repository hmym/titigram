class Photo < ApplicationRecord
  # 写真はpostテーブルに所属
  belongs_to :post

  mount_uploader :image, PhotoUploader
end
