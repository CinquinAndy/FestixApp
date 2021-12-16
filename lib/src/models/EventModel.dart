import 'package:b3_festix/src/models/ArtistModel.dart';
import 'package:b3_festix/src/models/FestivalModel.dart';

class Event{
  String _id;
  String _title;
  DateTime _dateTime;
  Festival _festival;
  Set<Artist> _artists;

  Event(this._id, this._title, this._dateTime, this._festival, this._artists);

  Set<Artist> get artists => _artists;

  set artists(Set<Artist> value) {
    _artists = value;
  }

  Festival get festival => _festival;

  set festival(Festival value) {
    _festival = value;
  }

  DateTime get dateTime => _dateTime;

  set dateTime(DateTime value) {
    _dateTime = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  String get id => _id;

  set id(String value) {
    _id = value;
  }
}