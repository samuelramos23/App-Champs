import 'package:appchamps/champions.dart';

class ResponseModel {
  ResponseModel({
    required this.type,
    required this.format,
    required this.version,
    required this.data,
  });
  late final String type;
  late final String format;
  late final String version;
  late final Map<String, Champion> data;

  ResponseModel.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    format = json['format'];
    version = json['version'];
    data = (json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['type'] = type;
    _data['format'] = format;
    _data['version'] = version;
    _data['data'] = data;
    return _data;
  }
}

class Data {
  Data();

  Data.fromJson(Map json);

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    return _data;
  }
}
