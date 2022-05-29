source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.4"

gem "rails", "~> 6.1.5"
gem "puma", "~> 5.0"
gem "pg", ">= 0.18", "< 2.0"

gem "jbuilder", "~> 2.7"
gem "bootsnap", ">= 1.4.4", require: false
gem "clockwork", "~> 2.0.3"

group :development do
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem "rack-mini-profiler", "~> 2.0"
  gem "listen", "~> 3.3"
end

group :development, :test do
  gem "pry-byebug"
  gem "faker"
  gem "rspec-rails"
  gem "pry-rails"
  gem "factory_bot_rails"
end

group :test do
  gem "clockwork-test", "~> 0.3.0"
  gem "shoulda-matchers"
end
