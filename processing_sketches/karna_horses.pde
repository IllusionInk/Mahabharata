import processing.pdf.*;
PShape motif1;
PShape motif2;
PShape motif3;
PShape motif4;
PShape motif5;
PShape motif6;
PShape motif7;
PShape motif8;

PShape motifh;
Table table;
Table tableb;
int assoc_size;


void setup(){
size(1800,2000,PDF, "maha_karna_horses.pdf");
background(#ffffff);
motif1 = loadShape("karna.svg");
motif2 = loadShape("karna.svg");
motif3 = loadShape("kaurav_h.svg");
motif4 = loadShape("kaurav_ally_h.svg");
motif5 = loadShape("pandav_h.svg");
motif6 = loadShape("pandav_ally_h.svg");
motif7 = loadShape("other_h.svg");
motif8 = loadShape("god_h.svg");
table = loadTable("karna_arjun_comb.csv","header");
tableb = loadTable("karna_assoc_pro_v1.csv","header");
}

void draw(){
//chariot();
horses();
exit();
}

void horses(){
for(int i = 0 ; i < tableb.getRowCount(); i = i+1){
  TableRow rowb = tableb.getRow(i);
  int book_no = rowb.getInt("book_num"); 
  int karnaloc = 20 + rowb.getInt("karna_count");
  int karna_assoc = rowb.getInt("mentions");
  
  if (karna_assoc < 2){
  assoc_size = 52 * karna_assoc;
  } else if ((karna_assoc >= 2) && (karna_assoc <= 4)){
  assoc_size = 22 * karna_assoc;
  } else if ((karna_assoc >= 5) && (karna_assoc <= 10) ){
  assoc_size = 14 * karna_assoc;
  } else if ((karna_assoc >= 11) && (karna_assoc <= 18) ){
  assoc_size = 7 * karna_assoc;
  } else if ( (karna_assoc >= 19) && (karna_assoc <= 30)){
  assoc_size = 6 * karna_assoc;
  } else if ((karna_assoc >= 31) && (karna_assoc <= 40)){
  assoc_size = 5 * karna_assoc;
  } else if (karna_assoc >= 41){
  assoc_size = 4 * karna_assoc;
  }
  
  int assoc_place = karna_assoc*3;
  String char_name = rowb.getString("char_mention");
  String char_type = rowb.getString("char_type");
  textSize(12);
  fill(#000000);
  if (char_type.equals("kaurava")){
       shape(motif3,karnaloc + karna_assoc,book_no*100,assoc_size,assoc_size);
       text(char_name,karnaloc,book_no*100+assoc_place); 
   } else if (char_type.equals("kaurava_ally")){
       //motifh = motif4;
       shape(motif4,karnaloc + karna_assoc,book_no*100,assoc_size,assoc_size);
       text(char_name,karnaloc,book_no*100+assoc_place); 
   } else if (char_type.equals("pandava")){
       //motifh = motif5;
       shape(motif5,karnaloc + karna_assoc,book_no*100,assoc_size,assoc_size);
       text(char_name,karnaloc,book_no*100+assoc_place); 
   } else if (char_type.equals("pandava_ally")){
       //motifh = motif6;
       shape(motif6,karnaloc + karna_assoc,book_no*100,assoc_size,assoc_size);
       text(char_name,karnaloc,book_no*100+assoc_place); 
   } else if (char_type.equals("other")){
       //motifh = motif7;
       shape(motif7,karnaloc + karna_assoc,book_no*100,assoc_size,assoc_size);
       text(char_name,karnaloc,book_no*100+assoc_place); 
   } else if (char_type.equals("god")){
       //motifh = motif8;
       shape(motif8,karnaloc + karna_assoc,book_no*100,assoc_size,assoc_size);
       text(char_name,karnaloc,book_no*100+assoc_place);  
   }
 
  
  
   
  textSize(24);
  fill(#000000);
  text(book_no,20,book_no*100);
  stroke(200);
  line(0,book_no*100,1800,book_no*100);
   
   
  //shape(motif8,karnaloc + karna_assoc,book_no*100,karna_assoc*2,karna_assoc*2); 
  /*textSize(12);
  fill(#000000);
  text(char_name,karnaloc+50,book_no*100);
  */
}
}