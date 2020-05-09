/*   ______________________________________
    |                                      |
    |    THIS IS THE SONG PLAYER SCREEN    |
    |______________________________________|
    
For better understanding of the variables, please refer to "Variables.pde" file
*/

void song(){
  
//Setup the correct font/colour settings
  fill(255);
  stroke(255);
  textAlign(LEFT, CENTER);
  
//Display the tab image
  if(width < Max_tab_width){
    Ytab = 80 + height/2 - ((tab.height*(width-20))/tab.width * audio.position())/audio.length();
    image(tab, 10, Ytab, width-20, (tab.height*(width-20))/tab.width);
  }
  else {
    Ytab = 80 + height/2 - ((tab.height*(Max_tab_width))/tab.width * audio.position())/audio.length();
    image(tab, (width - Max_tab_width)/2, Ytab, Max_tab_width, (tab.height*(Max_tab_width))/tab.width);
  }
  
//Insert a white rectangle to avoid the song to overlap with the song's title, author and capo
  rect(0, 0, width, Ymin);
  
//Creates rectangle for "Back" button
  stroke(0);
  rect(Xrect_new, Yrect_new, Wrect_new, Hrect_new);
  
//Creates text for "Back" button
  fill(0);
  textAlign(CENTER, CENTER);
  text("Back", Xrect_new, Yrect_new, Wrect_new, Hrect_new);
  
//Creates rectangle for "Play/Pause" button
  fill(255);
  rect(Xrect_close, Yrect_new, Wrect_new, Hrect_new);
  
//Creates text for "Play/Pause" button
  fill(0);
  if(playing) { text("Pause", Xrect_close, Yrect_new, Wrect_new, Hrect_new); }
  else { text("Play", Xrect_close, Yrect_new, Wrect_new, Hrect_new); }
  
//Writes song name, artist and capo position
  if(song.getInt("capo") != 0){ text(song.getString("Title") + "\nby " + song.getString("Author") + "\ncapo " + song.getInt("capo"), width/2, 30); }
  else { text(song.getString("Title") + "\nby " + song.getString("Author") + "\nNo capo", (width-LXrect_new)/2, 30); }
}
