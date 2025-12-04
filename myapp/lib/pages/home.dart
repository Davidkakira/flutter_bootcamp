import 'package:flutter/material.dart ';
import 'package:myapp/pages/contact.dart';
import '../widgets/widgets.dart';
import '../extensions.dart';

const activityIcons = [
  Icons.music_note_outlined,
  Icons.people_outline,
  Icons.notifications_outlined,
];

const List<MaterialColor> activityColors = [
  Colors.purple,
  Colors.green,
  Colors.lightBlue,
];
const activityTitles = [
  "liste de spotify",
  "3 contacts ajoutés",
  "5 nouvelles notifications",
];
const activitySubTitles = [
  "il y a 2 jours",
  "il y a 3 jours",
  "il y a 5 jours",
];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: .start,
              spacing: 8,
              children: [
                Row(
                  spacing: 5,
                  children: [
                    Icon(Icons.calendar_today_outlined, size: 20),
                    Text("lundi, 1 decembre 2025"),
                  ],
                ),
                Text(
                  "bon retour !",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text("comment ça va aujourd'hui ?"),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: .spaceBetween,
            spacing: 16,
            children: [
              _bodyRowContainer(
                context,
                color: Colors.blue,
                icon: Icons.people_outline,
                title: "Contact",
                number: "200",
                onTap: () {
                  // goRouter.pushNamed(RoutesNames.contacts );
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Contact()),
                  );
                },
              ),
              _bodyRowContainer(
                context,
                color: Colors.orange,
                icon: Icons.music_note_outlined,
                title: "Playlist",
                number: "25",
                onTap: () {},
              ),
            ],
          ).bottomGap(),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.purple.shade200,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Row(
                      spacing: 5,
                      children: [
                        Icon(Icons.cloud_outlined, size: 20),
                        Text("metéo aujourd'hui "),
                      ],
                    ),
                    Text("Bukavu, DRC"),
                  ],
                ),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      "22°C",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                      ),
                    ),
                    Text("High: 25° Low: 18°"),
                  ],
                ),
                Text("partiellement ensoleillé"),
              ],
            ),
          ).bottomGap(),
          Text("activite recent").bottomGap(),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: List.generate(3, (index) {
                return Row(
                  spacing: 8,
                  children: [
                    customIconContainer(
                      icon: activityIcons[index],
                      color: activityColors[index],
                    ),
                    Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(activityTitles[index]),
                        Text(
                          activitySubTitles[index],
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ).bottomGap(index == 2 ? 0 : 16);
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget _bodyRowContainer(
    dynamic context, {
    required String title,
    required String number,
    required IconData icon,
    required MaterialColor color,
    required void Function()? onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: color.shade100,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: color, width: 0.5),
          ),
          child: Row(
            spacing: 8,
            children: [
              customIconContainer(isFirst: true, color: color, icon: icon),
              Column(
                crossAxisAlignment: .start,
                children: [Text(title), Text(number)],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
