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

We can read the line number, the complete file path where the issue occurred and the name of the error.

The path would be: /Users/[user name]/.rvm/rubies/ruby-2.5.0/bin/irb

The line would be: 11

The error name would be: uninitialized constant
