void menu(){  
  
  
//lists all the songs
  textAlign(CENTER, CENTER);
  for(i=0; i<Nsongs; i++){
    text(songs.getJSONObject(Alph[i]).getString("Title"), width/2, Ymin + (2*i + 1)*Dim - Ytop);
  }
  
  fill(255);
  stroke(255);
  rect(0, 0, width, Ymin);
  
  image(notes, (width - Wnotes)/2, 0, Wnotes, Ymin);
  
  stroke(0);
  //line(0, Ymin, width, Ymin);
  
  
//Creates rectangle for "Close" button
  rect(Xrect_close, Yrect_new, Wrect_new, Hrect_new);
  
//Creates text for "Close" button
  fill(0);
  textAlign(CENTER, CENTER);
  text("Close", Xrect_close, Yrect_new, Wrect_new, Hrect_new);
  
  
//Creates rectangle for "New song" button
  fill(255);
  rect(Xrect_new, Yrect_new, Wrect_new, Hrect_new);
  
//Creates text for "New song" button
  fill(0);
  textAlign(CENTER, CENTER);
  text("New song", Xrect_new, Yrect_new, Wrect_new, Hrect_new);
}
