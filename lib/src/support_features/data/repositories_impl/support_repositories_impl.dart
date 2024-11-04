


import 'package:tentofree_web/src/support_features/data/model/contact_us_dto/contact_us_dto.dart';

import '../../../core/errors/custom_error.dart';
import '../../domain/entities/contact_us_entity.dart';
import '../datasource/support_datasource.dart';

abstract class SupportRepository {
  Future<ContactUsEntity> sendTicket({ContactUsEntity? body});
}

class SupportRepositoryImpl implements SupportRepository {
  final SupportSourceImpl dataSource = SupportSourceImpl();

  @override
  Future<ContactUsEntity> sendTicket({ContactUsEntity? body}) async {
    try {
      return await dataSource.sendSupportTicket(body: body).then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to send ticket', err: e, stackTrace: stack);
    }
  }
}
