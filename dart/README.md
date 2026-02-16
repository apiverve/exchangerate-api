# Exchange Rate API - Dart/Flutter Client

Exchange Rate is a simple tool for getting the current exchange rate between two currencies. It returns the current exchange rate.

[![pub package](https://img.shields.io/pub/v/apiverve_exchangerate.svg)](https://pub.dev/packages/apiverve_exchangerate)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Exchange Rate API](https://exchangerate.apiverve.com?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_exchangerate: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_exchangerate/apiverve_exchangerate.dart';

void main() async {
  final client = ExchangerateClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'currency1': 'USD',
      'currency2': 'EUR'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "currency1": "USD",
    "currency2": "EUR",
    "exchangeRate": "0.926480"
  }
}
```

## API Reference

- **API Home:** [Exchange Rate API](https://exchangerate.apiverve.com?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/exchangerate](https://docs.apiverve.com/ref/exchangerate?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
