import 'package:b3_festix/src/models/event.dart';

class Festival{
  String _id;
  String _title;
  String _description;
  String _photoUrl;
  DateTime _dateStart;
  DateTime _dateEnd;
  Set<Event> _events;

  Festival(this._id, this._title, this._description, this._photoUrl,
      this._dateStart, this._dateEnd, this._events);

  Set<Event> get events => _events;

  set events(Set<Event> value) {
    _events = value;
  }

  DateTime get dateEnd => _dateEnd;

  set dateEnd(DateTime value) {
    _dateEnd = value;
  }

  DateTime get dateStart => _dateStart;

  set dateStart(DateTime value) {
    _dateStart = value;
  }

  String get photoUrl => _photoUrl;

  set photoUrl(String value) {
    _photoUrl = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
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