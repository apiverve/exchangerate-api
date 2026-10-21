# Exchange Rate API - PHP Package

Exchange Rate looks up the conversion rate between two currency codes. It returns the current forex rate and last-updated timestamp across 170+ supported currencies, in USD or any other base; paid plans add the inverse rate.

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
    'currency2' => 'EUR',
    'date' => '2025-06-02'
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
    $response = $client->execute(['currency1' => 'USD', 'currency2' => 'EUR', 'date' => '2025-06-02']);
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
    "exchangeRate": "0.866664",
    "inverseRate": "1.153850",
    "lastUpdated": "2026-09-16T02:00:27.378Z"
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/exchangerate?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/exchangerate?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/exchangerate?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
