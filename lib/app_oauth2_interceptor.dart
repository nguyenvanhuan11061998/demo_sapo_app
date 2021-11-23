

import 'dart:developer' as developer;
import 'package:dio/dio.dart';
import 'package:oauth2_dio/oauth2_interceptor.dart';
import 'package:oauth2_dio/oauth2_manager.dart';

class AppOauth2Interceptor extends Oauth2Interceptor {
  AppOauth2Interceptor(
      {required Dio dio,
        required Dio oauth2Dio,
        required String pathRefreshToken,
        required Oauth2Manager<OAuthInfoMixin> tokenProvider,
        required OAuthInfoMixinParse parserJson})
      : super(
      dio: dio,
      oauth2Dio: oauth2Dio,
      pathRefreshToken: pathRefreshToken,
      tokenProvider: tokenProvider,
      parserJson: parserJson);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // if(tokenProvider.currentValue?.accessToken != null){
    options.headers.putIfAbsent(
        'X-Sapo-Access-Token', () => '82224f46b56643e4b03aea8e2bc18723');
    // }
    handler.next(options);
  }

  @override
  void onError(DioError error, ErrorInterceptorHandler handler) {
    if (error.response?.statusCode == 401 &&
        tokenProvider.currentValue != null) {
      developer.log('refresh token');
      RequestOptions options = error.response!.requestOptions;
      if ('Bearer ${tokenProvider.currentValue?.accessToken}' !=
          options.headers["Authorization"]) {
        options.headers["Authorization"] =
        'Bearer ${tokenProvider.currentValue?.accessToken}';
        dio.fetch(options).then((value) {
          handler.resolve(value);
        }, onError: (error) {
          handler.reject(error);
        });
        return;
      }
      //region lock current Dio
      dio.lock();
      dio.interceptors.responseLock.lock();
      dio.interceptors.errorLock.lock();
      //endregion
      developer.log('pathRefreshToken: ' + pathRefreshToken.toString());
      oauth2Dio.options.headers['isRefreshToken'] = 'true';
      oauth2Dio.options.headers['Authorization'] =
      'Bearer ${tokenProvider.currentValue?.accessToken}';
      oauth2Dio.get(pathRefreshToken).then((value) {
        tokenProvider.add(parserJson(value.data));
        options.headers["Authorization"] =
        'Bearer ${value.data['data']['jwt']}';
        // GetIt.instance.get<LocalService>().saveAuth(AuthenticationDto(value.data['data']['jwt'] as String,
        //   value.data['data']['jwt'] as String,));
      }, onError: (error) {
        tokenProvider.add(null);
      }).whenComplete(() {
        //region unlock when refresh done
        dio.unlock();
        dio.interceptors.responseLock.unlock();
        dio.interceptors.errorLock.unlock();
        //endregion
      }).then((value) {
        if (tokenProvider.currentValue != null) {
          dio.fetch(options).then((value) {
            handler.resolve(value);
          }, onError: (error) {
            handler.reject(error);
          });
        }
      });
    } else {
      handler.next(error);
    }
  }
}
