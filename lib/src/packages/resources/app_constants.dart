abstract interface class AppConstants {
  static final emailPatternRegExp = RegExp(
    r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
  );
  static final passwordPatternRegExp =
      RegExp(r'^.*(?=.{8,255})((?=.*[!@#$%^&*_,]))(?=.*\d)((?=.*[A-Z]))((?=.*[a-z])).*$');
  static final userNamePatternRegExp = RegExp('[a-zA-Z]');
  static final confirmPasswordPatternRegExp = passwordPatternRegExp;
}