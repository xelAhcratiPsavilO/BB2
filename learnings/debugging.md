# Learning Objective

### Explain how to use a stack trace to debug errors

Given the following stack trace:

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

We can infer that the initialization of DockingStation is missing.

We can easily create the DockingStation class and try again, obtaining the following result:

```sh
$ irb
2.5.0 :001 > require './lib/docking_station.rb'
 => true
2.5.0 :002 > station = DockingStation.new
 => #<DockingStation:0x00007fe35d8e2ea0>
```
