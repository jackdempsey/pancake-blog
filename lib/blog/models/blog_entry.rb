class Blog
  inheritable_inner_classes :BlogEntry

  class BlogEntry
    include DataMapper::Resource
    property :id,    Serial
    property :type,  Discriminator
    property :title, String
    property :body,  Text
    property :created_at, DateTime
    property :updated_at, DateTime

    def to_s
      title
    end
  end
end
