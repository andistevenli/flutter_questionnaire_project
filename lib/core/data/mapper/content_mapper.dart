import 'package:flutter_questionnaire_project/core/data/dto/content_dto.dart';
import 'package:flutter_questionnaire_project/core/domain/entity/content_model.dart';

ContentModel moveToContentModel(ContentDTO from) {
  return ContentModel(
    question: from.question,
  );
}
