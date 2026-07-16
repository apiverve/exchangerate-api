# Exchange Rate API - PHP Package

Exchange Rate is a simple tool for getting the current exchange rate between two currencies. It returns the current exchange rate.

## Installation

Install via Composer:

```bash
composer require apiverve/exchangerate
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Exchangerate\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'currency1' => 'USD',
    'currency2' => 'EUR'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Exchangerate\Client;
use APIVerve\Exchangerate\Exceptions\APIException;
use APIVerve\Exchangerate\Exceptions\ValidationException;

try {
    $response = $client->execute(['currency1' => 'USD', 'currency2' => 'EUR']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "currency1": "USD",
    "currency2": "EUR",
    "exchangeRate": "0.851223",
    "inverseRate": "1.174773"
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/exchangerate?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://exchangerate.apiverve.com?utm_source=php&utm_medium=readme](https://exchangerate.apiverve.com?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
