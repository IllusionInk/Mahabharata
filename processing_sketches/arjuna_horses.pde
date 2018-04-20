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
size(1800,2000,PDF, "maha_arj.pdf");
background(#ffffff);
motif1 = loadShape("karna.svg");
motif2 = loadShape("arjun.svg");
motif3 = loadShape("kaurav_h.svg");
motif4 = loadShape("kaurav_ally_h.svg");
motif5 = loadShape("pandav_h.svg");
motif6 = loadShape("pandav_ally_h.svg");
motif7 = loadShape("other_h.svg");
motif8 = loadShape("god_h.svg");
table = loadTable("karna_arjun_comb.csv","header");
tableb = loadTable("arjun_assoc_pro_v1.csv","header");
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
  int arjunloc = 20 + rowb.getInt("arjun_count");
  int arjun_assoc = rowb.getInt("char_count");
  if (arjun_assoc == 1){
  assoc_size = 44 * arjun_assoc;
  } else if ((arjun_assoc >= 2) && (arjun_assoc <= 4)){
  assoc_size = 20 * arjun_assoc;
  } else if ((arjun_assoc >= 5) && (arjun_assoc <= 10) ){
  assoc_size = 8 * arjun_assoc;
  } else if ((arjun_assoc >= 11) && (arjun_assoc <= 18) ){
  assoc_size = 7 * arjun_assoc;
  } else if ( (arjun_assoc >= 19) && (arjun_assoc <= 26)){
  assoc_size = 6 * arjun_assoc;
  } else if ( arjun_assoc >= 26 ){
  assoc_size = 4 * arjun_assoc;
  }
  
  
  int assoc_place = arjun_assoc*3;
  String char_name = rowb.getString("char_mention");
  String char_type = rowb.getString("char_type");
  textSize(12);
  fill(#000000);
  if (char_type.equals("kaurava")){
       //motifh = motif3;
       shape(motif3,arjunloc + arjun_assoc,book_no*100,assoc_size,assoc_size); 
       text(char_name,arjunloc,book_no*100+assoc_place); 
   } else if (char_type.equals("kaurava_ally")){
       //motifh = motif4;
       shape(motif4,arjunloc + arjun_assoc,book_no*100,assoc_size,assoc_size);
       text(char_name,arjunloc,book_no*100+assoc_place); 
   } else if (char_type.equals("pandava")){
       //motifh = motif5;
       shape(motif5,arjunloc + arjun_assoc,book_no*100,assoc_size,assoc_size);
       text(char_name,arjunloc,book_no*100+assoc_place); 
   } else if (char_type.equals("pandava_ally")){
       //motifh = motif6;
       shape(motif6,arjunloc + arjun_assoc,book_no*100,assoc_size,assoc_size);
       text(char_name,arjunloc,book_no*100+assoc_place); 
   } else if (char_type.equals("other")){
       //motifh = motif7;
       shape(motif7,arjunloc + arjun_assoc,book_no*100,assoc_size,assoc_size);
       text(char_name,arjunloc,book_no*100+assoc_place); 
   } else if (char_type.equals("god")){
       //motifh = motif8;
       shape(motif8,arjunloc + arjun_assoc,book_no*100,assoc_size,assoc_size);
       text(char_name,arjunloc,book_no*100+assoc_place);  
   }
 
  
  
   
  textSize(24);
  fill(#000000);
  text(book_no,20,book_no*100);
  stroke(200);
  line(0,book_no*100,1800,book_no*100);
   
   
  //shape(motif8,arjunloc + arjun_assoc,book_no*100,arjun_assoc*2,arjun_assoc*2); 
  /*textSize(12);
  fill(#000000);
  text(char_name,arjunloc+50,book_no*100);
  */
}
}