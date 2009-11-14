require 'active_record'

class Blog < Pancake::Stacks::Short
  add_root(__FILE__, "blog")

  # Hook to use before we mount any applications
  # before_mount_applications do
  # end

  initialize_stack

  ActiveRecord::Base.establish_connection(
    YAML.load_file(
      ::File.join(Pancake.get_root(__FILE__, 'blog', 'config'), 'database.yml')
    )[Pancake.env]
  )
end

require ::File.join(Pancake.get_root(__FILE__, 'blog'), 'blog')
