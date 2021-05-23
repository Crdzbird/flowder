# Flowder
Handle your file downloads status in a more simple and easy way :heartbeat:

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



### Contributing

All contributions are welcome!

If you like this project then please click on the :star2: it'll be appreciated or if you wanna add more epic stuff you can submite your pull request and it'll be gladly accepted :ok_man:

or if you have an idea please let me know with a new issue.
