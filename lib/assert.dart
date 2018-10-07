class Assert {
  static notNull(Object o, String message) {
    if (o == null) {
      throw ArgumentError(message);
    }
  }
}
