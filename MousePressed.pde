/*   ____________________________________
    |                                    |
    |    THIS IS FOR ALL MOUSE INPUTS    |
    |____________________________________|

For better understanding of the variables, please refer to "Variables.pde" file
*/

void mousePressed(){
  
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
        try{  //Try..catch is needed so that the app does not crash if you click somewhere else
          SongIndex = Alph[floor((mouseY - Ymin + Ytop)/(2*Dim))];
          song = songs.getJSONObject(SongIndex);
          audio = minim.loadFile(song.getString("link") + "\\Audio.mp3");
          tab = loadImage(song.getString("link") + "\\tab.png");
          state = 'S';
        }catch(Exception e){}
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
        playing = false;
        Ytop = 0;
      }
    
    //We pressed the "Play/Pause" button
      if(mouseX > Xrect_close && mouseX < Xrect_close + Wrect_new  && mouseY > Yrect_new && mouseY < Yrect_new + Hrect_new){
        if(playing) {
          playing = false;
          audio.pause();
        }
        else {
          playing = true;
          audio.play();
        }
      }
      break;
  }
}
