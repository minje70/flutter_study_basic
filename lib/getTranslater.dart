import 'package:get/get.dart';

class Message extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'ko_KR': {
          'Snack Bar': '스낵 바',
          'default Dialog': '디폴트 다이알로그',
        },
        'en_US': {
          'Snack Bar': 'Snack Bar',
          'default Dialog': 'default Dialog',
        },
        'fr_FR': {
          'Snack Bar': '프랑스 스낵바',
          'default Dialog': '프랑스 다이알로그',
        },
      };
}
