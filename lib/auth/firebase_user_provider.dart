import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class PracticaExamenFirebaseUser {
  PracticaExamenFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

PracticaExamenFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<PracticaExamenFirebaseUser> practicaExamenFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<PracticaExamenFirebaseUser>(
      (user) {
        currentUser = PracticaExamenFirebaseUser(user);
        return currentUser!;
      },
    );
