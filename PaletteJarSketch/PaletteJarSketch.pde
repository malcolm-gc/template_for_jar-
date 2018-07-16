/**
 * PaletteJarSketch (v2)
 * GoToLoop (2018/Jul/13) 
 * malcolm_gc (2018/Jul/16)
 *
 * originally published in 
 * https://Discourse.Processing.org/t/including-shared-pde-files-across-projects/1701/3
 *
 *
 * this file now accesses the common.jar library which contains
 *    an interface named Pallete that provides static variables for colors
 *    a class Misc that implements a few functions
 *
 * common.jar is created by the project directory common_jar
 *
 *
 * issues:  when this file is run in Processing an the error message
 *          No library found for common.Palette  - may be displayed even though the library is being accessed
 *           
 */


import static common.Palette.*;
import common.Misc;
 
size(300,400); 

background(BLUE);

// draw a red circle fill it with yellow
// using variables from the interface Palette in the malcolm package 

strokeWeight(3.5);
stroke(RED);
fill(YELLOW);
ellipse(100, 100,100, 100);

// create a reference to the imported class
Misc m = new Misc();

textSize(32);

// get some string values from functions in the Misc class
String word = m.eat();
String word2 = m.travel();
 
// display those strings under the circle
text(word, 10, 210); 
text(word2, 10, 250); 

int legs = 0;
legs = m.noOfLegs();
if (legs == 0){
  text("Mammal is legless",10, 300);
}

int a = 5;
int b = 7;

// parse some data into a Misc class function and get the integer result  
int c = m.addnums(a,b);
// and display it
text(a +"+" + b + "=" +c, 10, 350);

 
