import processing.sound.*;

void song(){
  fill(255);
  stroke(255);
  
  
  textAlign(LEFT, CENTER);
  //song = songs.getJSONObject(SongIndex);
  
  if(width < Max_tab_width){
    Ytab = 80 + height/2 - ((tab.height*(width-20))/tab.width * audio.position())/audio.length();
    image(tab, 10, Ytab, width-20, (tab.height*(width-20))/tab.width);
  }
  else {
    Ytab = 80 + height/2 - ((tab.height*(Max_tab_width))/tab.width * audio.position())/audio.length();
    image(tab, (width - Max_tab_width)/2, Ytab, Max_tab_width, (tab.height*(Max_tab_width))/tab.width);
  }
  
  rect(0, 0, width, Ymin);
  
  
  
//Creates rectangle for "Back" button
  stroke(0);
  rect(Xrect_new, Yrect_new, Wrect_new, Hrect_new);
  
//Creates rectangle for "Back" button
  fill(0);
  textAlign(CENTER, CENTER);
  text("Back", Xrect_new, Yrect_new, Wrect_new, Hrect_new);
  
  
  
  
  if(song.getInt("capo") != 0){ text(song.getString("Title") + "\nby " + song.getString("Author") + "\ncapo " + song.getInt("capo"), (width-LXrect_new)/2, 30); }
  else { text(song.getString("Title") + "\nby " + song.getString("Author") + "\nNo capo", (width-LXrect_new)/2, 30); }
}
