module Fuga
  class Base < ApplicationRecord
    self.abstract_class = true
    database = YAML.load_file(File.join(Rails.root, 'config', 'database', 'fuga.yml'))[Rails.env.to_s]
    establish_connection database
  end
end
