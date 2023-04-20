import 'book.dart';
import 'media_item.dart';

class MediaLibrary {
  final List<MediaItem> _mediaList = [];

  void addMediaItem(MediaItem item) {
    _mediaList.add(item);
  }

  void removeItem(MediaItem item) {
    _mediaList.remove(item);
  }

  List<MediaItem> getAllMediaItems() {
    return _mediaList;
  }

  void checkOutItem(int mediaItemId) {
    _mediaList
        .where((element) => element.getMediaId == mediaItemId)
        .forEach((element) {
      element.checkOut = true;
    });
  }

  void returnCheckOutItem(int mediaItemId) {
    _mediaList
        .where((element) => element.getMediaId == mediaItemId)
        .forEach((element) {
      element.checkOut = false;
    });
  }
}

void main() {
  MediaLibrary mediaLibrary = MediaLibrary();
  mediaLibrary.addMediaItem(Book(1, 'OOAD', false, 'Mark Jonas', 'OReally'));
  mediaLibrary.addMediaItem(Book(2, 'Clean Architecture', false, 'Martin C Robert', 'OReally'));
  // mediaLibrary.addMediaItem()
  mediaLibrary.checkOutItem(1);
  mediaLibrary.checkOutItem(2);
  mediaLibrary.returnCheckOutItem(1);
}
