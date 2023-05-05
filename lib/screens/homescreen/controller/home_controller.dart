import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList planetNameList = ["Earth", "Mars", "Mercury", "Moon", "Neptune"].obs;
  RxList planetImageList = [
    "assets/images/earth.png",
    "assets/images/mars.png",
    "assets/images/mercury.png",
    "assets/images/moon.png",
    "assets/images/neptune.png"
  ].obs;
  RxList planetDisSunList = [
    "150.79 million km",
    "250.15 million km",
    "67.166 million km",
    "93 million miles",
    "4.5 billion km"
  ].obs;
  RxList planetDisEarthList = [
    "",
    "264.61 million km",
    "83.797 million km",
    "384,400 km",
    "4.5767 billion km"
  ].obs;
  RxList planetGravList =
      ["9.807 m/s²", "3.721 m/s²", "3.7 m/s²", "1.62 m/s²", "11.15 m/s²"].obs;
  RxList aboutList = [
    "Our home planet Earth is a rocky, terrestrial planet. "
        "It has a solid and active surface with mountains, valleys, canyons, plains and so much more. "
        "Earth is special because it is an ocean planet. "
        "Water covers 70% of Earth's surface.Earth's atmosphere is made mostly of nitrogen and has plenty of oxygen for us to breathe. "
        "The atmosphere also protects us from incoming meteoroids, "
        "most of which break up before they can hit the surface.",
    "Mars is the fourth planet from the Sun – a dusty, cold, desert world with a very thin atmosphere. "
        "Mars is also a dynamic planet with seasons, polar ice caps, canyons, extinct volcanoes, and evidence that it was even more active in the past. "
        "Mars is one of the most explored bodies in our solar system, and it's the only planet where we've sent rovers to roam the alien landscape.",
    "Mercury is the smallest planet in our solar system. "
        "It’s a little bigger than Earth’s Moon. "
        "It is the closest planet to the Sun, but it’s actually not the hottest. "
        "Venus is hotter.Along with Venus,Earth,and Mars, Mercury is one of the rocky planets."
        "It has a solid surface that is covered with craters like our Moon.It has a thin atmosphere,and it doesn’t have any moons."
        "Mercury likesto keep things simple.",
    "The brightest and largest object in our night sky, the Moon makes Earth a more livable planet by moderating our home planet's wobble on its axis, "
        "leading to a relatively stable climate. It also causes tides, creating a rhythm that has guided humans for thousands of years. "
        "The Moon was likely formed after a Mars-sized body collided with Earth. "
        "Earth's Moon is the fifth largest of the 200+ moons orbiting planets in our solar system."
        "Earth's only natural satellite is simply called the Moonbecause people didn't know other moons existed until Galileo Galilei discovered "
        "four moons orbiting Jupiter in 1610.",
    "Neptune is one of two ice giants in the outer solar system (the other is Uranus). "
        "Most (80% or more) of the planet's mass is made up of a hot dense fluid of ''icy'' materials – water, methane, and ammonia – above a small, "
        "rocky core. Of the giant planets, Neptune is the densest."
  ].obs;
}
