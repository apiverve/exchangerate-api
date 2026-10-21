# Exchange Rate API - Ruby Gem

Exchange Rate looks up the conversion rate between two currency codes. It returns the current forex rate and last-updated timestamp across 170+ supported currencies, in USD or any other base; paid plans add the inverse rate.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_exchangerate'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_exchangerate
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_exchangerate'

# Initialize the client
client = APIVerve::Exchangerate::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  currency1: "USD",
  currency2: "EUR",
  date: "2025-06-02"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ currency1: "USD", currency2: "EUR", date: "2025-06-02" })
  puts response["data"]
rescue APIVerve::Exchangerate::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Exchangerate::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Exchangerate::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "currency1": "USD",
    "currency2": "EUR",
    "exchangeRate": "0.866664",
    "inverseRate": "1.153850",
    "lastUpdated": "2026-09-16T02:00:27.378Z"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/exchangerate?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/exchangerate?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/exchangerate?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
