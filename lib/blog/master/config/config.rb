ActiveRecord::Base.establish_connection(
  YAML.load_file(
    ::File.join(Pancake.get_root(__FILE__), 'database.yml')
  )[Pancake.env]
)
