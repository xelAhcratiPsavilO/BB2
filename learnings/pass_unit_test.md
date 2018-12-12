# Learning Objective

### Pass a unit test

In order to pass a simple unit test like [this one](describe.md), it is necessary to:

1) Create a lib directory:
```sh
$ tree
.
├── lib
│   └── object.rb
└── spec
    ├── object_spec.rb
    └── spec_helper.rb
```

2) Define the object class:
```ruby
class DockingStation

end
```

3) Make use of require as it is done [here](require.md)
