import 'package:portfolio/models/skillset.dart';

import '../models/project.dart';

final projects = [
  Project(
      title: 'Petros',
      description:
          'This is an application that allows you to instantly view and track fuel prices at various gas stations, as well as explore and assess the stations you prefer in more detail.',
      logo: 'assets/images/petros-logo.png',
      appPreview: 'assets/images/petros-preview.png',
      appStoreLink:
          'https://play.google.com/store/apps/details?id=com.mobsmile.petros'),
  Project(
      title: 'Cardit',
      description:
          'Cardition is your online platform where your information are saved on cards, organized in folders and shared with the help of the digital card number: the BCN',
      logo: 'assets/images/cardit-logo.png',
      appPreview: 'assets/images/cardit-preview.png',
      appStoreLink:
          'https://play.google.com/store/apps/details?id=com.bcfolder.cardition'),
  Project(
      title: 'Cepilac',
      description:
          'This is an application that provides information about the medications you are using, offers access to a wide range of personal care products, and facilitates convenient communication with nearby pharmacies.',
      logo: 'assets/images/cepilac-logo.png',
      appPreview: 'assets/images/cepilac-preview.png',
      appStoreLink:
          'https://play.google.com/store/apps/details?id=com.mobsmile.cepilac'),
  Project(
      title: 'Trendmap',
      description:
          'If you’re the one follows new trends and styles, Trendmap is the first app shows nearby fashion. Be aware this app will absolutely make you feel posh if you are obsessed with style. You will spend more hours than you think and it’ll become your new addiction!',
      logo: 'assets/images/trendmap-logo.png',
      appPreview: 'assets/images/trendmap-preview.png',
      appStoreLink: 'https://apps.apple.com/tr/app/trendmap/id1198245251'),
  Project(
      title: 'Grocery',
      description:
          'Grocery is a mobile application that enhances user interface experiences. It is a simple and user-friendly application, designed with a seamless interface and engaging animations.',
      logo: 'assets/images/trendmap-logo.png',
      appPreview: 'assets/images/grocery-preview.png',
      appStoreLink: 'https://github.com/hasankarli/groceries_shopping_ui'),
  Project(
      title: 'Girisimci Okulu',
      description:
          'Girisimci okulu is a platform that offers training, summits, mentorship, and project development support to aspiring entrepreneurs. With the motto "Entrepreneurship is as much about the entrepreneur," it aims to create an experience-oriented training program within the entrepreneurial environment. The school is dedicated to empowering its users, including young entrepreneurs, and fostering a vibrant entrepreneurial community.',
      logo: 'assets/images/girisimci-okulu-logo.png',
      appPreview: 'assets/images/girisimci-okulu-preview.png',
      appStoreLink: 'https://www.instagram.com/girisimciokulu/'),
];

final skills = [
  Skill(title: 'Flutter', imageAsset: 'assets/images/skills/flutter.png'),
  Skill(title: 'Dart', imageAsset: 'assets/images/skills/dart.png'),
  Skill(title: 'Firebase', imageAsset: 'assets/images/skills/firebase.png'),
  Skill(title: 'NodeJs', imageAsset: 'assets/images/skills/node.png'),
  Skill(title: 'Express', imageAsset: 'assets/images/skills/express.png'),
  Skill(title: 'Js', imageAsset: 'assets/images/skills/javascript.png'),
  Skill(title: 'Typescript', imageAsset: 'assets/images/skills/typescript.png'),
  Skill(title: 'React', imageAsset: 'assets/images/skills/react.png'),
  Skill(title: 'Docker', imageAsset: 'assets/images/skills/docker.png'),
  Skill(title: 'Java', imageAsset: 'assets/images/skills/java.png'),
  Skill(title: 'Python', imageAsset: 'assets/images/skills/python.png'),
  Skill(title: 'C++', imageAsset: 'assets/images/skills/cpp.png'),
  Skill(title: 'NGINX', imageAsset: 'assets/images/skills/nginx.png'),
  Skill(title: 'HTML', imageAsset: 'assets/images/skills/html.png'),
  Skill(title: 'CSS', imageAsset: 'assets/images/skills/css.png'),
  Skill(title: 'Laravel', imageAsset: 'assets/images/skills/laravel.png'),
  Skill(title: 'Rails', imageAsset: 'assets/images/skills/rails.png'),
  Skill(title: 'MongoDB', imageAsset: 'assets/images/skills/mongo.png'),
  Skill(title: 'Postgresql', imageAsset: 'assets/images/skills/postgre.png'),
  Skill(title: 'MySQL', imageAsset: 'assets/images/skills/mysql.png'),
  Skill(title: 'Git', imageAsset: 'assets/images/skills/git.png'),
  Skill(title: 'Trello', imageAsset: 'assets/images/skills/trello.png'),
  Skill(title: 'Slack', imageAsset: 'assets/images/skills/slack.png'),
  Skill(title: 'Asana', imageAsset: 'assets/images/skills/asana.png'),
];

const String enPrivacyPolicyText = '''
1. Data Collection and Usage
1.1. The Application will collect data related to users' preferences in decision-making processes on their devices. This data will be used to enhance user experience, improve the Application, and provide better services.

1.2. Users agree that the Application will not store their personal data in the cloud and that each data will remain on their respective devices.

2. Data Security
2.1. The Application pledges to keep users' personal data confidential. Appropriate technical and organizational measures will be taken to ensure data security.

2.2. The Application will not share or sell user data with third parties.

3. Advertisements
3.1. The Application may display advertisements to users to improve services and sustain the Application.

3.2. Advertisements may be provided by third-party advertising companies, and these companies will be responsible for their own data collection practices.

4. Children's Privacy
4.1. The Application aims not to intentionally collect personal data from children under the age of 13. It is essential for parents to monitor and approve their children's internet activities.

5. Analytics and Tracking Technologies
5.1. The Application may use analytics and similar tracking technologies to improve user experience, remember preferences, and identify users.

5.2. Users have the option to accept or reject analytics by changing mobile application settings. However, rejecting analytics may prevent access to certain features of the Application.

6. Links to Other Websites
6.1. The Application may contain links to third-party websites. These links enable users to access websites outside the Application. However, the privacy policies and content of these linked websites are not under the control of the Application.

6.2. Users are advised to read the privacy policies of external websites when redirected to them from the Application.

7. Changes and Updates
7.1. The Application may update and modify the privacy policy from time to time. Changes will be effective upon publication within the Application.

7.2. Users should regularly review the updated privacy policy, and continuing to use the Application will signify their acceptance of the updated policy.

8. Questions and Communication
8.1. Users can use the communication channels designated by the Application for any questions or concerns related to the privacy policy.

This privacy policy was accepted by users on 06 August 2023.
''';

const String enEasyingPrivacyPolicyText = '''
  Privacy Policy
  This Privacy Policy governs the manner in which our application collects, uses, maintains, and discloses information collected from users (each, a "User") of the Easying application.
  Personal Identification Information:
  We do not collect any personal identification information from Users of our app. Users may visit our app anonymously. We only collect non-personal identification information, such as device type and operating system version, for the purpose of improving user experience.
  Non-personal Identification Information:
  We may collect non-personal identification information about Users whenever they interact with our app. Non-personal identification information may include the device name, the type of device, and technical information about Users' means of connection to our app.
  How We Use Collected Information:
  We may collect and use Users' non-personal information for the following purposes:
    - To improve customer service: Information you provide helps us respond to your customer service requests more efficiently.'),
    - To personalize user experience: We may use information in the aggregate to understand how our Users as a group use the services and resources provided in our app.'),
    - To improve our app: We may use feedback you provide to improve our products and services.'),
  Sharing Your Personal Information:
  We do not sell, trade, or rent Users' personal identification information to others.
  Changes to This Privacy Policy:
  We may update this Privacy Policy at any time. Users are encouraged to frequently check this page for any changes. You acknowledge and agree that it is your responsibility to review this Privacy Policy periodically and become aware of modifications.
  Your Acceptance of These Terms:
  By using this app, you signify your acceptance of this policy. If you do not agree to this policy, please do not use our app. Your continued use of the app following the posting of changes to this policy will be deemed your acceptance of those changes.
  Contacting Us:
  If you have any questions about this Privacy Policy, the practices of this app, or your dealings with this app, please contact us at karlihasann@gmail.com.
  This document was last updated on 12.04.2024
''';
