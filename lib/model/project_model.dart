class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  Project(this.name, this.description, this.image, this.link);
}

List<Project> projectList = [
  Project(
    'Community Business Application',
    'A dedicated Flutter app for the members of the International Union of Operating Engineers (IUOE) Local 94. The app allows union members and employees to easily track their work hours, view leave balances, check benefits, and access important policies and documents. It streamlines communication, reducing the need to frequently contact admins, offering a comprehensive and user-friendly platform for all work-related information.',
    'assets/images/IUOE.png',
    'https://github.com/1shabbirhussain/',
  ),
  Project(
    'E-Commerce Grocery Application',
    'A Flutter-based grocery store app where admins can list products and users can browse, add to cart, and purchase items. Includes full e-commerce functionality such as payment processing, order management, and a seamless shopping experience.',
    'assets/images/grocery.png',
    'https://github.com/1shabbirhussain/',
  ),
  Project(
      'Tickets Management System',
      'App for creating and managing tickets with detailed descriptions and images. Each ticket has a unique barcode, shown in a list view. Features include CRUD operations, sorting, filtering, and Firebase-based authentication, notifications, and real-time data with REST APIs.',
      'assets/images/ticket.png',
      'https://github.com/1shabbirhussain/'),
  Project(
      'Ecommerce Application Service Based',
      'A service-based e-commerce app, where users can log in as buyers or sellers, similar to OLX. Sellers can list services, and buyers can browse, book services for now or later, and make purchases. The app also features chat notifications for real-time communication, enhancing user experience. Implemented entirely on Firebase and REST APIs, it provides a seamless, scalable solution for service transactions and management.',
      'assets/images/TSS.png',
      'https://github.com/1shabbirhussain/'),
  // Project(
  //     'Flutter Music Streaming Application',
  //     'A Flutter music streaming application that allows users to play audio files from local storage. The app features a beautiful neumorphic UI design and provides a smooth user experience for browsing and playing music.',
  //     'assets/images/player.png',
  //     'https://github.com/Hamad-Anwar/Neumorphic-Music_Player-Flutter'),
  // Project(
  //     'Food Recipe App',
  //     'This repository contains a Flutter implementation of a Food Recipe app with a captivating introduction section and impressive animations. It also features a signup and signin page with animations, elegantly presented on a bottom sheet.',
  //     'assets/images/recipe.png',
  //     'https://github.com/Hamad-Anwar/Food-Recipe-App-Flutter'),
  // Project(
  //     'Task Sync Pro',
  //     'Welcome to the Beautiful Task Scheduler App repository! This Flutter-based task management application combines elegant design with a robust backend, ensuring a seamless and organized task management experience. From stunning UI to real-time synchronization, this app has you covered.',
  //     'assets/images/task.png',
  //     'https://github.com/Hamad-Anwar/Task-Sync-Pro-Flutter'),
  // Project(
  //     'Flutter Chat Application with Firebase',
  //     'Welcome to our innovative Flutter chat application! This feature-rich messaging platform allows users to connect and communicate seamlessly through text and images. The app is built using Flutter for the frontend and integrates with Firebase for backend services, including authentication, real-time database, and storage.',
  //     'assets/images/chat.png',
  //     'https://github.com/Hamad-Anwar/Messenger-App-Backend-Firebase'),
  // Project(
  //     'Doctor Appointment Application',
  //     'Introducing the extraordinary "Doctor Appointment System" - a state-of-the-art Flutter UI application that redefines healthcare accessibility and efficiency. Seamlessly crafted, this app empowers users to effortlessly select doctors based on categories, engage in smooth messaging, and access detailed profiles.',
  //     'assets/images/doctor.png',
  //     'https://github.com/Hamad-Anwar/Doctor-Appointment-Application-UI'),
];
