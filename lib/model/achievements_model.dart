class AchievementsModel {
  final String name;
  final String organization;
  final String date;
  final String execution;
  final String credential;
  final String image;

  AchievementsModel( {
    required this.name,
    required this.organization,
    required this.date,
    required this.execution,
    required this.credential,
    required this.image,
  });
}

List<AchievementsModel> achievementsList = [
  AchievementsModel(
    name: 'Laptop Winner',
    organization: 'Prime Minister Laptop Scheme',
    date: 'MAR 2024',
    execution: 'High Academic Achievements',
    credential:  'PM/2024/LAPTOP/998',
    image:  'assets/images/softskills.png',
  ),
  AchievementsModel(
    name: 'Devathon Winner',
    organization: 'Saylani Mass IT Training',
    date: 'AUG 2023',
    execution: 'Mobile App development in 5 hours',
    credential:  'SMIT/2023Hackest/01',
    image:  'assets/images/devathon.jpeg',
  ),
  AchievementsModel(
    name: 'Member of PAFLA',
    organization: 'PAFLA',
    date: 'NOV 2023',
    execution: 'Flutter . Dart . Programming',
    credential:  '4676011',
    image:  'assets/images/flutter.jpeg',
  ),
  
];
