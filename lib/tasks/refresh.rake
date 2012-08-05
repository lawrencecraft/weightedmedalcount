require 'open-uri'

namespace :countries do
  desc 'Refresh list of countries from a JSON api'
  task :refresh => :environment do
    json = open('http://apify.heroku.com/api/olympics2012_medals.json').read
    hash = ActiveSupport::JSON.decode(json)
    Nation.update_from_hash_array hash
  end
end
