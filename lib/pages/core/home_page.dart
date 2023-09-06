import 'package:flutter/material.dart';
import 'package:nemrout/constants/constants.dart';
import 'package:nemrout/widgets/border_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyBorder.defaultBorder(
      child: Row(
        children: [
          Expanded(
            flex: 7,
            child: MyBorder.defaultBorder(
              child: Column(
                children: [
                  const Spacer(),
                  Expanded(
                    child: MyBorder.defaultBorder(
                      child: const Text('data'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: MyBorder.defaultBorder(child: const Placeholder()),
          ),
        ],
      ),
    );
  }
}
