import 'package:flutter/material.dart';
import 'models/category.dart';
import 'models/meal.dart';

const DATA = [
  Category(
    id: 'c1',
    title: 'Appetizers',
    color: Colors.deepPurple,
  ),
  Category(
    id: 'c2',
    title: 'Main dishes',
    color: Colors.purple,
  ),
  Category(
    id: 'c3',
    title: 'Kids meals',
    color: Colors.purpleAccent,
  ),
  Category(
    id: 'c4',
    title: 'Desserts',
    color: Colors.pinkAccent,
  ),
  Category(
    id: 'c5',
    title: 'Drinks',
    color: Colors.pink,
  ),
];

List<Meal> MEALS = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'Beef Carpaccio',
    imageUrl:
    'https://eglos.pl/img/artykuly/31282_carpaccio-wolowe_1.jpg',
    price: 47,
    ingredients: [
      'Beef meat',
      'Parmezan',
      'Truffle oil',
      'Cherry tomatoes',
      'Salt & pepper',
    ],
    isVegetarian: false,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'Shrimp tempura',
    imageUrl:
    'https://bi.im-g.pl/im/2d/b3/17/z24853293Q,Krewetki-w-tempurze-to-doskonala-propozycja-zarown.jpg',
    price: 45,
    ingredients: [
      'Shrimps',
      'Tempura',
      'Rugula lettuce',
      'Spicy sauce',
      'Mayo sauce',
    ],
    isVegetarian: true,
  ),

  Meal(
    id: 'm3',
    categories: [
      'c1',
    ],
    title: 'Breaded camembert cheese',
    imageUrl:
    'https://szefpoleca.pl/wp-content/uploads/2022/06/camembert-panierowany-900x575.webp',
    price: 45,
    ingredients: [
      'Camemebert cheese',
      'Breadcrumbs',
      'Cranberry sauce',
      'Cherry tomatoes',
      'Tatar sauce',
    ],
    isVegetarian: true,
  ),

  Meal(
    id: 'm4',
    categories: [
      'c1',
    ],
    title: 'Guacamole',
    imageUrl:
    'https://kuchnialidla.pl/img/PL/960x540/ee213c5e65b7-bedb605abaef-Guacamole_KW10_2017_Karol_1250x700.jpg',
    price: 39,
    ingredients: [
      'Avocado',
      'Lime',
      'Coriander',
      'Tomatoes',
      'Nachos',
      'Salt & Pepper',
      'Chilli',
    ],
    isVegetarian: true,
  ),

  Meal(
    id: 'm5',
    categories: [
      'c2'
    ],
    title: 'Beef roulade',
    imageUrl:
    'https://zamkowymlyn.pl/wp-content/uploads/2022/04/opolska-rolada-03-1024x768.jpg',
    price: 52,
    ingredients: [
      'Beef',
      'Dumplings',
      'Red cabbage',
      'Meat sauce',
      'Parsley',
    ],
    isVegetarian: false,
  ),

  Meal(
    id: 'm6',
    categories: [
      'c3'
    ],
    title: 'Chicken soup',
    imageUrl:
    'https://szefowakuchni.pl/wp-content/uploads/2023/03/image_6487327-1.jpg',
    price: 12,
    ingredients: [
      'Vegetarian broth',
      'Noodles',
      'Carrot',
      'Salt & Pepper',
      'Parsley',
    ],
    isVegetarian: true,
  ),

  Meal(
    id: 'm7',
    categories: [
      'c4'
    ],
    title: 'Ice cream cup with fruits',
    imageUrl:
    'https://polki.pl/foto/4_3_LARGE/jak-zrobic-pucharek-lodowy-z-owocami-2405951.jpg',
    price: 22,
    ingredients: [
      'Vanilla ice cream',
      'Chocolate ice cream',
      'Strawberries',
      'Blueberrier',
      'Raspberries',
      'Strawberry sauce',
      'Orange slices',
    ],
    isVegetarian: true,
  ),

  Meal(
    id: 'm8',
    categories: [
      'c5',
    ],
    title: 'Lemonade',
    imageUrl:
    'https://static.fajnegotowanie.pl/media/uploads/media_image/original/przepis/6555/lemoniada-cytrynowa.jpg',
    price: 17,
    ingredients: [
      'Sparkling water',
      'Lemon juice',
      'Sugar syrup',
      'Slices of lemon and orange'
      'Ice cubes',
    ],
    isVegetarian: true,
  ),

  Meal(
    id: 'm9',
    categories: [
      'c4'
    ],
    title: 'Chocolate Fondue',
    imageUrl:
    'https://www.everyday-delicious.pl/wp-content/uploads/2018/02/Fondat-czekoladowy-ciasto-czekoladowe-z-płynnym-środkiem-chocolate-lava-cake-3-www.maine-cook.com_.jpg',
    price: 26,
    ingredients: [
      'Chocolate fondue',
      'Mint ice cream',
      'Vanilla sauce',
      'Strawberries',
    ],
    isVegetarian: true,
  ),

  Meal(
    id: 'm10',
    categories: [
      'c2'
    ],
    title: 'Viennese schnitzel',
    imageUrl:
    'https://cdn.galleries.smcloud.net/t/galleries/gf-CCSq-NSKG-wzvi_sznycel-wiedenski-czyli-wiener-schnitzel-przepis-na-sznycel-cielecy-664x442-nocrop.jpg',
    price: 82,
    ingredients: [
      'Viennese schnitzel',
      'Capers',
      'Baked Potatoes',
      'Honey dressing',
      'Lemon',
    ],
    isVegetarian: false,
  ),

  Meal(
    id: 'm11',
    categories: [
      'c2'
    ],
    title: 'Watermelon steak',
    imageUrl:
    'https://www.przyslijprzepis.pl/media/cache/big/uploads/media/recipe/0009/14/steki-z-arbuza.jpeg',
    price: 49,
    ingredients: [
      'Watermelon',
      'Black lentils',
      'Feta cheese',
      'Spinach',
      'Watercress',
    ],
    isVegetarian: true,
  ),

  Meal(
    id: 'm12',
    categories: [
      'c2'
    ],
    title: 'Saddle of lamb',
    imageUrl:
    'https://static.fajnegotowanie.pl/media/uploads/media_image/original/przepis/610/pieczony-comber-jagniecy-z-ziemniakami-i-surowka.jpg',
    price: 139,
    ingredients: [
      'Lamb meat',
      'Baked Potatoes',
      'Carrot',
      'Cherry tomatoes',
      'Soy sauce',
      'Himalayan salt'
    ],
    isVegetarian: false,
  ),

  Meal(
    id: 'm13',
    categories: [
      'c2'
    ],
    title: '"Cheese" Burger',
    imageUrl:
    'https://scontent-waw1-1.xx.fbcdn.net/v/t1.6435-9/118397805_369790561082134_8549010777261979894_n.jpg?_nc_cat=105&cb=99be929b-59f725be&ccb=1-7&_nc_sid=a26aad&_nc_ohc=6u0bHEElBZQAX8L-OO3&_nc_ht=scontent-waw1-1.xx&oh=00_AfD3UpJhdhgKhISPWnrrFt1XpHHpBhmY5UaALC8n_zRbtw&oe=64C286B2',
    price: 39,
    ingredients: [
      'Fried cheese',
      'Grilled roll',
      'Onion',
      'Lettuce',
      'Cucumber',
      'Mayo sauce',
    ],
    isVegetarian: true,
  ),

  Meal(
    id: 'm14',
    categories: [
      'c3'
    ],
    title: 'Pancakes',
    imageUrl:
    'https://static.fajnegotowanie.pl/media/uploads/media_image/original/przepis/9210/nalesniki-z-nutella.jpg',
    price: 27,
    ingredients: [
      'Pancakes',
      'Nutella',
      'Bananas',
      'Maple syrup',
    ],
    isVegetarian: true,
  ),

  Meal(
    id: 'm15',
    categories: [
      'c5'
    ],
    title: 'Ice caffe',
    imageUrl:
    'https://ocdn.eu/images/pulscms/YTY7MDA_/a268d85e0c1bea10b6a6a25dc87e3f42.jpg',
    price: 19,
    ingredients: [
      'Caffe',
      'Vanilla ice cream',
      'Whipped cream',
      'Caramel syrup',
      'Chocolate flakes',
    ],
    isVegetarian: true,
  ),

  Meal(
    id: 'm16',
    categories: [
      'c4'
    ],
    title: 'Meringue',
    imageUrl:
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTy9BaeVDK9CWBKR8QVBd27hB1VvUy9uhQW2Q&usqp=CAU',
    price: 25,
    ingredients: [
      'Meringue',
      'Coconut ice cream',
      'Whipped cream',
      'Raspberries',
      'Passion fruit syrup',
    ],
    isVegetarian: true,
  ),

  // Meal(
  //   id: 'm',
  //   categories: [
  //     'c'
  //   ],
  //   title: '',
  //   imageUrl:
  //   '',
  //   price: ,
  //   ingredients: [
  //     'Arugula',
  //     'Lamb\'s Lettuce',
  //     'Parsley',
  //     'Fennel',
  //     '200g Smoked Salmon',
  //     'Mustard',
  //     'Balsamic Vinegar',
  //     'Olive Oil',
  //     'Salt and Pepper'
  //   ],
  //   isGlutenFree: true,
  //   isVegan: false,
  //   isVegetarian: true,
  //   isLactoseFree: true,
  // ),

];