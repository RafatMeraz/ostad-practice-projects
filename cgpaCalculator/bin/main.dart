import 'dart:io';

double sg =0.0;
double totalCredit = 0.0;
double calculator(double marks, double credit){
  if(marks<=100 && marks>=80){
    sg += (4.00 * credit);
    totalCredit+=credit;
  }
  else if(marks<80 && marks>=75){
    sg += (3.75 * credit);
    totalCredit+=credit;
  }
  else if(marks<75 && marks>=70){
    sg += (3.50 * credit);
    totalCredit+=credit;
  }
  else if(marks<70 && marks>=65){
    sg += (3.25 * credit);
    totalCredit+=credit;
  }
  else if(marks<65 && marks>=60){
    sg += (3.00 * credit);
    totalCredit+=credit;
  }
  else if(marks<60 && marks>=55){
    sg += (2.75 * credit);
    totalCredit+=credit;
  }
  else if(marks<55 && marks>=50){
    sg += (2.50 * credit);
    totalCredit+=credit;
  }
  else if(marks<50 && marks>=45){
    sg += (2.25 * credit);
    totalCredit+=credit;
  }
  else if(marks<45 && marks>=40){
    sg += (2.00 * credit);
    totalCredit+=credit;
  }
  else if(marks<40 && marks>=0){
    sg += (0.0 * credit);
    totalCredit+=credit;
  }
  else{
    print("Please Enter Valid Marks!!");
  }

  return 0;

}

void main(){
  int n;
  double marks, credit;
  print("Enter Number of courses : ");
  String str = stdin.readLineSync()!;
  n = int.parse(str);

  for(int i=0; i<n; i++){

    print("Enter Mark of Course No ${i+1} : ");
    String str1 = stdin.readLineSync()!;
    marks = double.parse(str1);

    print("Enter Credit of Course No ${i+1} : ");
    String str2 = stdin.readLineSync()!;
    credit = double.parse(str2);

    calculator(marks, credit);

  }
  
  double cgpa = sg/totalCredit;
  
  print("Your CGPA : $cgpa");


}
