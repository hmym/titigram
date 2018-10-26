module ApplicationHelper
  def avatar_url user
    return user.image if user.image #imageカラムに何もないときはデフォルトのアイコンを表示する
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    "https://www.gravatar.com/avatar/#{gravatar_id}.jpg"
  end
end
