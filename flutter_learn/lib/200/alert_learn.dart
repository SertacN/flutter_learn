import 'package:flutter/material.dart';

class AlertLearn extends StatefulWidget {
  const AlertLearn({super.key});

  @override
  State<AlertLearn> createState() => _AlertLearnState();
}

class _AlertLearnState extends State<AlertLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return ImageZoomDialog();
              });
        },
      ),
    );
  }
}

// class _UpdateDialog extends StatelessWidget {
//   const _UpdateDialog();

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: const Text('Update'),
//       actions: [
//         ElevatedButton(onPressed: () {}, child: const Text('Update')),
//         TextButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             child: const Text('Close'))
//       ],
//     );
//   }
// }

class UpdateDialog extends AlertDialog {
  UpdateDialog({super.key, required BuildContext context})
      : super(
          title: const Text('Update'),
          actions: [
            ElevatedButton(onPressed: () {}, child: const Text('Update')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Close'))
          ],
        );
}

// class _ImageZoomDialog extends StatelessWidget {
//   const _ImageZoomDialog();

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       insetPadding: EdgeInsets.zero,
//       child: InteractiveViewer(
//         child: Image.network(
//           'https://picsum.photos/200',
//           height: 400,
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
// }

class ImageZoomDialog extends Dialog {
  ImageZoomDialog({super.key})
      : super(
          insetPadding: EdgeInsets.zero,
          child: InteractiveViewer(
            child: Image.network(
              'https://picsum.photos/200',
              height: 400,
              fit: BoxFit.cover,
            ),
          ),
        );
}
