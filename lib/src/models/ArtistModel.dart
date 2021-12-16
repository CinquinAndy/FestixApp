import 'package:b3_festix/src/models/event.dart';

class Artist{
  String _id;
  String _artistName;
  String _description;
  String _musicStyle;
  String _photoUrl;
  Set<Event> _events;

  Artist(this._id, this._artistName, this._description, this._musicStyle,
      this._photoUrl, this._events);

  Set<Event> get events => _events;

  set events(Set<Event> value) {
    _events = value;
  }

  String get photoUrl => _photoUrl;

  set photoUrl(String value) {
    _photoUrl = value;
  }

  String get musicStyle => _musicStyle;

  set musicStyle(String value) {
    _musicStyle = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  String get artistName => _artistName;

  set artistName(String value) {
    _artistName = value;
  }

  String get id => _id;

  set id(String value) {
    _id = value;
  }
}