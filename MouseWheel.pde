void mouseWheel(MouseEvent event){
  Ytop += 2*Dim*event.getCount();
  if(Ytop < 0) { Ytop = 0; }
  if(Ytop > 2*(Nsongs-1)*Dim) { Ytop = 2*(Nsongs-1)*Dim; }
}
