import 'package:best_places/main.dart';
import 'package:flutter/material.dart';

extension Screen on BuildContext {
  getWidth() {
    return MediaQuery.of(this).size.width;
  }

  getheight() {
    return MediaQuery.of(this).size.height;
  }

  pushPage({required Widget screen}) {
    return Navigator.push(
        this, MaterialPageRoute(builder: (context) => screen));
  }

  popPage({required Widget screen}) {
    return Navigator.pop(this);
  }

removingItem(index){

  listIslands.removeAt(index);
                     
}

  pushAndRemove({required Widget screen}) {
    return Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(builder: (context) => screen),
      ModalRoute.withName('-'),
    );
  }
}
