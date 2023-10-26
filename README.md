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
The list of numerals supported by this gem

        geez: Geez,
        roman: Roman,
        chinese: Chinese,
        thai: Thai,
        bengali: Bengali,
        devanagari: Devanagari,
        gujarati: Gujarati,
        gurmukhi: Gurmukhi,
        kannada: Kannada,
        khmer: Khmer,
        lao: Lao,
        malayalam: Malayalam,
        myanmar: Myanmar 

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/wuletawwonte/numerify. 

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Numerify project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/wuletawwonte/numerify/blob/master/CODE_OF_CONDUCT.md).
