class OnBoarding {
  String image;
  String title;
  String description;

  OnBoarding({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<OnBoarding> contents = [
  OnBoarding(
      title: 'تنوع غذایی',
      image: 'assets/images/OrderFood.png',
      description:
          "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ  و با استفاده از طراحان گرافیک است  چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است "),
  OnBoarding(
      title: 'جستجو برای یک مکان',
      image: 'assets/images/LocationApp.png',
      description:
          "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ  و با استفاده از طراحان گرافیک است  چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است "),
  OnBoarding(
      title: 'حمل و نقل سریع',
      image: 'assets/images/DeliveryFood.png',
      description:
          "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ  و با استفاده از طراحان گرافیک است  چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است "),
];
