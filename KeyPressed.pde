//KEYBOARD

void keyPressed(){

//We are creating a new song, so we want to imput Title, artist and reference link
  switch(state){
    case 'N':
      switch(input){
  
//We are imputing the title of the song
        case 'T':
          switch(keyCode){

//delete key has been pressed: we delete the last char of the title
            case 8:
              if(title.length() > 0) { title = title.substring(0, title.length()-1);}
              else title = "";
              break;

//shift key has been pressed: we do nothing
            case 16:
              break;
              
//enter key has been pressed: we switch to the input of the author
            case 10:
              input = 'A';
              break;
              
//another key has been pressed: we append it to the already-written title
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
            
//delete key has been pressed: we delete the last char of the artist's name
            case 8:
              if(author.length() > 0) { author = author.substring(0, author.length()-1);}
              else author = "";
              break;
              
//enter key has been pressed: we switch to the input of the link
            case 10:
              input = 'L';
              break;
              
//another key has been pressed: we append it to the already-written link
            default:
              author += key;
              break;
          }
         break;
         
//We are imputing the link of the folder song
         case 'L':
          switch(keyCode){

//shift key has been pressed: we do nothing
            case 16:
              break;
            
//delete key has been pressed: we delete the last char of the link
            case 8:
              if(link.length() > 0) { link = link.substring(0, link.length()-1);}
              else link = "";
              break;
              
//enter key has been pressed: we switch to the input of the capo pos
            case 10:
              input = 'C';
              break;
              
//another key has been pressed: we append it to the already-written link
            default:
              link += key;
              break;
          }
         break;
         
//We are imputing the capo position
         case 'C':
          switch(keyCode){

//shift key has been pressed: we do nothing
            case 16:
              break;
            
//delete key has been pressed: we delete the last digit of the capo pos
            case 8:
              if(capo > 9) { capo = floor(capo/10); }
              else capo = 0;
              break;
              
//enter key has been pressed: we insert the new song
            case 10:
              state = 'M';
              link = sketchPath("") + "data\\" + link;
              addSong();
              link = "";
              title = "";
              author = "";
              capo = 0;
              break;
              
//another key has been pressed: we append it to the already-written link
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
        
//Spacebar has been pressed
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
          
//0 has been pressed
          case 96:
            audio.rewind();
            break;
          
//right arrow has been pressed
          case 39:
            audio.skip(skip * 1000);
            break;
          
//left arrow has been pressed
          case 37:
            audio.skip(- skip * 1000);
            break;
            
        default:
          println(keyCode);
          break;
      }
      
  }
}
