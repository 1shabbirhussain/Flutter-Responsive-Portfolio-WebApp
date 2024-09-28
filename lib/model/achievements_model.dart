class AchievementsModel {
  final String name;
  final String organization;
  final String date;
  final String accomplishment;
  final String credential;
  final String image;

  AchievementsModel( {
    required this.name,
    required this.organization,
    required this.date,
    required this.accomplishment,
    required this.credential,
    required this.image,
  });
}

List<AchievementsModel> achievementsList = [
  AchievementsModel(
    name: 'Membership of PAFLA',
    organization: 'Pakistan Freelancers Association',
    date: 'AUG 2024',
    accomplishment: 'Pakistan Freelancers Association',
    credential:  '4676011',
    image:  'assets/images/membership.png',
  ),
  AchievementsModel(
    name: 'Laptop Winner',
    organization: 'Prime Minister Laptop Scheme',
    date: 'MAR 2024',
    accomplishment: 'High Academic Achievements',
    credential:  'PM/2024/LAPTOP/998',
    image:  'assets/images/nocertificate.png',
  ),
  AchievementsModel(
    name: 'Devathon Winner',
    organization: 'Saylani Mass IT Training',
    date: 'OCT 2023',
    accomplishment: 'Mobile App development in 5 hours',
    credential:  'SMIT/2023Hackest/01',
    image:  'assets/images/devathon.jpeg',
  ),
  
];
