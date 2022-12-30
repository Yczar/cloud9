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
  Future<void> connect() async {
    // First, generate a URL to redirect the user to the Dropbox authorization
    // page.
    final authorizationUrl =
        'https://www.dropbox.com/oauth2/authorize?client_id='
        '$_clientId&response_type=code&redirect_uri=$_redirectUri';

    // Redirect the user to the authorization page.
  }
}
