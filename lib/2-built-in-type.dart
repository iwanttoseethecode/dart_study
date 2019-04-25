main(){
  String s = 'sfantf'+'';
  String s1 = 'fasg''thdf''hnrt';
  String s3 = '''
  jdshfsjd\njdsgilk
  sdhsdh
  ''';
  String s4 = '''
  jdshfsjd\njdsgilk
  sdhsdh
  ''';
  print(s3);
  print(s4);

  StringBuffer sb = StringBuffer();
  sb.write('dongnao');
  sb.write('damon');
  sb.write('dart');

  sb..write('dongnao')..write('damon')..writeAll(['adsf','kljgfa','ljgreg']);

  bool isNull;
  if(!isNull){
    print('sasa');
  }

  Set set1 = Set();
  Set set2 = Set();
  set1.addAll([1,2,1,2]);
  set2.addAll([1,2,5,6]);

  var difference = set2.difference(set1);
  print(difference);

  var intersection = set1.intersection(set2);
  print(intersection);

  //union
  var union = set1.union(set2);
  print(union);


}