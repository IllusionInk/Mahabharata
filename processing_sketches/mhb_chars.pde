import processing.pdf.*;
Table table;
Table tablea;

void setup(){
size(2000,2000,PDF,"mhb_chars.pdf");
background(#ffffff);
smooth();
table = loadTable("mhb_abs.csv","header");
tablea = loadTable("mhb_words.csv","header");
}

void draw(){
battle();
exit();
}

void battle(){
//plotting bookends
  for(int i = 0; i<tablea.getRowCount(); i = i+1){
  TableRow rowa = tablea.getRow(i);
  String book_title = rowa.getString("book_title");
  int bookmark = rowa.getInt("words");
  float bookend = map(bookmark,0,636400,0,1800);
  int book_no = rowa.getInt("book_num");
   
  stroke(#444444,40);
  strokeWeight(2);
  strokeCap(SQUARE);
  line(book_no*100,0,book_no*100,1800);
  
  stroke(#e8e3bc);
  strokeWeight(10);
  strokeCap(SQUARE);
  line(book_no*100,0,book_no*100,bookend+20);
 
  pushMatrix();
  translate(book_no*100,height-100);
  rotate(-HALF_PI);
  fill(40);
  textSize(12);
  text(book_title,0,0);
  popMatrix();
  
  }  
  
//plotting  chars
for(int i = 0; i<table.getRowCount(); i = i+1){
  TableRow row = table.getRow(i);
  int book_no = row.getInt("book_no");
  int plot_index = row.getInt("plot_index");
  String char_name = row.getString("words");
  
  float char_pos = map(plot_index,0,636400,0,1800);
  
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
