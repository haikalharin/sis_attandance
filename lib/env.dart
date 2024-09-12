// env menyohost
// final Map<String, dynamic> environment = <String, dynamic>{
//   'host': 'http://104.171.119.202:8080/',
//   'websockets': 'ws://104.171.119.202:8080/user/',
//   'image_host': 'https://image.tmdb.org/t/p/',
//   'http_client': 'http',
//   'wpUrl': 'http://192.168.64.2/panjistore',
// 'consumerKey': 'ck_015ecefc9ecedf3fb4208d7945173ff6bf498728',
// 'consumerSecret': 'cs_51a47e2d054bfe8df212b12048cd6f65c6463529',
//   'berita':'  http://ds-onlineadvertising.com/syariah/info.php',
//   'mode': 'dev', //dev or prod
// };

// env dev
final Map<String, dynamic> devEnvironment = <String, dynamic>{
  'host': '',
  'host_maps': 'https://nominatim.openstreetmap.org/',
  'sub_host': '',
  'receive_timeout': const Duration(milliseconds: 15000),
  'connection_timeout': const Duration(milliseconds: 15000),
  'host_vpn': '',
  'sub_host_vpn': '',
  'isVpn': false,

};

final Map<String, dynamic> environment = <String, dynamic>{
  'host': '',
  'host_maps': 'https://nominatim.openstreetmap.org/',
  'sub_host': 'reverse',
  'receive_timeout': const Duration(milliseconds: 15000),
  'connection_timeout': const Duration(milliseconds: 15000),
  'host_vpn': '',
  'sub_host_vpn': '',
  'isVpn': false,
 };

final Map<String, dynamic> stagingEnvironment = <String, dynamic>{
  'host': '',
  'host_maps': 'https://nominatim.openstreetmap.org/',
  'sub_host': 'reverse',
  'receive_timeout': const Duration(milliseconds: 15000),
  'connection_timeout': const Duration(milliseconds: 15000),
  'host_vpn': '',
  'sub_host_vpn': '',
  'isVpn': false,
  };
// url web
// http://192.168.88.39/thekoi/
// 'wpUrl': 'http://kantor.pkp.co.id/thekoi/index.php',
// 'consumerKey': 'ck_318984b029a0d3487d1a4c947eb6d45d334c312d',
// 'consumerSecret': 'cs_f821fe893854312eb303ec45b20010bc4983eaf8',

// 'wpUrl': 'http://192.168.64.2/panjistore',
// 'consumerKey': 'ck_015ecefc9ecedf3fb4208d7945173ff6bf498728',
// 'consumerSecret': 'cs_51a47e2d054bfe8df212b12048cd6f65c6463529',
