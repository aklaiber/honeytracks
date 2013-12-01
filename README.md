# Honeytracks

https://honeytracks.com/

## Installation

Add this line to your application's Gemfile:

    gem 'honeytracks'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install honeytracks

## Usage

``` ruby
honey_tracks = HoneyTracks::Track.new('2243443', 'de_DE', '46.244.175.103', 'Default')

honey_tracks.user_login # => ok
honey_tracks.user_logout # => ok
honey_tracks.user_signup # => ok
honey_tracks.click('MarketingIdentifier' => '111', 'LandingPageId' => '222') # => ok
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

honeytracks is released under the [MIT License](http://www.opensource.org/licenses/MIT).
