['hoge','huga'].each do |db_name|
  namespace db_name.to_sym do
    desc "hoge db configuration"
    task :set_db_config do
      Rails.application.config.paths['db'] = [db_name]
      Rails.application.config.paths['config/database'] = ["config/database/#{db_name}.yml"]
    end

    task drop: :set_db_config do
      Rake::Task['db:drop'].invoke
    end

    task create: :set_db_config do
      Rake::Task['db:create'].invoke
    end

    task migrate: :set_db_config do
      Rake::Task['db:migrate'].invoke
    end

    task rollback: :set_db_config do
      Rake::Task['db:rollback'].invoke
    end

    task seed: :set_db_config_paths do
      Rake::Task['db:seed'].invoke
    end

    task version: :set_db_config do
      Rake::Task['db:version'].invoke
    end
  end
end
