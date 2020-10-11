// Marubishamon tile by Rupert Russell
// Processing 3.5 Java code
// 12 October 2020 - Still hopiing for an interview with Parks Victoria
// https://www.bebebold.com/flower-hana-zashi-pss-12/
// https://cdn11.bigcommerce.com/s-gpb25/images/stencil/800x800/products/4547/4898/Bishamon_54bf09d73d6ef__39385.1428642427.jpg?c=2
// https://www.bebebold.com/bishamon-pss-45/



int scale = 575; //  572
int xCent = 716;
int yCent = 408;

void setup() {
  noFill();
  background(255);
  size(716, 408);  // size(716, 408);
  stroke(255, 0, 0);
}

void draw() {


  background(255);
  println("scale = "+ scale);
  stroke(200);
  line(0, 0, xCent, yCent);
  line(xCent, 0, 0, yCent);
  line(xCent/2, 0, xCent/2, yCent);
  line(0, yCent/2, xCent, yCent/2);
  rect(0, 0, xCent, yCent);

  stroke(0);
  // ellipse(xCent /2, - yCent * 0.5, scale, scale);
  // ellipse(0, 0, scale, scale); // top left diagonal
  // ellipse(xCent, yCent, scale, scale); // bottom right diagnoal
  // ellipse(0, yCent, scale, scale); // bottom left diagnoal
  // ellipse(xCent /2, + yCent + yCent * 0.5, scale, scale); // bottom center
  //  ellipse(xCent, 0, scale, scale);
  strokeWeight(1);


  strokeWeight(3);
  stroke(255, 0, 0);
  arc(xCent, 0, scale, scale, radians(180 - 90), radians(180 - 45.5) ); // top right diagonal // lower arc
  arc(xCent, 0, scale, scale, radians(180 - 14), radians(180) ); // top right diagonal // upper left arc
  arc(0, 0, scale, scale, radians(0), radians(14)); // top left diagonal upper
  arc(0, 0, scale, scale, radians(45.5), radians(90)); // top left diagonal lower
  arc(xCent /2, - yCent * 0.5, scale, scale, radians(45), radians(90 + 45));  // top center
  arc(xCent /2, yCent /2, scale, scale, radians(-45), radians(14)); // center right
  arc(xCent /2, yCent /2, scale, scale, radians(180 - 14), radians(180 + 45));// center left
  arc(xCent, yCent, scale, scale, radians(180), radians(180 + 74)); // bottom right diagnoal
  arc(0, yCent, scale, scale, radians(286), radians( 360) ); // bottom left diagnoal
  arc(xCent /2, + yCent + yCent * 0.5, scale, scale, radians(286), radians(315)); // bottom center right side
  arc(xCent /2, + yCent + yCent * 0.5, scale, scale, radians(225), radians(228 +26)); // bottom center left side
  strokeWeight(1);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      scale ++;
    }

    if (keyCode == DOWN) {
      scale --;
    }

    if (keyCode == LEFT) { 
      save("tile_002.png");
      exit();
    }
  }
}
