/*
 * Processing basically wraps all code in a .pde file inside
 * a class during ANTLR preprocessing.
 * Hence, the document itself acts (or should act) as a class
 * body.
 */


// =========================================== //
//    Methods definititions outside a class    //
// =========================================== //

void setup() {
  size(512, 512, OPENGL);
  smooth();
  background( color(0,127,234) );
}

public static int draw() { // comment
  float bar = 3.0f;
  bar *= 5;
}



// ============================ //
//    Consts, cvars, classes    //
// ============================ //

mousePressed; // should be variable.other.java.processing
someVar;      // normal var

OPENGL;       // should be support.constant.java.processing
SOME_CONST    // normal constant

PVector       // support.type.java.processing (Processing class)
Object        // normal class



// =================== //
//    Special cases    //
// =================== // 

frameRate;   // should be variable.other.java.processing
frameRate(); // should be support.function.java.processing

size();      // should be support.function.java.processing
arr.size();  // should be... something else



// ================= //
//    Inner class    //
// ================= //

class TestClass extends Foo implements Bar {
  boolean value = false;
  
  TestClass() {
    this.value = true
  }
  
  String toString() {
    return "foobar"
  }
}