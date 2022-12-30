# Cloud9

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)
[![License: MIT][license_badge]][license_link]

Cloud9 is a Flutter package that makes it easy to integrate with popular cloud storage services like Dropbox, Google Drive, and OneDrive. With Cloud9, you can easily store and retrieve files from the cloud within your Flutter app.

## Installation

To use Cloud9 in your Flutter project, add cloud9 as a dependency in your pubspec.yaml file.

```
dependencies:
cloud9: ^1.0.0
```

Then run flutter packages get to install the package.

## Usage

To use Cloud9, you will need to authenticate the user with their chosen cloud storage service. Cloud9 currently supports authentication with Dropbox, Google Drive, and OneDrive.

Here is an example of how to authenticate with Dropbox using Cloud9:

```
import 'package:cloud9/cloud9.dart';

final dropbox = DropboxService(accessToken);

final result = await dropbox.authenticate();
final accessToken = result['access_token'];
```

Once the user is authenticated, you can use the Cloud9 service objects to perform various operations, such as listing files, uploading files, or downloading files.

```
final files = await dropbox.listFiles();

await dropbox.uploadFile('/example.txt', [104, 101, 108, 108, 111]);
For more information on what is possible with Cloud9, see the API documentation.
```

## Contributing

We welcome contributions to Cloud9! If you have an idea for a new feature or have found a bug, please open an issue or submit a pull request.

## License

Cloud9 is released under the MIT License.
