int centX;
int centY;
float thisx, thisy;
float lastx=0;
float lasty=0;
float x=0;
float radius = 100;
float ang=0;
float radiusNoise = 1;
boolean firstPoint=true;
void setup() {
size(1000,400);
background(255);
strokeWeight(1);
smooth();
noFill();
stroke(0,30);
centX=width/2;
centY=height/2;
ellipse(centX,centY,radius*2,radius*2);
lastx=width/2;
lasty=height/2;
}
void draw(){
stroke(random(250),random(250),random(250), 30);
radiusNoise += 0.05;
float thisRadius = radius + (noise(radiusNoise) * 200) - 100;
float rad = radians(ang);
thisx = centX + (radius * cos(rad)*(6-cos(4*rad)));
thisy = centY + (radius * sin(rad)*(x-cos(4*rad)));
if(firstPoint==true){
lastx=thisx;
lasty=thisy;
firstPoint=false;
}
line(lastx,lasty, thisx, thisy);
ang+=1;
if(ang%360==0){
x+=.5;
}
lasty=thisy;
lastx=thisx;
}