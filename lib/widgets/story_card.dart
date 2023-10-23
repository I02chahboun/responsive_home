import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/widgets/favorite_icon.dart';

class StoryCard extends StatelessWidget {
  final String image, title, subTitle;
  final double price;
  const StoryCard(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Sizes.width(context) * 0.13,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          borderRadius: Corners.med,
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: Corners.med, color: AppColors.white),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(title,
                          style: TextStyles.titleCard,
                          softWrap: false,
                          overflow: TextOverflow.fade),
                      Text(subTitle,
                          style: TextStyles.subTitle,
                          softWrap: false,
                          overflow: TextOverflow.fade),
                      Text(price.toString(),
                          softWrap: false, overflow: TextOverflow.fade),
                    ],
                  ),
                ),
                const FavoriteButton(),
              ],
            )),
      ),
    );
  }
}
