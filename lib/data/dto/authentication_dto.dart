

import 'package:oauth2_dio/oauth2_manager.dart';

class AuthenticationDto with OAuthInfoMixin {
  @override
  final String accessToken;
  @override
  final String refreshToken;

  AuthenticationDto(this.accessToken, this.refreshToken);

  // factory AuthenticationDto.fromJson(Map<String, dynamic> json) =>
  //     _$AuthenticationDtoFromJson(json);
  //
  // Map<String, dynamic> toJson() => _$AuthenticationDtoToJson(this);
}