class Post < ApplicationRecord
  # postはuserテーブルに所属
  belongs_to :user
  # 親の投稿が削除されたら、それにひもづく子に当たる写真も削除する
  has_many :photos, dependent: :destroy
end
