require './app/app'
require './app/datamapper_config'

namespace :db do
  desc 'Non-Destructive upgrade'
  task :upgrade do
    DataMapper.auto_upgrade!
    puts "Upgrade Complete!"
  end

  desc 'Destructive upgrade'
  task :migrate do
    DataMapper.auto_migrate!
    puts "Migrate complete!"
  end

end
