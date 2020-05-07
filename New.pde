void newSong(){
  
//Creates rectangle for "Back" button
  fill(255);
  rect(Xrect_new, Yrect_new, Wrect_new, Hrect_new);
  
//Creates rectangle for "Back" button
  fill(0);
  textAlign(CENTER, CENTER);
  text("Back", Xrect_new, Yrect_new, Wrect_new, Hrect_new);
  
//Set up the correct font setup
  textAlign(LEFT, TOP);
  
  switch(input){
//We have to input or we have already inserted the link
    case 'C':
      text("Insert capo position:\n\n" + capo, 20, 360);
      
//We have to input or we have already inserted the link
    case 'L':
      text("Insert folder name:\n\n" + link, 20, 270);
    
//We have to input or we have already inserted the author
    case 'A':
      text("Insert artist:\n\n" + author, 20, 180);
    
//We have to input or we have already inserted the title 
    case 'T':
      text("Insert title:\n\n" + title, 20, 90);
  }
  
  
  
}




void addSong(){
  
//Adds all the infos of the song in this "song" JSON object
  song = new JSONObject();
  song.setInt("ID", Nsongs);
  song.setString("Title", title);
  song.setString("Author", author);
  song.setString("link", link);
  song.setInt("capo", capo);

//Adds the song to the "songs" list
  songs.append(song);
  
//Creates the new "general" section og Input.json (N increased by 1)
  general = new JSONObject();
  general.setInt("N", Nsongs + 1);
  general.setInt("Dim", Dim);
  
  i = 0;
  title = title.toLowerCase();
  found = false;
  
  while(i < Nsongs && !found){
    j = 0;
    tmp = songs.getJSONObject(Alph[i]).getString("Title").toLowerCase();
    while(title.charAt(j) == tmp.charAt(j)){
      j++;
    }
    
    if(title.charAt(j) < tmp.charAt(j)){
      found = true;
      j = Alph[i];
      Alph[i] = Nsongs;
    }
    i++;
  }
  
  k = Nsongs;
  Alph = append(Alph, 0);
  
  if(!found) { Alph[Nsongs] = Nsongs; }
  else{
    while(Alph[k-1] < Nsongs){
      Alph[k] = Alph[k-1];
      k--;
    }
    Alph[k] = j;
  }
  
  tmp_arr = new JSONArray();
  for(i=0; i <= Nsongs; i++){ tmp_arr.append(Alph[i]); }
  
  general.setJSONArray("Alph", tmp_arr);
  
//Sets up the "index" JSON object to be the updated version of Input.json
  index.setJSONObject("Abbreviations", abbreviations);
  index.setJSONObject("General", general);
  index.setJSONArray("Songs", songs);
  
//Overwrites the old Input.json with the new data
  saveJSONObject(index ,"data/Index.json");
  
//Reloads the new Index.json into the program variables
  load();
  
  println("Done");
}
