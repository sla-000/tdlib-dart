import 'class.dart';
import 'generator.dart';
import 'parser.dart';

void main() {
  print('parse...');
  final List<Class> classes = Parser().parse();
  print('generate...');
  Generator(
    root: './lib/src/api',
    classes: classes,
  ).generate();
}
