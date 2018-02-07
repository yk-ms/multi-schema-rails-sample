module Hoge
  class Base < ApplicationRecord
    self.abstract_class = true
    database = YAML.load_file(File.join(Rails.root, 'config', 'database', 'hoge.yml'))[Rails.env.to_s]
    establish_connection database
  end
end
