/*
* multiples accepts an integer num and an integer
 * range for startRange to endRange. It returns the
 * count of numbers that are multiples of num in the
 * range. Note that since zero times any number is 0,
 * 0 is the only multiple of zero.
 */
int multiples(int num, int startRange, int endRange) {
  int count = 1;
  if (num == 0) {
    return count;
  }
  for (int i = startRange; i <= endRange; i++) {
    if (i%num == 0) {
      count++;
    }
  }
  return count;
}

void multiplesTest() {
  //case1
  int test1num = 2, test1StartRange = 0, test1EndRange = 10, test1count = 5 ; 
  // case 2
  int test2num = 3, test2StartRange = 0, test2EndRange = 10, test2count = 3 ; 
  //case 3
  int test3num = 4, test3StartRange = 0, test3EndRange = 10, test3count = 2 ; 
  //case 4
  int test4num = 2, test4StartRange = 0, test4EndRange = 100, test4count = 50 ; 
  // case 5
  int test5num = 3, test5StartRange = 0, test5EndRange = 100, test5count = 33 ; 
  //case 6
  int test6num = 4, test6StartRange = 50, test6EndRange = 100, test6count = 12 ;
  // case 7

  if ( multiples(test1num, test1StartRange, test1EndRange) == test1count) {
    println("Test 1 passed");
  } else { 
    println( "Test 1 failed");}
  
  if ( multiples(test2num, test2StartRange, test2EndRange) == test2count) {
    println("Test 2 passed");
  } else { 
    println( "Test 2 failed");
  }
  
  if ( multiples(test3num, test3StartRange, test3EndRange) == test3count) {
    println("Test 3 passed");
  } else { 
    println( "Test 3 failed");
  }
  
if ( multiples(test4num, test4StartRange, test4EndRange) == test4count) {
    println("Test 4 passed");
  } else { 
    println( "Test 4 failed");
  }
  
if ( multiples(test5num, test5StartRange, test5EndRange) == test5count) {
    println("Test 5 passed");
  } else { 
    println( "Test 5 failed");
  } 

if ( multiples(test6num, test6StartRange, test6EndRange) == test6count) {
    println("Test 6 passed");
  } else { 
    println( "Test 6 failed");
  }
  
}

void setup(){
multiplesTest();
}
