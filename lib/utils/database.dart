import "package:shared_preferences/shared_preferences.dart";

late final SharedPreferences prefs;

Future<void> initPrefs() async {
  prefs = await SharedPreferences.getInstance();
}
