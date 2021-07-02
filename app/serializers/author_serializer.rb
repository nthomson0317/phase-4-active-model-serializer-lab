class AuthorSerializer < ActiveModel::Serializer
  attributes :name
  has_one :profile
  has_many :posts, serializer: AuthorPostSerializer
  has_many :tags, through: :posts
  

  def profile
    { username: self.object.profile.username,
     email: self.object.profile.email,
     bio: self.object.profile.bio,
     avatar_url: self.object.profile.avatar_url}
    # short_content: self.short_content }
  end

 
end
