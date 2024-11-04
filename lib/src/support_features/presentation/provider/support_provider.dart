import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/custom_error.dart';
import '../../domain/entities/contact_us_entity.dart';
import '../../domain/repositories/support_repositories.dart';

part 'support_provider.g.dart';

@Riverpod(keepAlive: true)
class SupportService extends _$SupportService {
  @override
  FutureOr<ContactUsEntity?> build() async {
    return contactUsEntity;
  }

  ContactUsEntity? contactUsEntity;

  Future<ContactUsEntity?> sendTicket({ContactUsEntity? body}) async {
    final supportService = ref.watch(supportRepositoryProvider.notifier);

    try {
      contactUsEntity = await supportService.sendTicket(body: body);
      return contactUsEntity;
    } catch (e, stack) {
      throw CustomError('Failed to send ticket', err: e, stackTrace: stack);
    }
  }
}
