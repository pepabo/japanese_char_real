Japanese Char Real
==================

ujisのデータベースとutf-8のアプリケーション環境で発生する文字化けを`一部`解消する

[![Gem Version](https://badge.fury.io/rb/japanese_char_real.svg)][gem]
[![Build Status](https://travis-ci.org/pepabo/japanese_char_real.svg?branch=master)][travis]

[gem]: https://rubygems.org/gems/japanese_char_real
[travis]: http://travis-ci.org/pepabo/japanese_char_real

Installation
------------

Add this line to your application's Gemfile:

```ruby
gem 'japanese_char_real'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install japanese_char_real

Usage
-----

```ruby
::String.__send__ :include, JapaneseCharReal::String
User.name
#=> 山 太郎
User.name.to_real
#=> 山﨑 太郎
```

Contributing
------------

1. Fork it ( https://github.com/pepabo/japanese_char_real/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
