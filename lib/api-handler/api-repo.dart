import 'package:starter_kit/api-handler/api-extention.dart';

import '../constant/api_constants.dart';
import 'api-handler.dart';

class ApiRepository {
  ApiRepository(this._apiHelper);

  final ApiBaseHelper _apiHelper;

  ///// Get user Data
  ///
  Future getUserData() async {
    return _apiHelper
        .get(
          ApiConstant.getuserlist,
        )
        .execute((response) => response);
  }
}
