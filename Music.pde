import ddf.minim.*;

import processing.sound.*;

//THIS IS THE MAIN SECTION


void setup(){
  size(1280, 720);
  background(255);
  surface.setResizable(true);
  
//Load all the songs data
  load();
  
//background white
  background(255);
  
//load all the fonts
  font = loadFont("CourierNewPSMT-20.vlw");
  textFont(font, 17);
  
  notes = loadImage("notes.png");
  Wnotes = notes.width * Ymin / notes.height;
}



//Every "tick" do:
void draw(){

//clear all
  background(255);
  
//Set all the required variables
  Xrect_new = width - LXrect_new;
  Wrect_new = width - Xrect_new - 10;

//call the function relative to what he has to do
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
