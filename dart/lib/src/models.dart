/// Response models for the Exchange Rate API.

/// API Response wrapper.
class ExchangerateResponse {
  final String status;
  final dynamic error;
  final ExchangerateData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  ExchangerateResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory ExchangerateResponse.fromJson(Map<String, dynamic> json) => ExchangerateResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? ExchangerateData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Exchange Rate API.

class ExchangerateData {
  String? currency1;
  String? currency2;
  String? exchangeRate;
  String? inverseRate;
  String? date;
  String? lastUpdated;
  String? currency1Name;
  String? currency2Name;
  num? change1d;
  num? change7d;
  num? change30d;
  num? change1y;
  num? high30d;
  num? low30d;
  num? average30d;
  num? volatility30d;
  List<ExchangerateDataHistoryItem>? history;
  List<ExchangerateDataHourlyItem>? hourly;

  ExchangerateData({
    this.currency1,
    this.currency2,
    this.exchangeRate,
    this.inverseRate,
    this.date,
    this.lastUpdated,
    this.currency1Name,
    this.currency2Name,
    this.change1d,
    this.change7d,
    this.change30d,
    this.change1y,
    this.high30d,
    this.low30d,
    this.average30d,
    this.volatility30d,
    this.history,
    this.hourly,
  });

  factory ExchangerateData.fromJson(Map<String, dynamic> json) => ExchangerateData(
      currency1: json['currency1'],
      currency2: json['currency2'],
      exchangeRate: json['exchangeRate'],
      inverseRate: json['inverseRate'],
      date: json['date'],
      lastUpdated: json['lastUpdated'],
      currency1Name: json['currency1Name'],
      currency2Name: json['currency2Name'],
      change1d: json['change1d'],
      change7d: json['change7d'],
      change30d: json['change30d'],
      change1y: json['change1y'],
      high30d: json['high30d'],
      low30d: json['low30d'],
      average30d: json['average30d'],
      volatility30d: json['volatility30d'],
      history: (json['history'] as List?)?.map((e) => ExchangerateDataHistoryItem.fromJson(e)).toList(),
      hourly: (json['hourly'] as List?)?.map((e) => ExchangerateDataHourlyItem.fromJson(e)).toList(),
    );
}

class ExchangerateDataHistoryItem {
  String? date;
  num? rate;

  ExchangerateDataHistoryItem({
    this.date,
    this.rate,
  });

  factory ExchangerateDataHistoryItem.fromJson(Map<String, dynamic> json) => ExchangerateDataHistoryItem(
      date: json['date'],
      rate: json['rate'],
    );
}

class ExchangerateDataHourlyItem {
  num? hour;
  num? rate;
  String? timestamp;

  ExchangerateDataHourlyItem({
    this.hour,
    this.rate,
    this.timestamp,
  });

  factory ExchangerateDataHourlyItem.fromJson(Map<String, dynamic> json) => ExchangerateDataHourlyItem(
      hour: json['hour'],
      rate: json['rate'],
      timestamp: json['timestamp'],
    );
}

class ExchangerateRequest {
  String currency1;
  String currency2;
  String? date;
  bool? history;
  bool? hourly;

  ExchangerateRequest({
    required this.currency1,
    required this.currency2,
    this.date,
    this.history,
    this.hourly,
  });

  Map<String, dynamic> toJson() => {
      'currency1': currency1,
      'currency2': currency2,
      if (date != null) 'date': date,
      if (history != null) 'history': history,
      if (hourly != null) 'hourly': hourly,
    };
}
