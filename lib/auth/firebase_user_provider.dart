import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SparkFM2FirebaseUser {
  SparkFM2FirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

SparkFM2FirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SparkFM2FirebaseUser> sparkFM2FirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<SparkFM2FirebaseUser>(
            (user) => currentUser = SparkFM2FirebaseUser(user));
