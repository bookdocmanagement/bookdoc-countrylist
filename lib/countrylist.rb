require "countrylist/version"
require 'countrylist/engine'

module Countrylist
  DB_FOLDER = File.expand_path('../db', __FILE__)
  DATA_FILE = File.join(DB_FOLDER, 'data.csv')
  @countries, @states, @cities = [{},{},{}]

  def self.open_file
    require 'csv'
    require 'json'
    data_file = File.open(DATA_FILE)
    data = CSV.parse(data_file, :headers => true, col_sep: ';')
    data.each do |row|
      @countries[row[2]] = {
          id: row[0],
          name: row[1],
          code: row[2],
          currency: row[3],
          currency_code: row[4],
          flag_path: row[5],
          time_zone: row[6],
          offset: row[7],
          calling_code: row[8],
          states: eval(row[9])
      }
    end
  end

  def self.get_countries
    self.open_file
    @countries.values.map {|country| country[:name]}
  end

  def self.get_country_info(country_code)
    self.open_file
    @countries[country_code.upcase].with_indifferent_access
  end

  def self.get_country_image(country_code)
    self.open_file
    @countries[country_code.upcase].with_indifferent_access[:flag_path]
  end

  def self.get_states(country_code)
    self.open_file
    @countries[country_code.upcase].with_indifferent_access['states'].keys
  end

  def self.get_cities(country_code, state_name)
    self.open_file
    @countries[country_code.upcase].with_indifferent_access['states'].dig(state_name.capitalize)
  end
end
