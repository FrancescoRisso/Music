/*   _________________________________________
    |                                         |
    |    THIS IS FOR ALL MOUSEWHEEL INPUTS    |
    |_________________________________________|

For better understanding of the variables, please refer to "Variables.pde" file
*/

void mouseWheel(MouseEvent event){
  
//Scroll up/down the list in the main menu
  if(state == 'M'){
    Ytop += 2*Dim*event.getCount();
    if(Ytop < 0) { Ytop = 0; }
    if(Ytop > 2*(Nsongs-1)*Dim) { Ytop = 2*(Nsongs-1)*Dim; }
  }
}
