module Fuga
  class Base < ApplicationRecord
    self.abstract_class = true
    database = YAML.load_file(File.join(Rails.root, 'config', 'database', 'fuga.yml'))[Rails.env.to_s]
    establish_connection database
    def self.table_name_prefix
      "#{connection.current_database}."
    end
  end
end
