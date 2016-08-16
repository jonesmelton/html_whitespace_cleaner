# HtmlWhitespaceCleaner

A simple Ruby [gem](https://rubygems.org/gems/html_whitespace_cleaner) that strips useless whitespace between html tags, for easier parsing.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'html_whitespace_cleaner'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install html_whitespace_cleaner

## Usage

Use the HtmlWhitespaceCleaner#clean method to parse a string of raw html. It will return the same html but with extraneous whitespace removed. It will preserve formatting within tags, only removing whitespace between them.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/shavah/html_whitespace_cleaner. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

