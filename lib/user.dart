import 'package:flutter_riverpod/flutter_riverpod.dart';


final stateNotifierProvider = StateNotifierProvider<UserClass, User>((_) => UserClass());

class UserClass extends StateNotifier<User>
{
  UserClass() : super(User('Нет данных', 'Нет данных'));
  void editFirstName(String firstName) {
    state.firstName = firstName;
  }
  void editLastName(String lastName) {
    state.lastName = lastName;
  }
}

class User{
  String? firstName;
  String? lastName;

  User(this.firstName, this.lastName);
}