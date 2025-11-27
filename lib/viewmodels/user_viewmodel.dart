import '../repositories/user_repository.dart';

class UserViewModel {
  final UserRepository repo;

  UserViewModel(this.repo);

  List<String> users = [];

  Future<void> loadUsers() async {
    users = await repo.getUsers();
  }
}
