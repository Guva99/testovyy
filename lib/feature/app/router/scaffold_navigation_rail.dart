import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testovoe_zadanie/core/resources/resources.dart';
import 'package:testovoe_zadanie/core/theme/app_color.dart';
import 'package:testovoe_zadanie/generated/l10n.dart';


class ScaffoldWithNavigationRail extends StatelessWidget {
  const ScaffoldWithNavigationRail({
    Key? key,
    required this.body,
    required this.selectedIndex,
    required this.onDestinationSelected,
  }) : super(key: key);

  final Widget body;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.white,
      body: body,
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: TextStyle(
          color: AppColors.gray,
        ),
        selectedLabelStyle: TextStyle(
          color: AppColors.purpleBlue,
        ),
        unselectedItemColor: AppColors.gray,
        selectedItemColor: AppColors.purpleBlue,
        backgroundColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: onDestinationSelected,
        items: [
          buildNavigationBarItem(Vectors.lenta, S.current.lenta, 0),
          buildNavigationBarItem(Vectors.map, S.current.map, 1),
          buildNavigationBarItem(Vectors.favorite, S.current.favorite, 2),
          buildNavigationBarItem(Vectors.profile, S.current.profile, 3),
         ],
      ),
    );
  }


  BottomNavigationBarItem buildNavigationBarItem(String imageAsset, String label, int index) {
    final isActive = selectedIndex == index;
    final color = isActive ? AppColors.purpleBlue : Colors.grey;
    return BottomNavigationBarItem(
      icon: InkWell(
        onTap: () => onDestinationSelected(index),
        child: index != 4
            ? SvgPicture.asset(
          imageAsset,
          height: index == 1 ? 30 : 35,
          width: index == 1 ? 30 : 35,
          color: index == 4 ? null : color,
        )
            : Image(
          image: AssetImage(imageAsset),
          color: index == 4 ? null : color,
          height: 35,
          width: 35,
        ),
      ),
      label: label,
    );
  }
}