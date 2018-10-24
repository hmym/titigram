class Photo < ApplicationRecord
  # 写真はpostテーブルに所属
  belongs_to :post
end
