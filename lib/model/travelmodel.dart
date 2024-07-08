// ignore_for_file: non_constant_identifier_names, file_names, camel_case_types

class travelmodel {
  String name;
  String Location;
  String image;
  String Distance;
  String Temperature;
  String Rating;
  String Description;
  String Price;

  travelmodel(
      {required this.name,
      required this.Location,
      required this.image,
      required this.Distance,
      required this.Temperature,
      required this.Rating,
      required this.Description,
      required this.Price});
}

List<travelmodel> Places = [
  travelmodel(
      name: "Iran",
      Location: "Asia",
      image: "assets/images/Iran.jpg",
      Distance: "5000 KM",
      Temperature: "10°",
      Rating: "10",
      Description:
          "Iran, also known as Persia and officially the Islamic Republic of Iran,is a country in West Asia. It is bordered by Iraq to the west and Turkey to the northwest, Azerbaijan, Armenia, the Caspian Sea and Turkmenistan to the north, Afghanistan to the east, Pakistan to the southeast, the Gulf of Oman and the Persian Gulf to the south. With over 90 million inhabitants in an area of 1.648 million square kilometers (0.64 million square miles), Iran ranks 17th in the world in both geographic size and population. Its capital and largest city is Tehran, with around 16 million people in its metropolitan area; other major urban centres include Mashhad, Isfahan, Karaj, and Shiraz.",
      Price: "5000\$"),
  travelmodel(
      name: "Italy",
      Location: "Europe",
      image: "assets/images/Italy.jpg",
      Distance: "3000 KM",
      Temperature: "7°",
      Rating: "8.5",
      Description:
          "Italy (Italian: Italia, Italian: [iˈtaːlja] ⓘ), officially the Italian Republic (Italian: Repubblica Italiana, Italian: [reˈpubblika itaˈljaːna]), is a country in Southern and Western Europe. Located in the middle of the Mediterranean Sea, it consists of a peninsula surrounded by the Alps and several islands, notably Sicily and Sardinia.[16] Italy shares its borders with France, Switzerland, Austria, Slovenia and two enclaves: Vatican City and San Marino. Its two territorial exclaves include Campione (Switzerland) and Pelagie Islands (an archipelago in the African Plate). It is the tenth-largest country by land area in the European continent covering an area of 301,340 km2 (116,350 sq mi),[3] and the third-most populous member state of the European Union with a population of nearly 60 million. Its capital and largest city is Rome.",
      Price: "6000\$"),
  travelmodel(
      name: "Switzerland",
      Location: "Europe",
      image: "assets/images/Switzerland.jpg",
      Distance: "1500 KM",
      Temperature: "-4°",
      Rating: "9",
      Description:
          "Switzerland, officially the Swiss Confederation, is a landlocked country located in west-central Europe. It is bordered by Italy to the south, France to the west, Germany to the north and Austria and Liechtenstein to the east. Switzerland is geographically divided among the Swiss Plateau, the Alps and the Jura; the Alps occupy the greater part of the territory, whereas most of the country's population of 9 million are concentrated on the plateau, which hosts the largest cities and economic centres, including Zürich, Geneva and Basel.",
      Price: "9000\$"),
  travelmodel(
      name: "US",
      Location: "America",
      image: "assets/images/America.jpg",
      Distance: "2000 KM",
      Temperature: "0°",
      Rating: "9.5",
      Description:
          "The United States of America (USA or U.S.A.), commonly known as the United States (US or U.S.) or America, is a country primarily located in North America, between Canada and Mexico. It is a federation of 50 states, a federal capital district (Washington, D.C.), and 326 Indian reservations. Outside the union of states, it asserts sovereignty over five major unincorporated island territories and various uninhabited islands. The country has the world's third-largest land area, largest maritime exclusive economic zone, and the third-largest population, exceeding 334 million.",
      Price: "20000\$"),
];
