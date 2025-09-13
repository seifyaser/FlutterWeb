// lib/services/contact_service.dart
import 'package:dio/dio.dart';

class ContactService {
  final Dio _dio = Dio();

  Future<void> sendContactForm({
    required String name,
    required String email,
    required String message,
  }) async {
    try {
      final response = await _dio.post(
        "https://formspree.io/f/mwpnzwaq",
        data: {
          "name": name,
          "email": email,
          "message": message,
        },
      );

      if (response.statusCode == 200) {
        print("تم الإرسال بنجاح : ${response.data}");
      } else {
        print("${response.data}");
        throw Exception("خطأ غير متوقع");
      }
    } on DioException catch (e) {
      if (e.response != null && e.response?.data != null) {
        final data = e.response?.data;

        // لو الرد فيه errors 
        if (data is Map<String, dynamic> && data.containsKey("errors")) {
          final errors = data["errors"] as List<dynamic>;
          for (var err in errors) {
            print("كود الخطأ: ${err['code']} | الحقل: ${err['field']} | الرسالة: ${err['message']}");
          }
          throw Exception(" ${errors.map((e) => e['message']).join(', ')}");
        }
      }

      print("حصل خطأ أثناء الإرسال: ${e.message}");
      throw Exception("حصل خطأ في السيرفر");
    } catch (e) {
      print("خطأ غير متوقع: $e");
      rethrow;
    }
  }
}
