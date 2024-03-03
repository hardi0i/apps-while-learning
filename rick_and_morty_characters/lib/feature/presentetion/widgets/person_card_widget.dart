import 'package:di_clean_architecture_solid/common/app_colors.dart';
import 'package:di_clean_architecture_solid/feature/domain/entities/person_entity.dart';
import 'package:di_clean_architecture_solid/feature/presentetion/pages/person_detail_screen.dart';
import 'package:di_clean_architecture_solid/feature/presentetion/widgets/person_cache_image_widget.dart';
import 'package:flutter/material.dart';

class PersonCard extends StatelessWidget {
  final PersonEntity person;

  const PersonCard({required this.person});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PersonDetailPage(
              person: person,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.cellBackgroud,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Container(
              child: PersonCacheImage(
                  height: 166, imageUrl: person.image, width: 166),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    person.name,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          color: person.status == 'Alive'
                              ? Colors.green
                              : Colors.red,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Text(
                          '${person.status}-${person.species}',
                          style: TextStyle(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Last known location',
                    style: TextStyle(
                      color: AppColors.greyColor,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    person.location.name!,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Origin:',
                    style: TextStyle(
                      color: AppColors.greyColor,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    person.origin.name!,
                    style: TextStyle(color: Colors.white),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 12,
            ),
          ],
        ),
      ),
    );
  }
}
