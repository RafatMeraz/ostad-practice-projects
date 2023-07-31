class SuccessResponse {
  int statusCode;
  String message;
  Object? responseObject;

  SuccessResponse(
      {this.statusCode = 0,
      this.message = '',
      this.responseObject});
}
