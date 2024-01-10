import 'package:flutter_questionnaire_project/core/domain/entity/content_model.dart';
import 'package:flutter_questionnaire_project/core/domain/repo/dashboard_repo_impl.dart';
import 'package:flutter_questionnaire_project/core/domain/use-case/dashboard_use_case.dart';

class DashboardInteractor implements DashboardUseCase {
  DashboardRepoImpl dashboardRepoImpl = DashboardRepoImpl();

  @override
  ContentModel getContent() {
    try {
      return dashboardRepoImpl.getContentModel();
    } catch (e) {
      throw Exception(e);
    }
  }
}
