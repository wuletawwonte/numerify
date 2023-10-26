# Numerify

> A Ruby gem designed to effortlessly convert numbers between Arabic and various world languages, including Geez, Roman, and Chineese.

## Installation

```bash
$ gem install numerify
```

## Usage

These gem provides two approaches for converting numerals. The first is using Numerify.convert method as shown below. 

```bash
> require 'numerify'
=> true
> Numerify.convert 123
=> "፻፳፫"
> Numerify.convert(324, :roman)
=> "CCCXXIV"
```

The second method utilizes monkey patching, to extend the `String` and `Integer` class of Ruby. With this approach, you can directly call the `convert` method on a string or an integer object. 

```bash
> require 'numerify'
=> true
> "123".convert
=> "፻፳፫"
> 325.convert(:roman)
=> "CCCXXIV"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/wuletawwonte/numerify. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/wuletawwonte/numerify/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Numerify project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/wuletawwonte/numerify/blob/master/CODE_OF_CONDUCT.md).
