![CI status](https://github.com/olegsklyarov/ipgeobase/actions/workflows/main.yml/badge.svg)

# Ipgeobase

Gem to fetch IP geo information

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add ipgeobase

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install ipgeobase

## Usage

    $ Ipgeobase.lookup("8.8.8.8")

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/olegsklyarov/ipgeobase.
