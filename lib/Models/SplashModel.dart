class OnBoardingContent{
  String Image ;
  String Title;
   String Description;
OnBoardingContent({required this.Image,required this.Description,required this.Title});

List<OnBoardingContent> contents =[
  OnBoardingContent(
      Image:"assets/imeges/pexels-photo-2454533.jpeg" ,
      Description: "Pick Your food from our menu /n     Pick Your food from our menu",
      Title: "Select From our /n    Best Menu"),


  OnBoardingContent(
      Image: "assets/imeges/pexels-photo-756680.webp",
      Description: "You can pay cash on delivery/n   and card payment is available",
      Title: "Easy And online Payment"),

  OnBoardingContent(
      Image: "assets/imeges/pexels-photo-9328473.webp",
      Description: "Deliver Your Food at your doorStep",
      Title: "")
];

}