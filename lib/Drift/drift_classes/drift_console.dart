class DriftConsole {
  final String warnMessage = '\n Drift <Warning> : ';

  String consoleNewLine() {
    String res = '\n';
    for (int n=0; n<warnMessage.length-2; n++) {
      res += ' ';
    }
    return res;
  }

  void warn(final String warn) {
    print(this.warnMessage+warn.replaceAll(">cnl", consoleNewLine()));
  }

  void warnWithType(final String type, final String warn) {
    print(this.warnMessage+warn);
  }

}