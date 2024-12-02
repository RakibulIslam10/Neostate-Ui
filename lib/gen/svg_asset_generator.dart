import 'dart:io';

class SvgAssetGenerator {
  final String svgDirectory;
  final String outputFilePath;

  SvgAssetGenerator({required this.svgDirectory, required this.outputFilePath});

  void generate() {
    final svgDir = Directory(svgDirectory);
    if (!svgDir.existsSync()) {
      print('SVG directory "$svgDirectory" does not exist.');
      return;
    }

    final outputFile = File(outputFilePath);
    final buffer = StringBuffer();

    buffer.writeln('// Auto-generated SVG string constants');
    buffer.writeln('class Assets {');

    for (var file in svgDir.listSync()) {
      if (file is File && file.path.endsWith('.svg')) {
        final fileName = file.uri.pathSegments.last.split('.').first;
        final constantName = _toCamelCase(fileName);
        final svgContent = file.readAsStringSync().replaceAll('\n', '\\n');

        buffer
            .writeln('  static const String $constantName = \'$svgContent\';');
      }
    }

    buffer.writeln('}');
    outputFile.writeAsStringSync(buffer.toString());

    print('SVG assets have been generated in $outputFilePath');
  }

  String _toCamelCase(String text) {
    return text.split('_').map((word) {
      return word[0].toUpperCase() + word.substring(1);
    }).join();
  }
}

void main(List<String> args) {
  if (args.length < 2) {
    print('Usage: dart svg_asset_generator.dart <SVG_DIR> <OUTPUT_FILE>');
    return;
  }

  final svgDir = args[0];
  final outputFile = args[1];

  final generator = SvgAssetGenerator(
    svgDirectory: svgDir,
    outputFilePath: outputFile,
  );

  generator.generate();
}
