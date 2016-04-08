# Sass::Zhilizhili

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/sass/zhilizhili`. To experiment with that code, run `bin/console` for an interactive prompt.

extend sass function


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sass-zhilizhili'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sass-zhilizhili

## Usage

use in sass

```
sass --require "sass/zhilizhili"
```

Refer https://github.com/HugoGiraudel/awesome-sass

为sass添加了

  ### zl_std_reverse, [:string]

  翻转字符串

  ### zl_std_run, [:string]

  执行一段shell

  ### zl_std_sqrt, [:number]

  开平方

  ### zl_std_utils_strip_unit, [:number]

  去除unit

  ### zl_std_math_pi, []

  得到pi

  ### zl_std_math_cos, [:number]

  math cos

  ### zl_std_math_sin, [:number]

  math sin

  ### zl_std_math_tan, [:number]

  math tan

  ### zl_std_math_acos, [:number]

  math acos

  ### zl_std_math_asin, [:number]

  math asin

  declare :zl_std_math_atan, [:number]

  math atan

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/andypinet/sass-zhilizhili.

