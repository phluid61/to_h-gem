enum_to_h
=========

Defines `Enumerable#to_h`, from [feature #6669](https://bugs.ruby-lang.org/issues/6669)

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

