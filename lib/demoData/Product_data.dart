import 'dart:math';
import 'category_data.dart';

const minPrice = 100, maxPrice = 1000;
const minDiscount = 0, maxDiscount = 70;

List<Map<String, dynamic>> products = [
  {
    'title' : category[0]['name'],
    'subtitle' : 'Write the description here of product',
    'image' : category[0]['image'],
    'price' : Random().nextInt(maxPrice - minPrice) + minPrice,
    'discount' : Random().nextInt(maxDiscount - minDiscount) + minDiscount,
  },
  {
    'title' : category[1]['name'],
    'subtitle' : 'Write the description here of product',
    'image' : category[1]['image'],
    'price' : Random().nextInt(maxPrice - minPrice) + minPrice,
    'discount' : Random().nextInt(maxDiscount - minDiscount) + minDiscount,
  },
  {
    'title' : category[2]['name'],
    'subtitle' : 'Write the description here of product',
    'image' : category[2]['image'],
    'price' : Random().nextInt(maxPrice - minPrice) + minPrice,
    'discount' : Random().nextInt(maxDiscount - minDiscount) + minDiscount,
  },
  {
    'title' : category[3]['name'],
    'subtitle' : 'Write the description here of product',
    'image' : category[3]['image'],
    'price' : Random().nextInt(maxPrice - minPrice) + minPrice,
    'discount' : Random().nextInt(maxDiscount - minDiscount) + minDiscount,
  },
  {
    'title' : category[4]['name'],
    'subtitle' : 'Write the description here of product',
    'image' : category[4]['image'],
    'price' : Random().nextInt(maxPrice - minPrice) + minPrice,
    'discount' : Random().nextInt(maxDiscount - minDiscount) + minDiscount,
  },
  {
    'title' : category[5]['name'],
    'subtitle' : 'Write the description here of product',
    'image' : category[5]['image'],
    'price' : Random().nextInt(maxPrice - minPrice) + minPrice,
    'discount' : Random().nextInt(maxDiscount - minDiscount) + minDiscount,
  },
  {
    'title' : category[6]['name'],
    'subtitle' : 'Write the description here of product',
    'image' : category[6]['image'],
    'price' : Random().nextInt(maxPrice - minPrice) + minPrice,
    'discount' : Random().nextInt(maxDiscount - minDiscount) + minDiscount,
  },
];