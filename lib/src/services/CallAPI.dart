import 'dart:convert';

import 'package:b3_festix/src/constants/constants.dart';
import 'package:b3_festix/src/models/FestivalModel.dart';
import 'package:http/http.dart' as http;


Future<void> fetchFestival() async {
  final response = await http
      .get(Uri.parse(API_URL+"/festival/list/"));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    // return List<FestivalModel>.fromJson(jsonDecode(response.body));
    return json.decode(response.body);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    // print(response.body);
    throw Exception('Failed to load festival');
  }
}