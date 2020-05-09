/*   ____________________________________
    |                                    |
    |    THIS IS THE MAIN MENU SCREEN    |
    |____________________________________|
    
For better understanding of the variables, please refer to "Variables.pde" file
*/

void menu(){ 
  
//Lists all the songs in alphabetical order
  textAlign(CENTER, CENTER);
  for(i=0; i<Nsongs; i++){
    text(songs.getJSONObject(Alph[i]).getString("Title"), width/2, Ymin + (2*i + 1)*Dim - Ytop);
  }
  
//Creates a white rectangle to avoid songs to get in the highest zone
  fill(255);
  stroke(255);
  rect(0, 0, width, Ymin);
  
//Displays the image at the top of the menu
  image(notes, (width - Wnotes)/2, 0, Wnotes, Ymin);
  
//Creates rectangle for "Close" button
  stroke(0);
  rect(Xrect_close, Yrect_new, Wrect_new, Hrect_new);
  
//Creates text for "Close" button
  fill(0);
  text("Close", Xrect_close, Yrect_new, Wrect_new, Hrect_new);
  
  
//Creates rectangle for "New song" button
  fill(255);
  rect(Xrect_new, Yrect_new, Wrect_new, Hrect_new);
  
//Creates text for "New song" button
  fill(0);
  text("New song", Xrect_new, Yrect_new, Wrect_new, Hrect_new);
}
