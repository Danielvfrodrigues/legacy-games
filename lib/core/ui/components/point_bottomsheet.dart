import 'package:flutter/material.dart';

class SyncModal extends StatelessWidget {
  const SyncModal({
    super.key,
    required this.onFirst,
    required this.onSecond,
    required this.onThird,
  });

  final Future<dynamic> Function() onFirst;
  final Future<dynamic> Function() onSecond;
  final Future<dynamic> Function() onThird;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Marcar Ponto',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const Divider(
            thickness: 2,
            height: 32.0,
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {},
            onLongPress: onFirst,
            style: _buttonStyle(
              const Color(0xff0C1B3A),
              const Color(0x800C1B3A),
              const Color(0xff0C1B3A),
              1,
            ),
            child: const Text(
              "Jogo 1",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {},
            onLongPress: onSecond,
            style: _buttonStyle(
              const Color(0xff0C1B3A),
              const Color(0x800C1B3A),
              const Color(0xff0C1B3A),
              1,
            ),
            child: const Text(
              "Jogo 2",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {},
            onLongPress: onThird,
            style: _buttonStyle(
              const Color(0xff0C1B3A),
              const Color(0x800C1B3A),
              const Color(0xff0C1B3A),
              1,
            ),
            child: const Text(
              "Jogo 3",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    ));
  }
}

_buttonStyle(Color? bgColor, Color? rippleColor,
    [Color? borderColor, double? elevation]) {
  return ButtonStyle(
    elevation: MaterialStateProperty.resolveWith(
      (states) => elevation ?? 0,
    ),
    minimumSize: MaterialStateProperty.resolveWith(
      (states) => const Size.fromHeight(48.0),
    ),
    backgroundColor: MaterialStateProperty.resolveWith(
      (states) => bgColor,
    ),
    shape: MaterialStateProperty.resolveWith(
      (states) => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(color: borderColor ?? const Color(0x800C1B3A)),
      ),
    ),
    overlayColor: MaterialStateProperty.resolveWith(
      (states) => rippleColor,
    ),
  );
}
