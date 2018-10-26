class Photo < ApplicationRecord
  # 写真はpostテーブルに所属
  belongs_to :post
  # 画像をアップロードしていない場合は投稿できないようにすうr
  validates :image, presence: true
  mount_uploader :image, PhotoUploader
end
