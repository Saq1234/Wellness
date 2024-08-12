import 'dart:ui';

class ConsultModel{
  String? image;
  String? name;
  String? title;
  String? subtitle;
  String? famous;
  String? fees;
  String? book;
  String? rec;
  Color? recColor;

  ConsultModel(this.image,this.name,this.title,this.subtitle,this.famous,this.book,this.fees,this.rec,this.recColor);

}

List<ConsultModel>consultlist=[
  ConsultModel("assets/images/t1.jpg", "Manish Saxena", "General fitness trainer", "6 years of expirence", "fitness wellness", "Book a Session", "₹500/","Recomended for you",Color(0xff663399)),
  ConsultModel("assets/images/t2.jpeg", "Shreya Sharma", "Personal trainer", "4 years of expirence", "fitness yoga", "Book a Session", "₹350/","",Color(0xff101010)),
  ConsultModel("assets/images/t3.jpg", " K.Sharma", "General fitness trainer", "2 years of expirence", "fitness wellness", "Book a Session", "₹500/","",Color(0xff101010)),
  ConsultModel("assets/images/t4.jpg", "Rahul", "General fitness trainer", "3 years of expirence", "fitness wellness", "Book a Session", "₹400/","",Color(0xff101010)),
];
