# Countrylist

**Countrylist** is a simple ruby gem to get list of [countries, states, cities]. Also you can get currency, country flag, time zone with offset and dialing code for each country.

currently supported country codes: `['MY', 'SG', 'HK', 'TH', 'PHL', 'ID']`
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'countrylist'
```

And then execute:

    $ bundle

## Usage

#### get all countries

```ruby
Countrylist.get_countries
```

#### get country info

```ruby
Countrylist.get_country_info(country_code) 
```

#### get country image

```ruby
Countrylist.get_country_image(country_code) 
```

#### get country states

```ruby
Countrylist.get_states(country_code) 
```

#### get a specific state cities

```ruby
Countrylist.get_cities(country_code, state_name) 
```

## Development
* all data is stored in `lib/db/data.csv` file.
* images should be added to `vendor/assets/images` folder.