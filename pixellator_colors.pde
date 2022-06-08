import processing.video.*;
Capture myCapture;
int a=30;//50; //stepsize x
int b=30; //stepsize y
int x=0;
int y=0;

int xres = 640;
int yres = 480;
int s = second();
 int datargb;
  float datar;
   float datag;
    float datab;
    int[] c= new int[9000];

void settings() {
  size((2*xres+10) , yres);
}

void setup(){

myCapture = new Capture(this, "pipeline:autovideosrc");
myCapture.start();
}

void captureEvent(Capture myCapture) {
 myCapture.read();
}

void draw(){
image(myCapture, 0, 0);

loadPixels();

   if(true){

      int dx = 0;
      int dy =0;
      datar=0;
      datag=0;
      datab=0;
      datargb=0;
        for (int i = 0; i < yres; i = i+yres/b) {
    for (int j = 0; j < xres; j = j+xres/a) {
      dx=xres+10+j;
      dy=i;
         c[j+i*yres/b]=get(j,i);
             fill(c[j+i*yres/b]);
          rect(dx, dy, xres/a, yres/b);
   //     println(dx, dy, xres/a, yres/b);

    }
  }

  //        saveFrame("####.jpeg");


    }
  }
