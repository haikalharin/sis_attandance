import 'default_env.dart';

class Configurations {
  static String _host = DefaultConfig.host;
  static String _sub_host = DefaultConfig.subHost;
  static String _imageHost = DefaultConfig.imageHost;
  static String _httpClientType = '';
  static String _wpUrl = DefaultConfig.wpUrl;
  static String _consumerKey = DefaultConfig.consumerKey;
  static String _consumerSecret = DefaultConfig.consumerSecret;
  static String _mode = DefaultConfig.mode;
  static bool _isShowChucker = DefaultConfig.isShowChucker;
  static bool _isVpn = DefaultConfig.isVpn;
  static String _countlyServerUrl = DefaultConfig.countlyServerUrl;
  static String _countlyAppKey = DefaultConfig.countlyAppKey;
  static Duration _receiveTimeout = DefaultConfig.receiveTimeout;
  static Duration _connectionTimeout = DefaultConfig.receiveTimeout;

  Future<void> setConfigurationValues(Map<String, dynamic> value) async {
    _host = value['isVpn'] == false
        ? value['host'] ?? DefaultConfig.host
        : value['host_vpn'] ?? DefaultConfig.host;
    _sub_host = value['isVpn'] == false
        ? value['sub_host'] ?? DefaultConfig.host
        : value['sub_host_vpn'] ?? DefaultConfig.host;
    _mode = value['mode'] ?? DefaultConfig.mode;
    _isShowChucker = value['isShowChucker'] ?? DefaultConfig.isShowChucker;
    _imageHost = value['image_host'] ?? DefaultConfig.imageHost;
    _httpClientType =
        value['http_client'] ?? DefaultConfig.httpClientType.toString();
    _wpUrl = value['wpUrl'] ?? DefaultConfig.wpUrl.toString();
    _consumerKey = value['consumerKey'] ?? DefaultConfig.consumerKey.toString();
    _consumerSecret =
        value['consumerSecret'] ?? DefaultConfig.consumerSecret.toString();
    _countlyServerUrl = value['countly_server_url'] ??
        DefaultConfig.countlyServerUrl.toString();
    _countlyAppKey =
        value['countly_app_key'] ?? DefaultConfig.countlyAppKey.toString();
    _isVpn = value['isVpn'] ?? DefaultConfig.isVpn;
    _receiveTimeout = value['receive_timeout'] ?? DefaultConfig.receiveTimeout;
    _connectionTimeout = value['connection_timeout'] ?? DefaultConfig.connectionTimeout;
  }

  static String get host => _host;

  static String get sub_host => _sub_host;

  static String get mode => _mode;

  static bool get isShowChucker => _isShowChucker;

  static bool get isVpn => _isVpn;

  static String get imageHost => _imageHost;

  static String get httpClientType => _httpClientType;

  static String get wpUrl => _wpUrl;

  static String get consumerKey => _consumerKey;

  static String get consumerSecret => _consumerSecret;

  static String get countlyServerUrl => _countlyServerUrl;

  static String get countlyAppKey => _countlyAppKey;

  static Duration get receiveTimeout => _receiveTimeout;

  static Duration get connectionTimeout => _connectionTimeout;
}
