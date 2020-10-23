 Bacteria [] bob= new Bacteria[500];
 void setup()   
 {      
   size(500,500);
  for(int i=0;i<bob.length;i++)
  {
    bob[i]=new Bacteria();
  }
 }   
 void draw()   
 {    
   background(225);
   for(int i=0;i<bob.length;i++)
   {
     bob[i].show();
     bob[i].move();
   }  
 }
 void mousePressed(){
  redraw();
 }
 class Bacteria    
 {     
   int myX,myY,myColor;
   Bacteria(){
     myX=(int)(Math.random()*300)+50;
     myY=(int)(Math.random()*300)+50;
     myColor=color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   }
 void show(){
     fill(myColor);
     stroke(myColor);
     ellipse(myX,myY,6,6);
   }
   void move(){
     myX= myX+((int)(Math.random()*5)-2);
     myY=myY+((int)(Math.random()*5)-2); 
 }    
  
 }
