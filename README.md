enum_to_h
=========

Defines `Enumerable#to_h`, from [feature #6669](https://bugs.ruby-lang.org/issues/6669)

**Note:** as of Ruby 2.1, `Enumerable#to_h` [is already defined](http://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-to_h) in a similar but _not identical_ way.  Please take care when mixing this gem with Ruby >=2.1.

**Note:** for Ruby < 2.0, the [*to_h* gem](https://rubygems.org/gems/to_h) may be required!

Converts *enum* to a Hash.

Each element of *enum* must be a single item, or an array of two items.
Duplicate keys are overwritten in order.

```ruby
[].to_h             #=> {}
[1,2].to_h          #=> {1=>nil, 2=>nil}
(1..2).to_h         #=> {1=>nil, 2=>nil}
[[1,2],[3,4]].to_h  #=> {1=>2, 3=>4}
[[1,2],[1,4]].to_h  #=> {1=>4}
```

----

[![Build Status](https://travis-ci.org/phluid61/to_h-gem.png)](https://travis-ci.org/phluid61/to_h-gem)
