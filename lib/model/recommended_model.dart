class RecommendedModel {
  String name;
  String image;
  String color;
  String title;
  List<String> images;
  List<String> text;
  List<String> description;
  List<String> besttime;
  RecommendedModel(this.name, this.image, this.color, this.title, this.images,
      this.text, this.description, this.besttime);
}

var recommendationsData = [
  RecommendedModel("test1", "assets/download.jpeg", "0xffB1B2FF", "Beach", [
    "assets/island.jpeg",
    "assets/lake.jpeg",
    "assets/lakes.jpeg"
  ], [
    "Mahabaleshwar",
    "Panchgani",
    " Bhandardara"
  ], [
    "A tourist attraction is a place of interest that tourists visit, typically for its inherent or an exhibited natural or cultural value, historical significance, natural or built beauty, offering leisure and amusement.",
    "Grand Canyon, Arizona, USA, a natural wonder famous for its deep views.The Serengeti, Africa, is one of the largest and most famous national parks in the world.A tourist attraction is a place of interest that tourists visit, typically for its inherent or an exhibited natural",
    "The Serengeti, Africa, is one of the largest and most famous national parks in the world.A tourist attraction is a place of interest that tourists visit, typically for its inherent or an exhibited natural.Africa, is one of the largest and most famous national parks in the world.."
  ], [
    " February to March, September to December",
    "February to March, September to December",
    "February to March, September to December"
  ]),
  RecommendedModel(
      "test2", "assets/dark forest.jpeg", "0xffA0D995", "Mountain", [
    "assets/mountain.jpeg",
    "assets/mountains.jpeg",
    "assets/greenry.jpeg"
  ], [
    "Leh Ladakh",
    "Andaman",
    " Lakshadweep"
  ], [
    "Lake Sorapiss in the Dolomites, Italy - a natural attraction that can only be reached on foot.Widely considered to be the best place to visit in India among youths, Goa is the epitome of tourism in India with one of the best beaches, food and nightlife. It is getting popular among foreigners as well.",
    "Redwood National and State Parks in California, USA.Africa, is one of the largest and most famous national parks in the world.",
    "Great Barrier Reef in Australia, an endangered natural wonder.With its pristine beaches and breathtaking landscapes, Gokarna is a Hindu pilgrimage town in Karnataka and a newly found hub for beach lovers and hippies."
  ], [
    "February to March, November to December",
    "February to March, September to December",
    "February to March, September to December"
  ]),
  RecommendedModel(
      "test3", "assets/flowerland.jpeg", "0xffFFB3B3", "Dream Land", [
    "assets/flwerland.jpeg",
    "assets/dark forest.jpeg",
    "assets/mountain.jpeg"
  ], [
    "Kasauli",
    "Srinagari",
    "Meghalaya"
  ], [
    "The bay area near Rio de Janeiro, Brazil – ocean, beaches and steep mountains with jungle.With its pristine beaches and breathtaking landscapes, Gokarna is a Hindu pilgrimage town in Karnataka and a newly found hub for beach lovers and hippies.",
    "Acropolis Museum, with finds and objects from the Acropolis of Athens.The idyllic hill station Munnar - famous for its tea estates, exotic lush greenery and craggy peaks, is located in the Western Ghats and is one of the best places to visit in Kerala.",
    "Scrovegni Chapel, with works of art by Giotto di Bondone, the pioneer of the Italian Renaissance.With its pristine beaches and breathtaking landscapes, Gokarna is a Hindu pilgrimage town in Karnataka and a newly found hub for beach lovers and hippies."
  ], [
    "February to March, September to December",
    "February to March, September to December",
    "February to March, September to December"
  ]),
  RecommendedModel("test4", "assets/river.jpeg", "0xffC0DEFF", "Lake", [
    "assets/snow.jpeg",
    "assets/island.jpeg",
    "assets/waterfalls.jpeg"
  ], [
    "Himachal Pradesh  ",
    "Munsiyari",
    " Bavaria"
  ], [
    "Jaw-dropping locales, mesmerising sunrises, the untouched beauty of the hills, the old-world charm of the past, and the welcoming smiles of the local people all add up to make Darjeeling one of the most beautiful hill stations in Eastern part of India. Spread over a steep mountain ridge, nestled amidst acres of lush green tea plantations, Darjeeling stands at the height of 2,050 meters above sea level, thus boasting of cool climes all year round. This hill station is the perfect getaway for a romantic honeymoon and is just around 700 kilometres away from Kolkata.",
    "Nestled in between the snow-capped slopes of the Pir Panjal and the Dhauladhar ranges, Manali is one of the most popular hill stations in the country. With jaw-dropping views, lush green forests, sprawling meadows carpeted with flowers, gushing blue streams, a perpetual fairy-tale like mist lingering in the air, and a persistent fragrance of pines and freshness -  Manali has been blessed with extraordinary scenic beauty. From museums to temples, from quaint little hippie villages to bustling upscale streets, river adventures to trekking trails, Manali has ever a reason to be the tourist magnet it is, all year round.",
    "Located amidst imposing mountains in Karnataka with a perpetually misty landscape, Coorg is the place to be for all nature lovers.  This popular coffee producing hill station is not only popular for its beautiful green hills and the streams cutting right through them. It also stands as a popular destination because of its culture and people. The Kodavas, a local clan specialising in martial arts, are especially notable for their keen hospitality."
  ], [
    "February to March, September to December",
    "February to March, September to December",
    "February to March, September to December"
  ]),
  RecommendedModel("test5", "assets/mountain.jpeg", "0xffFAFFAF", "Forest", [
    "assets/dark forest.jpeg",
    "assets/mountains.jpeg",
    "assets/waterfallsgreenry.jpeg"
  ], [
    "Manali",
    "Lonavala",
    " Mussoorie"
  ], [
    "Udaipur, also known as the City of Lakes, is the crown jewel of the state of Rajasthan. It is surrounded by the beautiful Aravalli Hills in all directions, making this city as lovely as it is. This 'Venice of the East' has an abundance of natural beauty, mesmerising temples and breathtaking architecture which makes it a must-visit destination in India",
    "Lagoons of crystal clear water and scenic beaches topped with a little bit of history make Andaman and Nicobar one of the most perfect choices for an enjoyable, laid-back holiday where you can go on long treks, laze around in the backwaters of the island, or if you're feeling a little more adventurous, even go for a bit of deep sea diving.",
    "A city as old as time itself. A city that has stayed in place and watched as the world has turned and the tides have changed. A city that has stood the test of time for thousands of years. In the words of Mark Twain, Older than history, older than tradition, older even than legend, And looks twice as old as all of them put together. Varanasi, the city that is more than just the spiritual capital of India."
  ], [
    "February to March, September to December",
    "February to March, September to December",
    "Buses, Train, Aeroplane, Ship"
  ]),
  RecommendedModel("test6", "assets/snow.jpeg", "0xffFFBDE6", "WaterFall", [
    "assets/river.jpeg",
    "assets/ocean.jpeg",
    "assets/lakes.jpeg"
  ], [
    "Berchtesgaden",
    "Ushuaia  ",
    " Mahadeo"
  ], [
    "Widely considered to be the best place to visit in India among youths, Goa is the epitome of tourism in India with one of the best beaches, food and nightlife. It is getting popular among foreigners as well. When you think of Goa, you think of sandy beaches, amazing parties, beautiful little villages, delicious food, and a magical holiday experience. ",
    "The idyllic hill station Munnar - famous for its tea estates, exotic lush greenery and craggy peaks, is located in the Western Ghats and is one of the best places to visit in Kerala. It serves as the commercial centre for some of the world's largest tea estates.",
    "With its pristine beaches and breathtaking landscapes, Gokarna is a Hindu pilgrimage town in Karnataka and a newly found hub for beach lovers and hippies.Literally meaning a 'hundred thousand islands', Lakshadweep has few of the most beautiful and exotic islands and beaches of India."
  ], [
    "Buses, Train, Aeroplane, Ship",
    "Buses, Train, Aeroplane, Ship",
    "Buses, Train, Aeroplane, Ship"
  ]),
];
