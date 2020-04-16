BEGIN{
  player_turn=1
for (i=1;i<10;i++){
  value[i]=" " 
  }
print_Pattern()
}
{
 input_from_player() 
 check()
 check_if_tie()
 print_Pattern()
}
  function print_Pattern(){
    print "   "value[1]" |  "value[2]" | "value[3]
    print " ---------------"
    print "   "value[4]" |  "value[5]" | "value[6]
    print " ----------------"
    print "   "value[7]" |  "value[8]" |  "value[9]
    }

    function input_from_player(){
      if (value[$1] != " "){
        print "invalid input "
        } else if(player_turn==1){
        value[$1]="X"
       player_turn=0 
     }
        else{
      value[$1]="0"
      player_turn=1
      }
      }

      function check(){
        if ( value[1]==value[2] && value[2]==value[3] && value[2]!=" " || value[4]==value[5] && value[5]==value[6] && value[5]!= " " || value[7]==value[8] && value[8]==value[9] && value[8]!=" " || value[1]==value[4] && value[4]==value[7] && value[4]!=" " || value[2]==value[5] && value[5]==value[8] && value[5]!=" " || value[3]==value[6] && value[6]==value[9] && value[6]!=" " || value[1]==value[5] && value[5]==value[9] && value[5]!=" " || value[3]==value[5] && value[5]==value[7] && value[5]!=" "){
         if (player_turn==1){
        print "player 2 won "
           } else {
        print "player 1 won "
         }
        exit
      }
    }
    
    function check_if_tie(){
      for (i=1;i<10;i++)
      {
        if (value[i]==" "){
          return 1
         }
       }
          print "Match is tie "
          exit
        }
