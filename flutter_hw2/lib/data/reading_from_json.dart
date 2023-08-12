import 'dart:io';
import 'dart:convert';

/* I faced issue with reading from json, I can't use relative path */
var jsonData = json.decode(File(
        '/Users/mohammedalsahli/Desktop/Desktop - Mohammed’s Macbook air/HW-2/flutter_hw2/lib/data/posts_data.json')
    .readAsStringSync());


//Error from relative path
// var jsonData = json.decode(File('/lib/data/posts_data.json').readAsStringSync()); 
//  Exception has occurred. PathNotFoundException (PathNotFoundException: Cannot open file, path = 'lib/data/posts_data.json' (OS Error: No such file or directory, errno = 2))
