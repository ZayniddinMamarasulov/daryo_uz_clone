class Articles {
  Name source;
  String title;
  String? description;
  String publishedAt;
  String url;
  String? urlToImage;

  final defaultImagelink = 'https://s.daryo.uz/wp-content/uploads/2021/11/1-71.jpg';

  Articles({
    required this.source,
    required this.title,
    required this.description,
    required this.publishedAt,
    required this.url,
    required this.urlToImage,
  });

  factory Articles.fromJson(Map<String, dynamic> map) {
    return Articles(
      title: map["title"],
      description: map["description"],
      source: Name.fromJson(map['source']),
      publishedAt: map["publishedAt"],
      url: map['url'],
      urlToImage: map["urlToImage"],
      // if (map["image"] != null) title = (map["image"] as String?);
    );
  }

//   Food(
//     title: 'Tailandda rahbaridan norozi ayol neft omborini yoqib yubordi',
//     content:
//         "Kuzatuv kameralari omborga o‘t qo‘yilgan vaziyatni qayd etgan. Kompaniyaning omborga mas’ul bo‘linmasiga rahbarlik qilgan Enn Sriya aybiga iqror bo‘lib politsiyaga kelgan va ushbu harakat qasos olish uchun qilinganini aytgan. Ayolning so‘zlariga ko‘ra uning boshlig‘i doimiy ravishda unga tanbeh berib kelgan.",
//     hour: '09:50',
//     date: '12 dekabr 2021',
//     imageUrl: "https://s.daryo.uz/wp-content/uploads/2021/12/2691192.jpg",
//     watchCount: 520,
//   ),
//
//   Food(
//       title: "Fred Lambert",
//    // content: "Tesla loses Roadster chief engineer behind several important vehicle programs to Ford",
//    // : "Tesla has lost its executive in charge of new vehicle programs who has been in charge of several important engineering programs, and now, he is going to work on Ford’s electric vehicles.\n more…\nThe post Tesla loses Roadster chief engineer behind several impor…",
//     //url: "https://electrek.co/2022/02/10/tesla-loses-roadster-chief-engineer-behind-several-important-vehicle-programs-alan-clarke-ford/",
//       imageUrl: "https://i0.wp.com/electrek.co/wp-content/uploads/sites/3/2019/12/Tesla-family-Semi-Roadster-photo-e1577564694993.jpg?resize=1200%2C628&quality=82&strip=all&ssl=1",
//       date: "2022-02-10T17:11:16Z",
//       content: "Tesla has lost its executive in charge of new vehicle programs who has been in charge of several important engineering programs, and now, he is going to work on Ford’s electric vehicles.\r\nAlan Clarke… [+2558 chars]"
// ),
//   News("source": {
//       "id": "the-hill",
//       "name": "The Hill"
//     },
//     "author": "Caroline Vakil",
//     "title": "​​Convoy protests disrupt auto industry on US-Canada border",
//     "description": "Convoy protests demonstrating against COVID-19 protocol have already started to disrupt the auto industry just days into a blockade of trucks on the Ambassador Bridge that connects Windsor, Ontario, and Detroit, The...",
//     "url": "https://thehill.com/policy/transportation/593698-convoy-protests-disrupt-auto-industry-on-us-canada-border",
//     "urlToImage": "https://thehill.com/sites/default/files/canada_truckers_protest_ap_020722.jpg",
//     "publishedAt": "2022-02-10T17:07:02Z",
//     "content": "Convoy protests demonstrating against COVID-19 protocol have already started to disrupt the auto industry just days into a blockade of trucks on the Ambassador Bridge that connects Windsor, Ontario, … [+2878 chars]"
// ),
//   News("source": {
//       "id": null,
//       "name": "Instapundit.com"
//     },
//     "author": "Glenn Reynolds",
//     "title": "GOOD FOR THE POLITICAL/MANAGERIAL CLASS BUT NOT FOR AMERICA: Joel Kotkin: The Zaibatsu-ization of …",
//     "description": "GOOD FOR THE POLITICAL/MANAGERIAL CLASS BUT NOT FOR AMERICA: Joel Kotkin: The Zaibatsu-ization of America. Today we see the rise of a few companies, who have moved into virtually every aspect of our economy. The nerds of Silicon Valley are no longer just inte…",
//     "url": "https://instapundit.com/502587/",
//     "urlToImage": null,
//     "publishedAt": "2022-02-10T17:05:11Z",
//     "content": "Today we see the rise of a few companies, who have moved into virtually every aspect of our economy. The nerds of Silicon Valley are no longer just interested in gadgets to make life better but are s… [+1201 chars]"
// ),
//   News("source": {
//       "id": null,
//       "name": "Detroit Free Press"
//     },
//     "author": "Eric D. Lawrence, Detroit Free Press",
//     "title": "Kia tops J.D. Power dependability study, Buick takes No. 2 spot",
//     "description": "Kia replaced Lexus at the top of this year's annual J.D. Power Dependability Study.",
//     "url": "https://www.freep.com/story/money/cars/2022/02/10/jd-power-dependability-study-kia-buick-gm/6735824001/",
//     "urlToImage": "https://s.yimg.com/ny/api/res/1.2/AANChPoaSaB11VmmQ1o_TA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04NDY-/https://s.yimg.com/uu/api/res/1.2/sgL9bXgHodMFj1kZn1yS1Q--~B/aD0xNjkxO3c9MjQwMDthcHBpZD15dGFjaHlvbg--/https://media.zenfs.com/en/detroit-free-press/44123f90d31207dc2d0658bdcca83a8e",
//     "publishedAt": "2022-02-10T17:00:17Z",
//     "content": "South Korean brands took three of the top five spots in J.D. Powers 2022 U.S. Vehicle Dependability Study released Thursday, with Kia at No. 1, but one U.S. brand, Buick, following closely behind at … [+3284 chars]"
// ),
//   News("source": {
//       "id": null,
//       "name": "Autoblog"
//     },
//     "author": "Jeremy Korzeniewski",
//     "title": "Kia leads J.D. Power's Vehicle Dependability Study for 2022",
//     "description": "Filed under:\nGreen,Acura,Buick,Dodge,Genesis,Hyundai,Kia,Land Rover,Lexus,Porsche,RAM,Volvo,Car Buying,Used Car Buying,Ownership,Technology,Infotainment\n\nContinue reading Kia leads J.D. Power's Vehicle Dependability Study for 2022\n\nKia leads J.D. Power's Vehi…",
//     "url": "https://www.autoblog.com/article/vehicle-dependability-study-jd-power-results/",
//     "urlToImage": "https://o.aolcdn.com/images/dims3/GLOB/legacy_thumbnail/1062x597/format/jpg/quality/100/https://s.aolcdn.com/os/ab/_cms/2022/02/10113037/2022-Kia-Sorento-SX-Prestige1.jpg",
//     "publishedAt": "2022-02-10T17:00:00Z",
//     "content": "For the first year ever, Kia leads J.D. Power's annual Vehicle Dependability Study with a score of 145 problems per 100 vehicles. Buick (147) and Hyundai (148) round out the top three. The highest pr… [+3286 chars]"
// ),
//   News("source": {
//       "id": null,
//       "name": "Forbes"
//     },
//     "author": "Asheem Chandna, Contributor, \n Asheem Chandna, Contributor\n https://www.forbes.com/sites/asheemchandna/",
//     "title": "The Long Game In Cybersecurity",
//     "description": "Cybersecurity has never been more central and more complex. No one can afford to fall behind. To understand how things might play out in the coming years, Greylock partner Asheem Chandna spoke with four cybersecurity experts, each of whom brings a different l…",
//     "url": "https://www.forbes.com/sites/asheemchandna/2022/02/10/the-long-game-in-cybersecurity/",
//     "urlToImage": "https://imageio.forbes.com/specials-images/imageserve/62045f1cc436ddcc744354fc/0x0.jpg?format=jpg&width=1200&fit=bounds",
//     "publishedAt": "2022-02-10T17:00:00Z",
//     "content": "Cybersecurity has never been more central and more complex. No one can afford to fall behind. Four ... [+] experts weigh in on the future.\r\ngetty\r\nI have followed the evolution of cybersecurity for a… [+10732 chars]"
// ),
//   News("source": {
//       "id": null,
//       "name": "Creative Bloq"
//     },
//     "author": "Daniel Piper",
//     "title": "Tesla throws shade at Apple design (and it might have a point)",
//     "description": "Is the iPhone maker running out of ideas?",
//     "url": "https://www.creativebloq.com/news/tesla-apple-design",
//     "urlToImage": "https://cdn.mos.cms.futurecdn.net/AMDg3g65bH4GZoNBcXCgEY-1200-80.jpg",
//     "publishedAt": "2022-02-10T16:59:01Z",
//     "content": "If there's one brand known for the consistent quality of its design, it's Apple. But it's arguably been a while since the company brought out something actually new (we're on track for the 14th iPhon… [+2435 chars]"
// ),
//   News("source": {
//       "id": "ars-technica",
//       "name": "Ars Technica"
//     },
//     "author": "Tim De Chant",
//     "title": "Four fast chargers every 50 miles—US unveils EV infrastructure plan",
//     "description": "Nationwide EV charging network is moving forward quickly.",
//     "url": "https://arstechnica.com/cars/2022/02/four-fast-chargers-every-50-miles-us-unveils-ev-infrastructure-plan/",
//     "urlToImage": "https://cdn.arstechnica.net/wp-content/uploads/2019/06/Large-Electrify-America-Charging-Station-217-760x380.jpg",
//     "publishedAt": "2022-02-10T16:56:37Z",
//     "content": "Enlarge/ An Electrify America charging station.\r\n25 with 21 posters participating\r\nAbout five years from now, a common complaint about electric vehiclesrange anxietywill be a thing of the past across… [+4353 chars]"
// ),
//   News("source": {
//       "id": null,
//       "name": "Seeking Alpha"
//     },
//     "author": "Stephen Tobin",
//     "title": "LiDAR: Review Leading To Buy Innoviz Recommendation",
//     "description": "The LiDAR market for vehicles is forecast to grow from $1.5 Billion to more than $6 billion in the next few years. Learn more here.",
//     "url": "https://seekingalpha.com/article/4485872-lidar-review-leading-to-buy-innoviz-recommendation",
//     "urlToImage": "https://static.seekingalpha.com/cdn/s3/uploads/getty_images/1283792827/image_1283792827.jpg?io=getty-c-w750",
//     "publishedAt": "2022-02-10T16:53:25Z",
//     "content": "metamorworks/iStock via Getty Images\r\nIn this article, I provide a review of seven smaller companies hoping to sell LiDAR systems, most of them are tech start-ups, and all of them are small with a cu… [+18657 chars]"
// ),
//   News(
//     "source": {
//       "id": null,
//       "name": "Bitcoinist"
//     },
//     "author": "Best Owie",
//     "title": "Bitcoin Donations Are Aiding Ukraine In Fight Against Russia",
//     "description": "Bitcoin is helping to fund the Ukrainian fight against Russia. The conflict that has been on for a while has continued to rage on. This has led to a higher need for funds to aid in the fight. Volunteer organizations that provide the Ukrainian military with we…",
//     "url": "https://bitcoinist.com/bitcoin-donation-aiding-ukraine-fight-russia/",
//     "urlToImage": null,
//     "publishedAt": "2022-02-10T16:50:52Z",
//     "content": "Bitcoin is helping to fund the Ukrainian fight against Russia. The conflict that has been on for a while has continued to rage on. This has led to a higher need for funds to aid in the fight. Volunte… [+2909 chars]"
// ),
}

class Name {
  String name;

  Name({required this.name});

  factory Name.fromJson(Map<String, dynamic> map) {
    return Name(
      name: map['name'],
    );
  }
}
