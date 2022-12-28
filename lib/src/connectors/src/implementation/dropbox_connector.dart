import 'dart:developer';

import 'package:cloud9/src/connectors/src/cloud9_connector.dart';

/// An implementation of the `Cloud9Connector` abstract class for connecting to
/// Dropbox.
class DropBoxConnector implements Cloud9Connector {
  /// Creates a new instance of `DropBoxConnector` with the given client ID,
  /// client secret, and redirect URI.
  DropBoxConnector(
    this._clientId,
    this._clientSecret,
    this._redirectUri,
  );

  /// The client ID for the Dropbox application.
  final String _clientId;

  /// The client secret for the Dropbox application.
  final String _clientSecret;

  /// The redirect URI for the Dropbox application.
  final String _redirectUri;
  @override
  Future<void> connect() async {}

  /// Handles a common error scenario when the user denies the authorization request or
  /// the authorization code is invalid.
  void _handleError(
    dynamic error,
    StackTrace stackTrace,
  ) {
    log(error.toString());
    log(stackTrace.toString());
    // TODO: Implement error handling.
  }
}
