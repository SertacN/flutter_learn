import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learn/100/image_learn.dart';

class NoteDemosApp extends StatelessWidget {
  NoteDemosApp({super.key});

  final String _title = 'Create your first note';
  final String _description = 'Add a note about anything' * 5;
  final _createNote = 'Create A Note';
  final _importNotes = 'Import Notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: ProjectPadding.horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().appleBook),
            Padding(
              padding: ProjectPadding.verticalPadding,
              child: _TitleWidget(
                title: _title,
              ),
            ),
            _SubTitleWidget(
              title: _description,
            ),
            const Spacer(),
            _CreateButton(buttonText: _createNote),
            _TextButton(buttonText: _importNotes),
            const SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}

class _TextButton extends StatelessWidget {
  const _TextButton({required this.buttonText});

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          buttonText,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: Colors.blue),
        ));
  }
}

class _CreateButton extends StatelessWidget {
  const _CreateButton({
    required this.buttonText,
  });

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            padding: ProjectPadding.verticalPadding,
            shape: ProjectRectangle.roundedRectangleBorder),
        onPressed: () {},
        child: Center(
            child: SizedBox(
                child: Text(
          buttonText,
          style: Theme.of(context).textTheme.headlineSmall,
        ))));
  }
}

class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget({
    // ignore: unused_element
    this.textAlign = TextAlign.center,
    required this.title,
  });

  final TextAlign? textAlign;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: Colors.black,
          ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headlineSmall
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w600),
    );
  }
}

class ProjectPadding {
  static const horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
  static const verticalPadding = EdgeInsets.symmetric(vertical: 20);
}

class ProjectRectangle {
  static const roundedRectangleBorder = RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)));
}
