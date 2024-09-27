class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;
  final String image;

  CertificateModel( {
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
    required this.image,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Certified Mobile Application Developer',
    organization: 'Jawan Pakistan',
    date: 'AUG 2023',
    skills: 'Flutter . Dart . Firebase . StateManagement',
    credential:  'JP/WOW/FL/B4/1239',
    image:  'assets/images/flutter_jp.jpeg',
  ),
  CertificateModel(
    name: 'Google Certified in SoftSkills',
    organization: 'LinkedIn',
    date: 'JUL 2024',
    skills: 'Critical Thinking . Time Managment . Problem Solving . Social Networking',
    credential:  '1526905661503348',
    image:  'assets/images/softskills.png',
  ),
  CertificateModel(
    name: 'Introduction to Flutter',
    organization: 'SimpliLearn | SkillUp',
    date: 'NOV 2023',
    skills: 'Flutter . Dart . Programming',
    credential:  '4676011',
    image:  'assets/images/flutter.jpeg',
  ),
  CertificateModel(
    name: 'Java Script Crash Course',
    organization: 'Saylani Mass IT Training',
    date: 'SEP 2023',
    skills: 'JS . HTML . CSS . Node.JS',
    credential:  'SMIT/2023/JS/B1/067',
    image:  'assets/images/js.jpeg',
  ),
  CertificateModel(
    name: 'Programming Essentials in Python',
    organization: 'Cisco Networking Academy',
    date: 'MAR 2022',
    skills: 'PYTHON . Rest API\'s . Cloud . Django',
    credential:  'PCAP/CISCO/2022/PEP/B1/067',
    image:  '',
  ),
  CertificateModel(
    name: 'Digital Marketing 101',
    organization: 'SimpliLearn | SkillUp',
    date: 'FEB 2022',
    skills: 'Digital Marketing . Social Media Marketing',
    credential:  '3230609',
    image:  '',
  ),
  CertificateModel(
    name: 'Certified Computer Operator',
    organization: 'Saylani Mass IT Training',
    date: 'SEP 2017',
    skills: 'MS Package . Advance Excel',
    credential:  'SMIT|CCO|2017|318',
    image:  'assets/images/cco.jpeg',
  ),

];
