# Peek::Resque

Take a peek into the current state of your Resque queues and workers.

Things this peek view provides:

- The total number of queued jobs for each queue.
- The total number of workers.

## Installation

Add this line to your application's Gemfile:

    gem 'peek-resque'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install peek-resque

## Usage

Add the following to your `config/initializers/peek.rb`: 

```ruby
Peek.into Peek::Views::Resque
```

By default, it will track all queues. If you'd like to limit the number of queues
it displays, you can pass in the `:queues` option:

```ruby
Peek.into Peek::Views::Resque, :queues => ['notifications', 'backups']
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
