to_h
====

Defines `Enumerable#to_h`, from https://bugs.ruby-lang.org/issues/6669

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

