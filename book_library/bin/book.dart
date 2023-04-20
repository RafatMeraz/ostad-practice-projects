import 'media_item.dart';

class Book extends MediaItem {
  String _author, _publisher;

  Book(int mediaId, String title, bool checkOut, this._author, this._publisher)
      : super(mediaId, title, checkOut);

  set author(String value) => _author = value;

  set publisher(String value) => _publisher = value;

  String get getAuthor => _author;

  String get getPublisher => _publisher;
}
