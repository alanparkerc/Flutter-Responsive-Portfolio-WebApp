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
    name: 'Getting started with Flutter Development',
    organization: 'San Diego State University',
    date: 'AUG 2017 - DEC 2020',
    skills: 'Flutter . Dart',
    credential: '',
  ),
  AchievementModel(
    name: 'Flutter Essential Training: Build for Multiple Platforms',
    organization: 'Oregon State University',
    date: 'JAN 2021 - JUL 2023',
    skills: 'Flutter . iOS Development . Android Development',
    credential: '',
  ),
];
