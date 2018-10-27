class Post < ApplicationRecord
  # postはuserテーブルに所属
  belongs_to :user
  # 親の投稿が削除されたら、それにひもづく子に当たる写真も削除する
  has_many :photos, dependent: :destroy

  has_many :likes, -> { order(created_at: :desc) }
  def liked_by(user)
    Like.find_by(user_id: user.id, post_id: id)
  end
end
