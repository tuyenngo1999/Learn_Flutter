String s1 = 'How are you';
String s2 = "I'm fine";

var s3 = '$s1 - $s2';

List<int> numbers = [1,2,3,5,6];

List<String> strNumbers = numbers.map((e) => 'value : $e').toList();