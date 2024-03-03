import 'package:di_clean_architecture_solid/feature/domain/entities/person_entity.dart';
import 'package:di_clean_architecture_solid/feature/presentetion/pages/person_detail_screen.dart';
import 'package:di_clean_architecture_solid/feature/presentetion/widgets/person_cache_image_widget.dart';
import 'package:flutter/material.dart';

class SearchResult extends StatelessWidget {
  SearchResult({required this.personResult});

  final PersonEntity personResult;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return PersonDetailPage(person: personResult);
            },
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Container(
                child: PersonCacheImage(
                  width: double.infinity,
                  height: 300,
                  imageUrl: personResult.image,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                personResult.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                personResult.location.name!,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
