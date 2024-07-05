import 'package:change_app_package_name/android_rename_steps.dart';
import 'package:args/args.dart';

void main(List<String> arguments) {
  var parser = ArgParser()
    ..addOption('package', abbr: 'p', mandatory: true)
    ..addOption('yandexKey', abbr: 'k', mandatory: true);
  ArgResults results = parser.parse(arguments);
  AndroidRenameSteps(
    newPackageName: results['package'],
    yaKey: results['yandexKey'],
  ).process();
}
