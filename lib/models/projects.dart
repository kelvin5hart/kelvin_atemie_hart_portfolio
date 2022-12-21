class Projects {
  String imageString;
  String projectName;
  String gitlink;
  String playStoreLink;
  String appStoreLink;
  String typeOfProject;
  String projectDescription;

  Projects(
      {required this.imageString,
      required this.projectName,
      this.gitlink = "",
      this.appStoreLink = "",
      this.playStoreLink = "", required this.typeOfProject, required this.projectDescription});
}
