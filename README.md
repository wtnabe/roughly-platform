# RoughlyPlatform

roughly platform resolver and more.

This gem can some how identify linux, windows and macos. And provide something that uses them.

It provides the path to user's profile now.

## Installation

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add roughly-platform
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install roughly-platform
```

## Usage

```ruby
require "roughly-platform"

RoughlyPlatform::PlatformResolver.new.resolve # => :linux
RoughlyPlatform.os # => :macos
RoughlyPlatform.profile_path # => $HOME/Library/Application Support
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/wtnabe/roughly-platform.
