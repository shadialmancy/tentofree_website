
import 'package:tentofree_web/src/support_features/domain/entities/contact_us_entity.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/custom_error.dart';
import '../../data/repositories_impl/support_repositories_impl.dart';

part 'support_repositories.g.dart';

@Riverpod(keepAlive: true)
class SupportRepository extends _$SupportRepository {
  @override
  FutureOr<ContactUsEntity?> build() async {
    return getContactUsEntity();
  }

  final SupportRepositoryImpl supportSourceImpl = SupportRepositoryImpl();

  ContactUsEntity? _contactUsEntity;
  ContactUsEntity? getContactUsEntity() => _contactUsEntity;


  Future<ContactUsEntity?> sendTicket({ContactUsEntity? body}) async {
    try {
      _contactUsEntity = await supportSourceImpl.sendTicket(body: body);
      return _contactUsEntity;
    } catch (e, stack) {
      throw CustomError('Failed to send ticket', err: e, stackTrace: stack);
    }
  }

}
