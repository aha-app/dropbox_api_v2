# DropboxApiV2

Ruby gem to interact with Dropbox API v2.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dropbox_api_v2'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dropbox_api_v2

## Usage

### Authorize your application

Dropbox uses OAuth, in order to use this library from your application you'll
have to get an authorization code:

1. `require "dropbox_api_v2/authenticator"`
1. `authenticator = DropboxApiV2::Authenticator.new(CLIENT_ID, CLIENT_SECRET)`
2. `authenticator.authorize_url  #=> "https://www.dropbox.com/..."`
3. Open the authorization URL in your browser, authorize the application and
   copy your code.
4. `auth_bearer = authenticator.get_token(CODE) #=> #<OAuth2::AccessToken ...>`
5. `auth_bearer.token #=> "VofXAX8D..."`. Keep this token!

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release` to create a git tag for the version, push git
commits and tags, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/dropbox_api_v2/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
