# Insouciant

Now I recognize that sound computer science practices dictate that all code
should always strive to handle, on some level, all exceptions that may come up.

The reality is there are cases when you may not be aware, let alone in control
of all the possible sources of errors. Sometimes, it would be nice to have
your troublesome code run, and NOT bring the house down because some host is
unreachable or some other error beyond your control.

The [insouciant](https://en.wiktionary.org/wiki/insouciant) gem allows for
just such a use case.

The single method in this gem, Object::insouciant allows code to be run in a
simple and care free manner.

Now for some back story. In 2014, I had the wonderful experience of visiting
Germany for a cruise on the Elbe river. One of the stops was the
[Sanssouci](https://en.wikipedia.org/wiki/Sanssouci) palace in Potsdam near
Berlin. The palace was the refuge of Frederick the Great, King of Prussia.
A safe place without the worries, stress or concerns of that troubled man.

In English this is translated as "insouciant" and is the inspiration for this gem.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'insouciant'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install insouciant

## Usage

WIP

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

OR...

* Make a suggestion by raising an
 [issue](https://github.com/PeterCamilleri/insouciant/issues)
. All ideas and comments are welcome.

## License

The gem is available as open source under the terms of the
[MIT License](./LICENSE.txt).

## Code of Conduct

Everyone interacting in the pause_output project’s codebases, issue trackers,
chat rooms and mailing lists is expected to follow the
[code of conduct](./CODE_OF_CONDUCT.md).

