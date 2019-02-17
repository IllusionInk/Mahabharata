import processing.pdf.*;
Table table;
Table tablea;

void setup(){
size(2000,2000,PDF,"mhb_chars.pdf");
background(#ffffff);
smooth();
table = loadTable("mhb_rel.csv","header");
tablea = loadTable("mhb_words.csv","header");
}

void draw(){
battle();
exit();
}

void battle(){
//axis
for(int i = 160; i<= 1600; i=i+160){
stroke(#444444,30);
strokeWeight(1);
line(0,i,width,i);
String b = str(i/16);

fill(40);
textSize(12);
text(b,40,i-5);
}  
//plotting bookends
  for(int i = 0; i<tablea.getRowCount(); i = i+1){
  TableRow rowa = tablea.getRow(i);
  String book_title = rowa.getString("book_title");
  int bookmark = rowa.getInt("words");
  float bookend = map(bookmark,0,100,0,1600);
  int book_no = rowa.getInt("book_num");
  String book_n = str(book_no); 
   
  stroke(#444444,40);
  strokeWeight(2);
  strokeCap(SQUARE);
  line(book_no*100,0,book_no*100,1620);
  
  stroke(#e8e3bc);
  strokeWeight(10);
  strokeCap(SQUARE);
  line(book_no*100,0,book_no*100,1620);
 
  pushMatrix();
  translate(book_no*100,height-200);
  rotate(-HALF_PI);
  fill(40);
  textSize(14);
  text(book_n,0,0);
  textSize(12);
  text(book_title,0,20);
  popMatrix();
  
  }  
  
//plotting  chars
for(int i = 0; i<table.getRowCount(); i = i+1){
  TableRow row = table.getRow(i);
  int book_no = row.getInt("book_no");
  int plot_norm = row.getInt("plot_normalise");
  String char_name = row.getString("words");
  
  float char_pos = map(plot_norm,0,100,0,1600);
  
  if(char_name.equals("karna")){
  fill(#8a7ee8);
  } else if (char_name.equals("arjuna")){
  fill(#eaa25c);  
  }
  strokeWeight(0.5);
  stroke(#565656);
  ellipse(book_no*100+random(-20,20),char_pos,10,10);
}
}
