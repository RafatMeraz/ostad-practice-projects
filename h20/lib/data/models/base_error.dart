class BaseError {
  int errorCode = 0;
  String message = '';
  String stackTrack = '';

  BaseError({errorCode = 0, this.message = '', stackTrace = ''});
}
