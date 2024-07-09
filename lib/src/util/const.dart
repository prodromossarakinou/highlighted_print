///
enum TextColor {
  black,
  red,
  green,
  yellow,
  blue,
  purple,
  cyan;

  String get prefix {
    return switch (this) {
      black => "\x1B[30m",
      red => "\x1B[31m",
      green => "\x1B[32m",
      yellow => "\x1B[33m",
      blue => "\x1B[34m",
      purple => "\x1B[35m",
      cyan => "\x1B[36m",
    };
  }

  String get suffix {
    return "\x1B[0m";
  }
}

enum BgColor {
  red,
  green,
  yellow,
  blue,
  purple,
  cyan;

  String get prefix {
    return switch (this) {
      red => "\x1B[41m",
      green => "\x1B[42m",
      yellow => "\x1B[43m",
      blue => "\x1B[44m",
      purple => "\x1B[45m",
      cyan => "\x1B[46m",
    };
  }

  String get suffix {
    return "\x1B[0m";
  }
}
