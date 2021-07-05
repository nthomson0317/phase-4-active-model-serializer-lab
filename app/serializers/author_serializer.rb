class AuthorSerializer < ActiveModel::Serializer
  attributes :name
  has_one :profile, serializer: AuthorProfileSerializerSerializer
  has_many :posts, serializer: AuthorPostSerializer
  has_many :tags, through: :posts
  

 
end
