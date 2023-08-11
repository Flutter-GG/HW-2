import 'dart:io';
import 'dart:convert';

var jsonData = json.decode(File(
        '/Users/mohammedalsahli/Desktop/Desktop - Mohammed’s Macbook air/HW-2/flutter_hw2/lib/data/posts_data.json')
    .readAsStringSync());
