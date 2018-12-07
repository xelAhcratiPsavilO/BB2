# Learning Objective

### Use irb to run a 'feature test'

One of ruby's REPL is irb(interactive ruby shell). Being alternatives to it, pry for instance.

Below, a representation of how irb can be used for feature testing:

```sh
$ irb
2.5.0 :001 > require './lib/docking_station.rb'
 => true
2.5.0 :002 > station = DockingStation.new
Traceback (most recent call last):
        2: from /Users/[user name]/.rvm/rubies/ruby-2.5.0/bin/irb:11:in <main>
        1: from (irb):2
NameError (uninitialized constant DockingStation)
```
