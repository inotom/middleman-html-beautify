# Middleman::HtmlBeautify

[![Build Status](https://travis-ci.org/inotom/middleman-html-beautify.svg?branch=master)](https://travis-ci.org/inotom/middleman-html-beautify)

`middleman-html-beautify` is an extension for the [Middleman](https://middlemanapp.com/) static site generator that beautify HTML via [HTML Beautifier](https://github.com/threedaymonk/htmlbeautifier).


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'middleman-html-beautify'
```

And then execute:

```
$ bundle install
```


## Usage

Add this line to your config.rb

```ruby
activate :html_beautify
```

There are default settings.

```ruby
activate :html_beautify do |option|
  option.keep_blank_lines = 0
  option.indent           = "  "
  option.initial_level    = 0
  option.stop_on_errors   = false
end
```


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
