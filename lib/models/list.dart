import 'package:social_media_demo_app/models/category.dart';
import 'package:social_media_demo_app/models/post.dart';

List<Category> discoverCategories = [
  Category(
      id: 0,
      categoryName: 'Trending',
      categoryImage: 'assets/images/categories/trending.png',
      categoryValue: '4.5'),
  Category(
      id: 1,
      categoryName: 'Hot',
      categoryImage: 'assets/images/categories/hot.png',
      categoryValue: '4.5'),
  Category(
      id: 2,
      categoryName: 'Tech',
      categoryImage: 'assets/images/categories/tech.png',
      categoryValue: '4.5'),
  Category(
      id: 3,
      categoryName: 'Travel',
      categoryImage: 'assets/images/categories/travel.png',
      categoryValue: '4.5'),
  Category(
      id: 4,
      categoryName: 'Sport',
      categoryImage: 'assets/images/categories/sports.png',
      categoryValue: '4.5'),
];

//Demo List
List<Post> myPostList = [
  Post(
    id: 0,
    userName: 'Alexio Morales',
    postText:
        'Lord, make me an instrument of thy peace. Where there is hatred, let me sow love.',
    postUrl: 'assets/images/image5.png',
  ),
  Post(
    id: 1,
    userName: 'Ida Niska',
    postText:
        'When one door of happiness closes, another opens, but often we look so long at the closed door that we do not see the one that has been opened for us.',
    postUrl: 'assets/images/image2.png',
  ),
  Post(
    id: 2,
    userName: 'Maxime Barbosa',
    postText:
        'Never bend your head. Always hold it high. Look the world straight in the eye',
    postUrl: 'assets/images/image4.png',
  ),
  Post(
    id: 3,
    userName: 'Suhayb Davis',
    postText: 'Be yourself; everyone else is already taken.',
    postUrl: 'assets/images/photo4.png',
  ),
  Post(
    id: 4,
    userName: 'Finn Kirby',
    postText:
        'You know you\'re in love when you can\'t fall asleep because reality is finally better than your dreams',
    postUrl: 'assets/images/image7.png',
  ),
  Post(
    id: 5,
    userName: 'Ammaar Hopper',
    postText: 'So many books, so little time.',
    postUrl: 'assets/images/image8.png',
  ),
  Post(
    id: 6,
    userName: 'Catrin Stevenson',
    postText:
        'Success is not final, failure is not fatal: it is the courage to continue that counts.',
    postUrl: 'assets/images/image9.png',
  ),
  Post(
    id: 7,
    userName: 'Suraj Cross',
    postText:
        'When I stand before God at the end of my life, I would hope that I would not have a single bit of talent left and could say, I used everything you gave me.',
    postUrl: 'assets/images/image10.png',
  ),
  Post(
    id: 8,
    userName: 'Nicole Dougherty',
    postText:
        'Believe in yourself, take on your challenges, dig deep within yourself to conquer fears. Never let anyone bring you down. You got to keep going.',
    postUrl: 'assets/images/image11.png',
  ),
  Post(
    id: 9,
    userName: 'Regan Goulding',
    postText: 'When you have a dream, you\'ve got to grab it and never let go.',
    postUrl: 'assets/images/image12.png',
  ),
];
