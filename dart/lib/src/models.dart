/// Response models for the Exchange Rate API.

/// API Response wrapper.
class ExchangerateResponse {
  final String status;
  final dynamic error;
  final ExchangerateData? data;

  ExchangerateResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory ExchangerateResponse.fromJson(Map<String, dynamic> json) => ExchangerateResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? ExchangerateData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Exchange Rate API.

class ExchangerateData {
  String? currency1;
  String? currency2;
  String? exchangeRate;

  ExchangerateData({
    this.currency1,
    this.currency2,
    this.exchangeRate,
  });

  factory ExchangerateData.fromJson(Map<String, dynamic> json) => ExchangerateData(
      currency1: json['currency1'],
      currency2: json['currency2'],
      exchangeRate: json['exchangeRate'],
    );
}

class ExchangerateRequest {
  String currency1;
  String currency2;

  ExchangerateRequest({
    required this.currency1,
    required this.currency2,
  });

  Map<String, dynamic> toJson() => {
      'currency1': currency1,
      'currency2': currency2,
    };
}
