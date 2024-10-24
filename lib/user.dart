import 'package:flutter_riverpod/flutter_riverpod.dart';

final stateNotifierProvider =
    StateNotifierProvider<UserClass, User>((_) => UserClass());

class UserClass extends StateNotifier<User> {
  UserClass() : super(User(firstName: 'Нет данных', lastName: 'Нет данных'));

  void editFirstName(String firstName) {
    state = state.copyWith(firstName: firstName);
  }

  void editLastName(String lastName) {
    state = state.copyWith(lastName: lastName);
  }
}

class User {
  String? firstName;
  String? lastName;

  User({required this.firstName, required this.lastName});

  User copyWith({String? firstName, String? lastName}) {
    return User(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName);
  }
}
