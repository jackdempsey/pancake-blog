# Enter any global configuration for the stack in this file.

class Blog
  # include middleware for the development stack
  # Labels can be set in the config/environments/<env>.rb file to limit
  # middleware loading.
  # stack(:middleware_name, :labels => [:development, :production]).use(MiddlewareClass)
  self::Configuration.default :blog_title, "Pancake Blog", "A simple title for the blog"
end

