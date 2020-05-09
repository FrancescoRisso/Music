/*   ________________________________
    |                                |
    |    THIS IS THE MAIN SECTION    |
    |________________________________|
    
For better understanding of the variables, please refer to "Variables.pde" file
*/




/*
THE FIRST THINGS THAT GETS DONE WHEN THE APPLICATION STARTS
*/

void setup(){
  
//Set default window size and make it resizable
  size(1280, 720);
  surface.setResizable(true);
  
//Load all the songs data
  load();
  
//Background white
  background(255);
  
//Load the font
  font = loadFont("CourierNewPSMT-20.vlw");
  textFont(font, 17);
 
//Load the image
  notes = loadImage("notes.png");
  Wnotes = notes.width * Ymin / notes.height;
}





/*
WHAT GETS DONE EVERY "TICK" WHEN THE APPLICATION IS RUNNING
*/

void draw(){

//Clear all
  background(255);
  
//Set all the required variables
  Xrect_new = width - LXrect_new;
  Wrect_new = width - Xrect_new - 10;

//Call the function relative to what he has to do
  switch(state){
    
  //We are in the main menu
    case 'M':
      menu();
      break;
      
  //We want to insert a new song 
    case 'N':
      newSong();
      break;
      
  //We want to play a song 
    case 'S':
      song();
      break;
  }
}
