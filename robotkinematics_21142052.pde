//ロボット運動学最終課題

float armL = 40;
float armW = 10;
float handL = 20;
float handW = 20;
float finger1 = 16;
float finger2 = 20;
float finger3 = 18;
float finger4 = 12;
float fingerT = 12;
float fingerW = 3;

float angleAX = 0;
float angleAY = 0;
float angleHX = 0;
float angleHY = 0;
float angleF11 = 0;
float angleF12 = 0;
float angleF13 = 0;
float angleF21 = 0;
float angleF22 = 0;
float angleF23 = 0;
float angleF31 = 0;
float angleF32 = 0;
float angleF33 = 0;
float angleF41 = 0;
float angleF42 = 0;
float angleF43 = 0;
float angleT1 = 0;
float angleT2 = 0;

float dif = 1.0;

boolean f=false;
boolean F=false;
boolean s=false;
boolean S=false;
boolean p=false;
boolean P=false;
boolean r=false;
boolean l=false;
boolean L=false;
boolean y=false;
boolean Y=false;
boolean t=false;
boolean T=false;
boolean u=false;
boolean U=false;


void setup(){
  size(1000, 1000, P3D);
  //background(255);

  camera(150, -50, 100, 0, 0, 40, 0, 0, -1);

  noStroke();  
}


void draw(){

  background(255);

  //肘前後
  if(keyPressed){   
     if(key == 'a'){
       angleAY = angleAY + dif;
     }
     if(key == 'A'){
       angleAY = angleAY - dif;
     }
  }


  //手首前後
  if(keyPressed){   
     if(key == 'h'){
       angleHY = angleHY + dif;
     }
     if(key == 'H'){
       angleHY = angleHY - dif;
     }
  }  


  //ピース握る
  if(keyPressed){   
     if(key == 'p'){
       p = true;
     }
  }
  else{
    p=false;
  }
     if(p==true){
     if((radians(angleF31)>=0)&&(radians(angleF31)<PI/2)){
     angleF31 = angleF31 + dif;
     angleF32 = angleF32 + dif;
     angleF33 = angleF33 + dif;
     angleF41 = angleF41 + dif;
     angleF42 = angleF42 + dif;
     angleF43 = angleF43 + dif;
     angleT1 = angleT1 + dif;
     angleT2 = angleT2 + dif;
     }
     }

   //ピースひらく
    if(keyPressed){   
     if(key == 'P'){
       P = true;
     }
  }
  else{
    P=false;
  }
     if(P==true){
     if((radians(angleF31)>0)&&(radians(angleF31)<=PI/2)){
     angleF31 = angleF31 - dif;
     angleF32 = angleF32 - dif;
     angleF33 = angleF33 - dif;
     angleF41 = angleF41 - dif;
     angleF42 = angleF42 - dif;
     angleF43 = angleF43 - dif;
     angleT1 = angleT1 - dif;
     angleT2 = angleT2 - dif;
     }
     }   

  //アイラブユー握る
  if(keyPressed){
     if(key == 'l'){
       l = true;
     }
  }
  else{
    l=false;
  }
  if(keyPressed){   
     if(key == 'y'){
       y = true;
     }
  }
  else{
    y=false;
  }
     if((l==true)&&(y==true)){
     if((radians(angleF31)>=0)&&(radians(angleF31)<PI/2)){
     angleF21 = angleF21 + dif;
     angleF22 = angleF22 + dif;
     angleF23 = angleF23 + dif;
     angleF31 = angleF31 + dif;
     angleF32 = angleF32 + dif;
     angleF33 = angleF33 + dif;
     }
     }

  //アイラブユーひらく
  if(keyPressed){
     if(key == 'L'){
       L = true;
     }
  }
  else{
    L=false;
  }
  if(keyPressed){   
     if(key == 'Y'){
       Y = true;
     }
  }
  else{
    Y=false;
  }

     if((L==true)&&(Y==true)){
     if((radians(angleF31)>0)&&(radians(angleF31)<=PI/2)){
     angleF21 = angleF21 - dif;
     angleF22 = angleF22 - dif;
     angleF23 = angleF23 - dif;
     angleF31 = angleF31 - dif;
     angleF32 = angleF32 - dif;
     angleF33 = angleF33 - dif;
     }
     }

  //サムズアップ握る
  if(keyPressed){
     if(key == 't'){
       t = true;
     }
  }
  else{
    t=false;
  }
  if(keyPressed){   
     if(key == 'u'){
       u = true;
     }
  }
  else{
    u=false;
  }
     if((t==true)&&(u==true)){
     if((radians(angleF31)>=0)&&(radians(angleF31)<PI/2)){
     angleF11 = angleF11 + dif;
     angleF12 = angleF12 + dif;
     angleF13 = angleF13 + dif;
     angleF21 = angleF21 + dif;
     angleF22 = angleF22 + dif;
     angleF23 = angleF23 + dif;
     angleF31 = angleF31 + dif;
     angleF32 = angleF32 + dif;
     angleF33 = angleF33 + dif;
     angleF41 = angleF41 + dif;
     angleF42 = angleF42 + dif;
     angleF43 = angleF43 + dif;
     angleAX = angleAX + dif/2;
     angleHX = angleHX + dif/2;
     }
     }

  //サムズアップひらく
  if(keyPressed){
     if(key == 'T'){
       T = true;
     }
  }
  else{
    T=false;
  }
  if(keyPressed){   
     if(key == 'U'){
       U = true;
     }
  }
  else{
    U=false;
  }

     if((T==true)&&(U==true)){
     if((radians(angleF31)>0)&&(radians(angleF31)<=PI/2)){
     angleF11 = angleF11 - dif;
     angleF12 = angleF12 - dif;
     angleF13 = angleF13 - dif;
     angleF21 = angleF21 - dif;
     angleF22 = angleF22 - dif;
     angleF23 = angleF23 - dif;
     angleF31 = angleF31 - dif;
     angleF32 = angleF32 - dif;
     angleF33 = angleF33 - dif;
     angleF41 = angleF41 - dif;
     angleF42 = angleF42 - dif;
     angleF43 = angleF43 - dif;
     angleAX = angleAX - dif/2;
     angleHX = angleHX - dif/2;     
     }
     }


  //グー握る
  if(keyPressed){
     if(key == 'f'){
       f = true;
     }
  }
  else{
    f=false;
  }
  if(keyPressed){   
     if(key == 's'){
       s = true;
     }
  }
  else{
    s=false;
  }
     if((f==true)&&(s==true)){
     if((radians(angleF31)>=0)&&(radians(angleF31)<PI/2)){
     angleF11 = angleF11 + dif;
     angleF12 = angleF12 + dif;
     angleF13 = angleF13 + dif;
     angleF21 = angleF21 + dif;
     angleF22 = angleF22 + dif;
     angleF23 = angleF23 + dif;
     angleF31 = angleF31 + dif;
     angleF32 = angleF32 + dif;
     angleF33 = angleF33 + dif;
     angleF41 = angleF41 + dif;
     angleF42 = angleF42 + dif;
     angleF43 = angleF43 + dif;
     angleT1 = angleT1 + dif;
     angleT2 = angleT2 + dif;
     }
     }

  //グーひらく
  if(keyPressed){
     if(key == 'F'){
       F = true;
     }
  }
  else{
    F=false;
  }
  if(keyPressed){   
     if(key == 'S'){
       S = true;
     }
  }
  else{
    S=false;
  }

     if((F==true)&&(S==true)){
     if((radians(angleF31)>0)&&(radians(angleF31)<=PI/2)){
     angleF11 = angleF11 - dif;
     angleF12 = angleF12 - dif;
     angleF13 = angleF13 - dif;
     angleF21 = angleF21 - dif;
     angleF22 = angleF22 - dif;
     angleF23 = angleF23 - dif;
     angleF31 = angleF31 - dif;
     angleF32 = angleF32 - dif;
     angleF33 = angleF33 - dif;
     angleF41 = angleF41 - dif;
     angleF42 = angleF42 - dif;
     angleF43 = angleF43 - dif;
     angleT1 = angleT1 - dif;
     angleT2 = angleT2 - dif;
     }
     }

  //リセットボタン
  if(keyPressed){
     if(key == 'r'){
     angleF11 = 0;
     angleF12 = 0;
     angleF13 = 0;
     angleF21 = 0;
     angleF22 = 0;
     angleF23 = 0;
     angleF31 = 0;
     angleF32 = 0;
     angleF33 = 0;
     angleF41 = 0;
     angleF42 = 0;
     angleF43 = 0;
     angleT1 = 0;
     angleT2 = 0;  
     angleAX = 0;
     angleAY = 0;
     angleHX = 0;
     angleHY = 0;
     }
  }


  //肘
  rotateY(radians(angleAY));
  rotateX(radians(-angleAX));

  //腕
  translate(0,0,armL/2);
  fill(175);
  box(armW,armW,armL);

  //手首
  translate(0,0,armL/2);
  rotateY(radians(angleHY));
  rotateX(radians(-angleHX));
  pushMatrix();

  //掌
  translate(0,0,handL/2);
  fill(175);
  box(handW/4,handW,handL);

  //人差し指
  popMatrix();
  pushMatrix();
  translate(0,-handW/2+fingerW/2,handL);
  rotateY(radians(angleF11));
  translate(0,0,finger1/6);
  fill(175);
  box(fingerW,fingerW,finger1/3);
  translate(0,0,finger1/6);
  rotateY(radians(angleF12));
  translate(0,0,finger1/6);
  fill(175);
  box(fingerW,fingerW,finger1/3);
  translate(0,0,finger1/6);
  rotateY(radians(angleF13));
  translate(0,0,finger1/6);
  fill(175);
  box(fingerW,fingerW,finger1/3);

  //中指
  popMatrix();
  pushMatrix();
  translate(0,-fingerW,handL);
  rotateY(radians(angleF21));
  translate(0,0,finger2/6);
  fill(200);
  box(fingerW,fingerW,finger2/3);
  translate(0,0,finger2/6);
  rotateY(radians(angleF22));
  translate(0,0,finger2/6);
  fill(200);
  box(fingerW,fingerW,finger2/3);
  translate(0,0,finger2/6);
  rotateY(radians(angleF23));
  translate(0,0,finger2/6);
  fill(200);
  box(fingerW,fingerW,finger2/3);

  //薬指
  popMatrix();
  pushMatrix();
  translate(0,fingerW,handL);
  rotateY(radians(angleF31));
  translate(0,0,finger3/6);
  fill(175);
  box(fingerW,fingerW,finger3/3);
  translate(0,0,finger3/6);
  rotateY(radians(angleF32));
  translate(0,0,finger3/6);
  fill(175);
  box(fingerW,fingerW,finger3/3);
  translate(0,0,finger3/6);
  rotateY(radians(angleF33));
  translate(0,0,finger3/6);
  fill(175);
  box(fingerW,fingerW,finger3/3);

  //小指
  popMatrix();
  pushMatrix();
  translate(0,handW/2-fingerW/2,handL);
  rotateY(radians(angleF41));
  translate(0,0,finger4/6);
  fill(200);
  box(fingerW,fingerW,finger4/3);
  translate(0,0,finger4/6);
  rotateY(radians(angleF42));
  translate(0,0,finger4/6);
  fill(200);
  box(fingerW,fingerW,finger4/3);
  translate(0,0,finger4/6);
  rotateY(radians(angleF43));
  translate(0,0,finger4/6);
  fill(200);
  box(fingerW,fingerW,finger4/3);

  //親指
  popMatrix();
  translate(0,-handW/2,fingerW/2);
  rotateX(radians(90));
  rotateY(radians(angleT1));
  translate(0,0,fingerT/4);
  fill(200);
  box(fingerW,fingerW,fingerT/2);
  translate(0,0,fingerT/4);
  rotateY(radians(angleT2));
  translate(0,0,fingerT/4);
  fill(200);
  box(fingerW,fingerW,fingerT/2);

}

//肘左右
void mouseDragged(){
    angleAX -= (mouseX - pmouseX) * 0.1;
}
