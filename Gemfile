source 'https://rubygems.org'

gem "memcache-client"
gem "acts-as-taggable-on", :github => "mbleigh/acts-as-taggable-on"
gem "airbrake"
gem "bourbon"
gem "choices"
gem "daemons"
gem "delayed_job"
gem "delayed_job_active_record"
gem "delayed_job_web"
gem "devise"
gem "devise-encryptable"
# NOTE: Newer versions of draper are currently incompatible with this codebase
gem "draper", "< 0.13"
gem "dynamic_form"
gem "fastthread"
gem "foreman"
gem "sass"
gem "haml"
gem "jquery-rails"
gem "mime-types"
gem "nokogiri"
gem "omniauth"
gem "omniauth-google-oauth2"
gem "pivotal-tracker", '0.5.8'
gem "rails"
gem "rake"
gem "xpath"
gem 'whenever', :require => false
gem 'rails-backbone'
gem 'coffee-filter'
gem 'eco'
gem 'pg'
gem "eventmachine"
gem "em-http-request"
gem 'newrelic_rpm'
gem 'hashie', '~>1.2' # TODO: We need to hardcode Hashie for now to avoid circular dependency in bundler update resolution

group :production do
  gem "therubyracer"
end

group :thin do
  gem "thin"
end

group :assets do
  gem "compass-rails"
  gem "sass-rails"
  gem "uglifier"
end

group :test do
  gem "headless"
  gem "vcr", "2.2.4"
  gem "fakeweb"
end

# NOTE: anything that will not work in travis should be here
group :development do
  gem "awesome_print"
  gem "heroku_san"
  gem 'guard-coffeescript'
  gem 'ruby-prof'
end

group :test, :development do
  gem "coveralls", :require => false
  gem "launchy"
  gem "jshint_on_rails"
  gem "rspec"
  gem "rspec-rails"
  gem "shoulda-matchers"
  gem "capybara"
  gem "jasmine"
  # NOTE: selenium-webdriver >= 2.25.0 is needed for the latest Firefox
  gem "selenium-webdriver", ">= 2.25.0"
  gem "factory_girl_rails"
  gem "ffaker"
  gem 'guard-coffeescript'
  gem 'database_cleaner'
  gem "capybara-webkit"
  gem "pry-nav"
  gem "pry-rails"
  gem 'pry'
  gem 'vagrant'
  gem 'timecop'
end

