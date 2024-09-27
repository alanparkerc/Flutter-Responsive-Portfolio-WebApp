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
  Project(
      'REACH To Go',
      'REACH To Go offers Franchise Focused Marketing clients convenient mobile access to their REACH dashboard. With this app, users can easily view full campaign metrics, notes, and leads, even when away from their computer. Developed using Dart and Flutter, REACH To Go seamlessly connects to custom API endpoints, ensuring real-time data access on the go.',
      'assets/images/chat.png',
      'https://github.com/alanparkerc/reach_to_go'),
  Project(
      'Sales Prospects ',
      'I developed a Sales Prospects Pipeline using Dart and Flutter, designed to manage sales leads and support the business development team in effectively pursuing new opportunities. This tool centralizes lead tracking and streamlines the process, helping the team stay organized and focused on driving growth.',
      'assets/images/chat.png',
      'https://github.com/alanparkerc/reach_prospects'),
  Project(
      'Digital Marketing Specialist Dashboard',
      'I created a Digital Marketing Specialist Dashboard using Dart and Flutter, enabling streamlined management of Google and Facebook campaigns for clients. This tool allows for efficient oversight and optimization of campaign performance, all from a centralized, user-friendly interface.',
      'assets/images/chat.png',
      'https://github.com/alanparkerc/reach_dms'),
  Project(
      'Engineering Simulations with Game Development Tools',
      'This project enables the effortless creation of a range of lifelike environments, designed for testing vehicular simulations developed by our sister team. Leveraging the Bevy game engine (https://bevyengine.org/), it efficiently materializes these environments in a lightweight framework.',
      'assets/images/chat.png',
      'https://events.engineering.oregonstate.edu/expo2023/project/engineering-simulations-game-development-tools'),
];
