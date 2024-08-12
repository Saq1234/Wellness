class SpacesModel{
  String? image;
  String? name;
  String? hour;
  int? value1;
  int? value2;
  String? valuetext1;
  String? valuetext2;
  SpacesModel(this.image,this.name,this.hour,this.value1,this.value2,
      this.valuetext1,this.valuetext2);
}

List<SpacesModel> spacemodellist=[

  SpacesModel("assets/images/ms.png", "MS Dhoni", "10hr", 20, 100,
      "streak .", "coins"),
  SpacesModel("assets/images/sachin.png", "Sachin", "10hr", 15, 100,
      "streak .", "coins"),
  SpacesModel("assets/images/kohli.png", "Virat Kohli", "15hr", 10, 100,
      "streak .", "coins"),
  SpacesModel("assets/images/irfan.png", "Irfan Pathan", "8hr", 17, 60,
      "streak .", "coins"),
];