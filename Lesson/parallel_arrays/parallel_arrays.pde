void setup() {
  String [] employees = {"Fran", "Alex", "Carmen", "Justice"};
  int salaries [] = {85, 75, 105, 80};
  int [] types = { 1, 1, 2, 1};
  println(employeeSalary(employees, salaries, "Carmen"));
  println( highestPaidEmployee(employees, salaries));
}

int employeeSalary( String [] names, int [] Salaries, String name) {
  for (int i = 0; i <= names.length-1; i++) {
    if ( names[i].equals(name) ) {
      return Salaries[i];
    }
  }
  println("Error! Employee does not exist");
  return -1;
}


String highestPaidEmployee( String [] names, int [] Salaries) {
  String highestPaid = " "; // initialize highest paid employee with blank
  int highest = 0;          // initialize highest salary with 0
  for (int i = 0; i <= Salaries.length-1; i++) { // loop through array 
    if (i+1 == Salaries.length) {
      break;
    }           // prevent an indexOutOfBoundsException
    else if ( Salaries[i] > Salaries[i+1]) {      // check if current salary is greaterthan next salary
      highest = Salaries[i];                     // if it is update value of highest salary to the current salary
    }
  }
  for (int i = 0; i <= Salaries.length-1; i++) {  // loop through array of salaries
    if (highest == Salaries[i]) {              // check if highest salary is the salary  at a certain index
      highestPaid = names[i];                 //if it is true then make the name of highest paid employee the name at that index
    }
  } 
  return highestPaid;                         // return name of highest paid employee
}
