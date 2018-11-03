# TestSuite

This Test suite represents a several methods, that allows you to do next things with your objects - check the type, make a conversions and work with hashes.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'test_suite'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install test_suite

## Usage

For using test_suite gem in your application you have to require it and call it (where you want) with next command -TestSuite.name_of_method(parameter). You can use next methods:
-hash?
-array?
-number?
-string?
-symbol?
-hash_empty?
-hash_value_greater_nil?
-hash_has_two_keys?
-to_s
-to_i
-to_sym
-str_to_arr

In parameter you can use whatever you want.

## Example

module Tasks
  def self.math2(x, y)
    s = ((x.abs - y.abs) / (1 + (x * y).abs)).round(4)
    { result: s }
  end
end

TestSuite.hash_has_two_keys?(Tasks.math2(-6.0, -2))

Сonsole output:

Hash has one key
Hash key(s): [:result]

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/test_suite.
