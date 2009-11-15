class Blog
  inheritable_inner_classes :BlogEntry

  class BlogEntry < ActiveRecord::Base
    # Without this we can't actually make use of sti :(
    self.store_full_sti_class = true

    def to_s
      title
    end
  end
end
