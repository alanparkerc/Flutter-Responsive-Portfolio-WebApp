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
