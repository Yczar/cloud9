import 'package:cloud9/cloud9.dart';

void main() {
  final cloud9 = Cloud9.instance;
  final initializer = GoogleDriveInitializer()..initialize();
  final connector = GoogleDriveConnector()..connect();
}
