class Article
  include Mongoid::Document
  field :name, :type => String
  field :content, :type => String
  field :reviewed, :type => Boolean

  validates_uniqueness_of :name, :message => "already exists"
end
