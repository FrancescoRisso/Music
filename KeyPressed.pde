/*   _______________________________________
    |                                       |
    |    THIS IS FOR ALL KEYBOARD INPUTS    |
    |_______________________________________|

For better understanding of the variables, please refer to "Variables.pde" file
*/

void keyPressed(){
  
  switch(state){
    
  //We are creating a new song, so we want to imput Title, artist and reference link
    case 'N':
      switch(input){
  
      //We are imputing the title of the song
        case 'T':
          switch(keyCode){

          //Delete key has been pressed: we delete the last char of the title
            case 8:
              if(title.length() > 0) { title = title.substring(0, title.length()-1);}
              else title = "";
              break;

          //Shift key has been pressed: we do nothing
            case 16:
              break;
              
          //Enter key has been pressed: we switch to the input of the author
            case 10:
              input = 'A';
              break;
              
          //Another key has been pressed (thus a character of the title): we append it to the already-written title
            default:
              title += key;
              break;
          }
          break;
         
      //We are imputing the artist of the song
        case 'A':
          switch(keyCode){

          //shift key has been pressed: we do nothing
            case 16:
              break;
          
          //Delete key has been pressed: we delete the last char of the artist's name
            case 8:
              if(author.length() > 0) { author = author.substring(0, author.length()-1);}
              else author = "";
              break;
              
          //Enter key has been pressed: we switch to the input of the link
            case 10:
              input = 'L';
              break;
              
          //Another key has been pressed (thus a character of the artist): we append it to the already-written link
            default:
              author += key;
              break;
          }
          break;
         
      //We are imputing the link of the folder song
        case 'L':
          switch(keyCode){

          //Shift key has been pressed: we do nothing
            case 16:
              break;
            
          //Delete key has been pressed: we delete the last char of the link
            case 8:
              if(link.length() > 0) { link = link.substring(0, link.length()-1);}
              else link = "";
              break;
              
          //Enter key has been pressed: we switch to the input of the capo pos
            case 10:
              input = 'C';
              break;
              
          //Another key has been pressed (thus a character of the link): we append it to the already-written link
            default:
              link += key;
              break;
          }
          break;
         
      //We are imputing the capo position
        case 'C':
          switch(keyCode){

          //Shift key has been pressed: we do nothing
            case 16:
              break;
            
          //Delete key has been pressed: we delete the last digit of the capo pos
            case 8:
              if(capo > 9) { capo = floor(capo/10); }
              else capo = 0;
              break;
              
          //Enter key has been pressed: we insert the new song
            case 10:
              state = 'M';
              addSong();
              link = "";
              title = "";
              author = "";
              capo = 0;
              break;
              
          //Another key has been pressed: we append it to the already-written link
            default:
              if(capo !=0){ capo = capo*10 + key - 48; }
              else { capo = key - 48; }
              break;
          }
          break;
      }
      break;
      
  //We are in the Song menu
    case 'S':
      switch(keyCode){
        
      //Spacebar has been pressed, so play/pause the song
        case 32:
          if(playing){
            audio.pause();
            playing = false;
          }
          else{
            audio.play();
            playing = true;
          }
          break;
          
        //0 has been pressed, so go to the beginning of the song
          case 48:  //(0 of the keyboard)
          case 96:  //(0 of the numpad)
            audio.rewind();
            break;
          
        //Right arrow has been pressed, so skip "skip" seconds
          case 39:
            audio.skip(skip * 1000);
            break;
          
        //Left arrow has been pressed, so return "skip" seconds back
          case 37:
            audio.skip(- skip * 1000);
            break;
      }
      break;
      
  //We are in the main menu
    case 'M':
      switch(keyCode){
        
      //Up arrow has been pressed, so scroll the list upwards
        case 40:
          Ytop += 2*Dim;
          if(Ytop > 2*(Nsongs-1)*Dim) { Ytop = 2*(Nsongs-1)*Dim; }
          break;
        
      //Down arrow has been pressed, so scroll the list downwards
        case 38:
          Ytop -= 2*Dim;
          if(Ytop < 0) { Ytop = 0; }
          break;
      }
      break;
  }
}
