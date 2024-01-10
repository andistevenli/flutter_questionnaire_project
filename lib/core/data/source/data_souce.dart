import 'package:flutter_questionnaire_project/core/data/dto/content_dto.dart';

class DataSource {
  ContentDTO getContentDTO() {
    try {
      return ContentDTO(question: 'question');
    } catch (e) {
      throw Exception(e);
    }
  }
}
