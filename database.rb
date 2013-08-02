require 'data_mapper'

DataMapper::Logger.new($stdout, :debug)

DataMapper.setup(:default, "sqlite://#{File.expand_path('database.db')}")

Dir['./models/*.rb'].entries.each do |model|
    require model
end

DataMapper.auto_upgrade!

