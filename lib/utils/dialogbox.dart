import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow.shade400,
      content: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('Simpan'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Keluar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
