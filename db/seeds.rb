# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
countries = Country.create([{name: "United States", country_code: "US"}, {name: "Mexico", country_code:"MX"}])
company_types = CompanyType.create([{name:"small"}, {name:"medium"}, {name:"large"}])


