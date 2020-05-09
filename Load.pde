/*   ___________________________________________
    |                                           |
    |    LOAD ALL THE DATA FROM "Index.json"    |
    |___________________________________________|
    
For better understanding of the variables, please refer to "Variables.pde" file
*/

void load(){

//The whole JSON
  index = loadJSONObject("Index.json");
  
//The "Abbreviation" part
  abbreviations = index.getJSONObject("Abbreviations");
  
//The number of songs
  Nsongs = index.getJSONObject("General").getInt("N");
  
//The Id list of the songs ordered alphabetically by title
  Alph = index.getJSONObject("General").getJSONArray("Alph").getIntArray();
  
//The half dimension of the clickable box
  Dim = index.getJSONObject("General").getInt("Dim");
  
//The list of the songs
  songs = index.getJSONArray("Songs");
 
//Removes the empty JSON object at the beginning of the list that must be there if there are no songs. 
  try{
    int tmp = songs.getJSONObject(0).getInt("ID");
  } catch(Exception e){
    songs.remove(0);
  }  
}
