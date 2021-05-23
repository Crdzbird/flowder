# Flowder
One thing that i always love was the simplicity that messenger had using Chatheads.

And for that reason this plugin was created with all the love that us the developers have :heartbeat:

### pubspec.yaml

```yaml
dependencies:
  flowder: ^0.2.0
```

## Examples

To start using flowder, is required to do the following setup.
```dart
fina downloaderUtils = DownloaderUtils(
                  progressCallback: (current, total) {
                    final progress = (current / total) * 100;
                    print('Downloading: $progress');
                  },
                  file: File('$path_to_store_file/200MB.zip'),
                  progress: ProgressImplementation(),
                  onDone: () => print('Download done'),
                  deleteOnCancel: true,
                );
                
final core = await Flowder.download(
                    'http://ipv4.download.thinkbroadband.com/200MB.zip',
                    downloaderUtils);
```

To *start* a new download.
```dart
core.download(url, downloaderUtils);
```


To *resume* a download.
```dart
core.resume();
```

To *cancel* a download.
```dart
core.cancel();
```

To *pause* a download.
```dart
core.pause();
```

Currently done:
- [x] Download states.
- [x] Handle multiple downloader.  


TODO:
- [] Unit Tests



### Contributing

All contributions are welcome!

If you like this project then please click on the :star2: it'll be appreciated or if you wanna add more epic stuff you can submite your pull request and it'll be gladly accepted :ok_man:

or if you have an idea please let me know with a new issue.
