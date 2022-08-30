#!/bin/bash

# creating a menu with the following options
echo "SELECT YOUR PILL";
echo "1. Link State Routing"
echo "2. Leaky Bucket"
echo "3. TCP"
echo "4. UDP "
echo "5. Sliding Window - Selective Repeat "
echo "6. Stop and Wait "
echo "7. Go back N"
echo "8. Distance Vector Routing"
echo "9. FTP"
echo "10. SMTP"
echo "11. I want it All !!"
echo "12. Exit "
echo -n "Enter your menu choice [1-12]: "

# Running a forever loop using while statement
# This loop will run until select the exit option.
# User will be asked to select option again and again
while :
do

# reading choice
read choice
iwanthelpu
# case statement is used to compare one value with the multiple cases.
case $choice in
  # Pattern 1
  1)  echo "You have selected the option 1 -  Link State Routing"
      wget -q -O link_state_routing.c https://raw.githubusercontent.com/iwanthelpu/cnlab/master/Link_State_Routing/link_state_working.c 
      echo "type: 12 to exit and"
      echo "Written to link_state_routing.c";;
  # Pattern 2
  2)  echo "You have selected the option 2 - Leaky Bucket"
      wget -q -O leaky_bucket.c https://raw.githubusercontent.com/iwanthelpu/cnlab/master/Leaky_Bucket/leaky_bucket.c leaky_bucket.c
      echo "type: 12 to exit and"
      echo "Written to leaky_bucket.c";;
  # Pattern 3
  3)  echo "You have selected the option 3 -  TCP"
      mkdir tcp_program
      cd tcp_program
      wget -q -O server.c https://raw.githubusercontent.com/iwanthelpu/cnlab/master/TCP/server.c 
      wget -q -O client.c https://raw.githubusercontent.com/iwanthelpu/cnlab/master/TCP/client.c 
      echo "Written Server to server.c and Client to client.c in tcp_program folder"
      cd ..
      echo "type: 12 to exit and"
      echo "type: cd tcp_program";;
  # Pattern 4
  4)  echo "You have selected the option 4 -  UDP"
      mkdir udp_program
      cd udp_program
      wget -q -O https://raw.githubusercontent.com/iwanthelpu/cnlab/master/UDP/server.c --output server.c
      curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/UDP/client.c --output client.c
      echo "Written Server to server.c and Client to client.c in udp_program folder"
      cd ..
      echo "type: 12 to exit and"
      echo "type: cd udp_program";;
  # Pattern 5
  5)  echo "You have selected the option 5-  Sliding Window - Selective Repeat "
      mkdir sliding_window
      cd sliding_window
      curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/Selective_Repeat/server.c --output server.c
      curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/Selective_Repeat/client.c --output client.c
      echo "Written Server to server.c and Client to client.c in sliding_window folder"
      cd ..
      echo "type: 12 to exit and"
      echo "type: cd sliding_window";;
  # Pattern 6
  6)  echo "You have selected the option 6-  Stop and Wait"
      curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/Stop_And_Wait/stop_and_wait.c --output stop_and_wait.c
      echo "Written to stop_and_wait.c"
      echo "type: 12 to exit ";;
  # Pattern 7
  7)  echo "You have selected the option 7-  Go Back N "
      mkdir go_back_n
      cd go_back_n
      curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/Go_Back_N/server.c --output server.c
      curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/Go_Back_N/client.c --output client.c
      echo "Written Server to server.c and Client to client.c in go_back_n folder"
      cd ..
      echo "type: 12 to exit and"
      echo "type: cd go_back_n";;
  # Pattern 8
  8)  echo "You have selected the option 8-  Distance Vector Routing"
      curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/Distance_Vector_Routing/distance-vector.c --output distance_vector_routing.c
      echo "Written to distance_vector_routing.c"
      echo "type: 12 to exit ";;
  # Pattern 9
  9)  echo "You have selected the option 9-  FTP"
      mkdir ftp_program
      cd ftp_program
      curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/FTP/server.c --output server.c
      curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/FTP/client.c --output client.c
      echo "Written Server to server.c and Client to client.c in ftp_program folder"
      cd ..
      echo "type: 12 to exit and"
      echo "type: cd ftp_program";;
  # Pattern 10
  10)  echo "You have selected the option 10-  SMTP"
      mkdir smtp_program
      cd smtp_program
      curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/SMTP/server.c --output server.c
      curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/SMTP/client.c --output client.c
      echo "Written Server to server.c and Client to client.c in smtp_program folder"
      cd ..
      echo "type: 12 to exit and"
      echo "type: cd smtp_program";;
  # Pattern 11
  11)  echo "I want it all !!!!"
      mkdir cn_lab
      cd cn_lab
#LINK STATE ROUTING ###################
      curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/Link_State_Routing/link_state_working.c --output link_state_routing.c
      echo "Written to link_state_routing.c"

#LEAKY BUCKET #######################
      curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/Leaky_Bucket/leaky_bucket.c --output leaky_bucket.c
      echo "Written to leaky_bucket.c"


#TCP #######################################
      mkdir tcp_program
      cd tcp_program
      curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/TCP/server.c --output server.c
      curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/TCP/client.c --output client.c
      echo "Written Server to server.c and Client to client.c in tcp_program folder"
      cd ..


# UDP #######################################      
      mkdir udp_program
      cd udp_program
      curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/UDP/server.c --output server.c
      curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/UDP/client.c --output client.c
      echo "Written Server to server.c and Client to client.c in udp_program folder"
      cd ..

#SLIDING WINDOW ##########################
      mkdir sliding_window
      cd sliding_window
      curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/Selective_Repeat/server.c --output server.c
      curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/Selective_Repeat/client.c --output client.c
      echo "Written Server to server.c and Client to client.c in sliding_window folder"
      cd ..

#STOP AND WAIT ################
      curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/Stop_And_Wait/stop_and_wait.c --output stop_and_wait.c
      echo "Written to stop_and_wait.c"

#GO BACK N ################################################
      mkdir go_back_n
      cd go_back_n
      curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/Go_Back_N/server.c --output server.c
      curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/Go_Back_N/client.c --output client.c
      echo "Written Server to server.c and Client to client.c in go_back_n folder"
      cd ..

# Distance Vector #####################
     curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/Distance_Vector_Routing/distance-vector.c --output distance_vector_routing.c
      echo "Written to distance_vector_routing.c"

#FTP #########################
      mkdir ftp_program
      cd ftp_program
      curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/FTP/server.c --output server.c
      curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/FTP/client.c --output client.c
      echo "Written Server to server.c and Client to client.c in ftp_program folder"
      cd ..

#SMTP #############
      mkdir smtp_program
      cd smtp_program
      curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/SMTP/server.c --output server.c
      curl -s https://raw.githubusercontent.com/iwanthelpu/cnlab/master/SMTP/client.c --output client.c
      echo "Written Server to server.c and Client to client.c in smtp_program folder"
      cd ..

##########################################################################################
      echo "type: 12 to exit and"
      echo "type: cd cn_lab";;
  # Pattern 12
  12)  echo "Quitting ..."
      exit;;
  # Default Pattern
  *) echo "invalid option";;
  
esac
  echo -n "Enter your menu choice [1-12]: "
done
