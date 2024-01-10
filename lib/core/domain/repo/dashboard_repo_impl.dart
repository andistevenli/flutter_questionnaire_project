import 'package:flutter_questionnaire_project/core/data/mapper/content_mapper.dart';
import 'package:flutter_questionnaire_project/core/data/repo/dashboard_repo.dart';
import 'package:flutter_questionnaire_project/core/data/source/data_souce.dart';
import 'package:flutter_questionnaire_project/core/domain/entity/content_model.dart';

class DashboardRepoImpl implements IDashboardRepo {
  DataSource dataSource = DataSource();

  @override
  ContentModel getContentModel() {
    try {
      return moveToContentModel(dataSource.getContentDTO());
    } catch (e) {
      throw Exception(e);
    }
  }
}
