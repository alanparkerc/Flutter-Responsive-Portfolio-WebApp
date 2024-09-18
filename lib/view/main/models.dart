class AchievementModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  AchievementModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<AchievementModel> achievementList = [
  AchievementModel(
    name: 'Bachelor\'s of Science in Computer Science (transferred)',
    organization: 'San Diego State University',
    date: 'Aug 2017 - Dec 2020',
    skills: 'Java - C# - Python',
    credential: 'Software Develop Cycle - Video Game Design - Algorithms',
  ),
  AchievementModel(
    name:
        'Bachelor\'s of Science in Applied Computer Science (Focus: Security)',
    organization: 'Oregon State University',
    date: 'Graduated Jul 2023',
    skills: 'Flutter/Dart - HTML/CSS/JS - C/C++',
    credential: 'Web Applications - Database Management - Physics Engines',
  ),
];

class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  Project(this.name, this.description, this.image, this.link);
}

List<Project> projectList = [
  Project('REACH TO GO', 'Description', 'assets/images/chat.png',
      'https://github.com/'),
  Project('Sales Prospects ', 'Description', 'assets/images/chat.png',
      'https://github.com/'),
  Project('Digital Marketing Specialist Dashboard', 'Description',
      'assets/images/chat.png', 'https://github.com/'),
  Project('REACH Re-Design', 'Description', 'assets/images/chat.png',
      'https://github.com/'),
  Project(
      'Engineering Simulations with Game Development Tools',
      'This project enables the effortless creation of a range of lifelike environments, designed for testing vehicular simulations developed by our sister team. Leveraging the Bevy game engine (https://bevyengine.org/), it efficiently materializes these environments in a lightweight framework.',
      'assets/images/chat.png',
      'https://events.engineering.oregonstate.edu/expo2023/project/engineering-simulations-game-development-tools'),
];
