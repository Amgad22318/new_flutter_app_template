
//
// class UserGetProfileRequest {
//   static Future userGetProfileRequest() async {
//     try {
//       Response response = await DioHelper.postData(url: EP_USER_PROFILE_SHOW,token:'Bearer  $accessToken');
//       printResponse(response.data.toString());
//       return UserGetProfileModel.fromJson(response.data);
//     } catch (error) {
//       printError(error.toString());
//       return null;
//     }
//   }
// }
