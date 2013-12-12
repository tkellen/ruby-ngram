# ngram [![Build Status](https://secure.travis-ci.org/tkellen/ruby-ngram.png?branch=master)](http://travis-ci.org/tkellen/ruby-ngram)
> Break words and phrases into ngrams.

## Setup

```console
gem install ngram
```

## Usage

```ruby
require 'ngram'

# these are default settings
ngram = NGram.new({
  :size => 2,
  :word_separator => " ",
  :padchar => "_"
})
# => #<NGram:0x10d9877f0 @padchar="_", @separator=" ", @size=2>

ngram.parse('test')
# => ["__", "_t", "te", "es", "st", "t_", "__"]
ngram.parse('test phrase')
# => [["_t", "te", "es", "st", "t_"], ["_p", "ph", "hr", "ra", "as", "se", "e_"]]
```

> Copyright (c) 2013 Tyler Kellen. See LICENSE for further details.
