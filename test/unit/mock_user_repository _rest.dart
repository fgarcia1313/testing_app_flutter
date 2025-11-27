import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:testing_app_flutter/repositories/user_repository.dart';
import 'package:testing_app_flutter/viewmodels/user_viewmodel.dart';

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  test('loadUsers() debería cargar usuarios desde el repo', () async {
    // Arrange
    final mockRepo = MockUserRepository();
    final vm = UserViewModel(mockRepo);

    when(() => mockRepo.getUsers()).thenAnswer(
          (_) async => ['Pedro', 'Juan', 'Maria'],
    );

    // Act
    await vm.loadUsers();

    // Assert
    expect(vm.users.length, 3);
    expect(vm.users, contains('Juan'));

    // Verificar que el repo fue llamado UNA VEZ
    verify(() => mockRepo.getUsers()).called(1);
  });
}
