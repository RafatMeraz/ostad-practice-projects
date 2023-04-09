import 'dart:io';

void main(List<String> arguments) {
  print('Welcome to Rocks Pizza');
  while (true) {
    print('Menus available for today\n1. Pizza\n2.Burger\n3.Rice');
    stdout.write('Enter your menu no : ');
    var input = stdin.readLineSync();
    stdout.write('Do you need a extra Coco cola (yes/no)?');
    var coca = stdin.readLineSync();

    var val = int.tryParse(input ?? '0') ?? 0;
    var priceOfCoca = 0;
    if (coca != null && coca.toLowerCase() == 'yes') {
      priceOfCoca = 20;
    }

    switch (val) {
      case 1:
        print('Your bill is \$${350 + priceOfCoca}');
        break;
      case 2:
        print('Your bill is \$${230 + priceOfCoca}');
        break;
      case 3:
        print('Your bill is \$${100 + priceOfCoca}');
        break;
      default:
        print('Enter a valid choice');
    }
    stdout.write('For next bill press enter or for close shop enter exit : ');
    var next = stdin.readLineSync();
    if (next != null && next.toLowerCase() == 'exit') {
      break;
    }
  }
}
