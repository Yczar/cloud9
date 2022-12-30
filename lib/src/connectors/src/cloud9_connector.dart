/// An abstract class representing the connection logic for a cloud storage
/// service.
// ignore_for_file: one_member_abstracts

abstract class Cloud9Connector {
  /// Connects to the cloud storage service.
  Future<void> connect();
}
