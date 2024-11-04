import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tentofree_web/src/support_features/data/model/contact_us_dto/contact_us_dto.dart';
import 'package:tentofree_web/src/support_features/domain/entities/contact_us_entity.dart';

import '../../../core/constants/constants.dart';
import '../../../core/errors/custom_error.dart';

abstract class SupportSource {
  Future<ContactUsDto> sendSupportTicket({ContactUsEntity? body});
}

class SupportSourceImpl implements SupportSource {
  @override
  Future<ContactUsDto> sendSupportTicket({ContactUsEntity? body}) async {
    try {
       final response = await http.post(
        headers: {
          "Content-Type" : "application/json"
        },
            Uri.parse("${AppConstants.apiBaseUrl}${AppConstants.sendTicketUrl}"),
            body: json.encode({
      'first_name': body?.firstName,
      'last_name': body?.lastName,
      'email': body?.email,
      'phone_number': body?.phoneNumber,
      'country': body?.country,
      'request_types': body?.requestTypes,
      'inquiry_title': body?.inquiryTitle,
      'description': body?.description,
    })
          );
      logger.d('getCategories response: ${response.body}');
      if (response.statusCode == 201) {
        return ContactUsDto.fromJson(json.decode(response.body));
      } else {
        return ContactUsDto.fromJson(json.decode(response.body));
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

}


//  final response = await http.post(
//         headers: {
//           "Content-Type" : "application/json"
//         },
//             Uri.parse("${AppConstants.apiBaseUrl}${AppConstants.sendTicketUrl}"),
//             body: json.encode({
//       'first_name': body?.firstName,
//       'last_name': body?.lastName,
//       'email': body?.email,
//       'phone_number': body?.phoneNumber,
//       'country': body?.country,
//       'request_types': body?.requestTypes,
//       'inquiry_title': body?.inquiryTitle,
//       'description': body?.description,
//     })
//           );