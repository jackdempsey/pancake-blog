class Blog
  inheritable_inner_classes :BlogEntry

  class BlogEntry < ActiveRecord::Base
    def to_s
      title
    end
  end
end
