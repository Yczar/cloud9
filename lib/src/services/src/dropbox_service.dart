import 'dart:convert';
import 'package:http/http.dart' as http;

/// A service class for interacting with the Dropbox API.
class DropboxService {
  /// Creates a new `DropboxService` with the given [accessToken].
  const DropboxService(
    this.accessToken,
  );

  /// The access token used to authenticate API requests.
  final String accessToken;

  /// Lists the files in the user's Dropbox account.
  ///
  /// Returns a list of file objects, each representing a file in the user's
  /// Dropbox.
  ///
  /// Throws an [Exception] if the request fails.
  Future<List<dynamic>> listFiles() async {
    final response = await http.post(
      Uri.parse(
        'https://api.dropboxapi.com/2/files/list_folder',
      ),
      headers: {
        'Authorization': 'Bearer $accessToken',
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'path': '',
        'recursive': false,
        'include_media_info': false,
        'include_deleted': false,
        'include_has_explicit_shared_members': false,
      }),
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return (data as Map<String, List<dynamic>>)['entries'] ?? [];
    } else {
      throw Exception('Failed to list files');
    }
  }

  /// Uploads a file to the user's Dropbox account.
  ///
  /// The file is specified by its [path] and [bytes].
  ///
  /// Throws an [Exception] if the request fails.
  Future<void> uploadFile(String path, List<int> bytes) async {
    final response = await http.post(
      Uri.parse(
        'https://content.dropboxapi.com/2/files/upload',
      ),
      headers: {
        'Authorization': 'Bearer $accessToken',
        'Content-Type': 'application/octet-stream',
        'Dropbox-API-Arg': json.encode({
          'path': path,
          'mode': 'add',
          'autorename': true,
          'mute': false,
        }),
      },
      body: bytes,
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to upload file');
    }
  }
}
