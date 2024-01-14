import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_management_hive_api/core/failure/failure.dart';
import 'package:student_management_hive_api/features/course/domain/repository/course_repository.dart';

final deleteCourseUseCaseProvider = Provider.autoDispose<DeleteCourseUseCase>(
    (ref) =>
        DeleteCourseUseCase(repository: ref.read(courseRepositoryProvider)));

class DeleteCourseUseCase {
  final ICourseRepository repository;

  DeleteCourseUseCase({required this.repository});

  Future<Either<Failure, bool>> deleteCourse(String id) async {
    return await repository.deleteCourse(id);
  }
}
