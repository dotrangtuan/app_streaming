import 'dart:convert';
import 'package:http/http.dart' as http;

//Auth token we will use to generate a meeting and connect to it
String token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcGlrZXkiOiIxMWZjODEwMi05ZDliLTQ3MjEtOTk0Mi1hODYzZTQzZjY2NjQiLCJwZXJtaXNzaW9ucyI6WyJhbGxvd19qb2luIl0sImlhdCI6MTY5NTcyNjI5OSwiZXhwIjoxNjk4MzE4Mjk5fQ.xOTfpYT_rM-TUn_D5rlog3W7j9HYqhtZvWPp44SyHzw";

// API call to create meeting
Future<String> createMeeting() async {
  final http.Response httpResponse = await http.post(
    Uri.parse("https://api.videosdk.live/v2/rooms"),
    headers: {'Authorization': token},
  );

//Destructuring the roomId from the response
  return json.decode(httpResponse.body)['roomId'];
}