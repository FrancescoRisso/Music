//MOUSE

void mousePressed(){
//Consider in which state you are 
  switch(state){

//We are in the main menu
    case 'M':
    
//We pressed the "New song" button
      if(mouseX > Xrect_new && mouseX < Xrect_new + Wrect_new  && mouseY > Yrect_new && mouseY < Yrect_new + Hrect_new){
        state = 'N';
        input = 'T';
        break;
      }
    
//We pressed the "Close" button
      if(mouseX > Xrect_close && mouseX < Xrect_close + Wrect_new  && mouseY > Yrect_new && mouseY < Yrect_new + Hrect_new){
        exit();
        break;
      }
    
//We pressed a song's title
      if(mouseY > Ymin){
        SongIndex = Alph[floor((mouseY - Ymin + Ytop)/(2*Dim))];
        song = songs.getJSONObject(SongIndex);
        audio = minim.loadFile(song.getString("link") + "\\Audio.mp3");
        tab = loadImage(song.getString("link") + "\\tab.png");
        state = 'S';
        break;
      }
      
      
//We are in the "New song" section
    case 'N':
    
//We pressed the "Back" button
      if(mouseX > Xrect_new && mouseX < Xrect_new + Wrect_new  && mouseY > Yrect_new && mouseY < Yrect_new + Hrect_new){
        state = 'M';
        input = ' ';
        author = "";
        title = "";
        link = "";
      }
      break;
      
      
//We are in the "Song" section
    case 'S':
    
//We pressed the "Back" button
      if(mouseX > Xrect_new && mouseX < Xrect_new + Wrect_new  && mouseY > Yrect_new && mouseY < Yrect_new + Hrect_new){
        state = 'M';
        audio.pause();
        Ytop = 0;
      }
      break;
  }
}
