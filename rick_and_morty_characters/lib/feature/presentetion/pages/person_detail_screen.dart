import 'package:di_clean_architecture_solid/feature/domain/entities/person_entity.dart';
import 'package:di_clean_architecture_solid/feature/presentetion/widgets/person_cache_image_widget.dart';
import 'package:flutter/material.dart';

class PersonDetailPage extends StatelessWidget {
  final PersonEntity person;

  const PersonDetailPage({required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Character'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Text(
              person.name,
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              child: PersonCacheImage(
                height: 266,
                width: 266,
                imageUrl: person.image,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: person.status == 'Alive' ? Colors.green : Colors.red,
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  person.status,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            if (person.type.isNotEmpty)
              ...buildText(
                'Type:',
                person.type,
              ),
            ...buildText('Gender', person.gender),
            ...buildText(
              'Nember of episoders:',
              person.episode.length.toString(),
            ),
            ...buildText('Species:', person.species),
            ...buildText(
              'Last known location:',
              person.location.name!,
            ),
            ...buildText(
              'Origin:',
              person.origin.name!,
            ),
            ...buildText(
              'Was created:',
              person.created.toString(),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildText(String text, String value) {
    return [
      Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      SizedBox(
        height: 4,
      ),
      Text(
        value,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      SizedBox(
        height: 12,
      ),
    ];
  }
}
