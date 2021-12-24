module ShoutHelper
  def avatar(user)
    email_digest = Digest::MD5.hexdigest user.email
    url = "//www.gravatar.com/avatar/#{email_digest}"
    image_tag url
  end
end
