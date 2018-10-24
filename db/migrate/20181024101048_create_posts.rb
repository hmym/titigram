class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :caption
      #外部キーを設定しusersテーブルに紐付けて検索や削除を便利に行う
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
