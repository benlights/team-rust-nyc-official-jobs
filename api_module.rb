require 'open-uri'
require 'json'
require_relative "models/job"

module ApiGetter
  def self.get_api(description)
    JSON.parse(open("https://data.cityofnewyork.us/resource/kpav-sd4t.json?$q=#{description}&$order=salary_range_from%20DESC&$limit=10").read)
  end
end
