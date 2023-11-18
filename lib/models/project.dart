class Project {
  final String title;
  final String description;
  final String logo;
  final String appPreview;
  final String? appStoreLink;

  Project(
      {required this.title,
      required this.description,
      required this.logo,
      required this.appPreview,
      this.appStoreLink});
}
