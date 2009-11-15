db_config =   YAML.load_file(
    ::File.join(Pancake.get_root(__FILE__), 'database.yml')
  )[Pancake.env]

DataMapper.setup(:default, db_config)
