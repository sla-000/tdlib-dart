extension StringExtension on String {
  String toConstructor() => "${this[0].toLowerCase()}${this.substring(1)}";

  String upperFirstChar() => this.replaceFirst(this[0], this[0].toUpperCase());

  String lowerFirstChar() => this.replaceFirst(this[0], this[0].toLowerCase());

  String camelCase() =>
      this.split('_').map((str) => str.upperFirstChar()).join();
}
