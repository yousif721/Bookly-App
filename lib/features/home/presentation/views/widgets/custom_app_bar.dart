import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
       SafeArea(
        child: Row(
          children: [
            Image.asset(AssetsData.logo,
              height: 18,
            ),
            const Spacer(),
            IconButton(
              onPressed: (){
                GoRouter.of(context).push('/searchView');
              },
              icon: const Icon(FontAwesomeIcons.magnifyingGlass,
                size: 20,
              ),
            )
          ],
        ),
    );
  }
}