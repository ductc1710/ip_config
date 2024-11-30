import 'dart:io';

import 'package:ip_config/ip_config.dart' as ip_config;

void main(List<String> arguments) async {
  final file = File('ip.txt');
  final ip = await file.readAsString();
  print('IP hien tai: $ip');
  final newContent = 'Hoa quả:$ip:14444:0:0,Localhost:127.0.0.1:14441:0:0';

  await file.writeAsString(newContent);
  print('Ghi noi dung moi thanh cong');
}
