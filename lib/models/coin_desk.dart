class CoinDesk {
  final String disclaimer;
  final String chartName;

  CoinDesk({required this.disclaimer, required this.chartName});
  factory CoinDesk.fromJson(Map<String, dynamic> json) {
    return CoinDesk(
        disclaimer: json['disclamer'], chartName: json['chart_name']);
  }
}
