#include<stdio.h>

int getChoice(const char* choice){
    if (choice == NULL)
       return 0;
    int length = 0;
    while (choice[length]){
          length++;
          }
    if (length == 4){
       if (choice[0] == 'r' && choice[1] == 'o' && choice[2] == 'c' && choice[3] == 'k'){
          return 1;  //1 stands for rock
          }
    }
    else if (length ==5){
         if (choice[0] == 'p' && choice[1] == 'a' && choice[2] == 'p' && choice[3] == 'e' && choice[4] == 'r'){
            return 2;   //2 stands for paper
            } 
         else if  (choice[0] == 'S' && choice[1] == 'p' && choice[2] == 'o' && choice[3] == 'c' && choice[4] == 'k'){
              return 5;   //5 stands for Spock
              }
    }
    else if (length == 6){ 
         if (choice[0] == 'l' && choice[1] == 'i' && choice[2] == 'z' && choice[3] == 'a' && choice[4] == 'r' && choice[5] == 'd'){ 
            return 4;     //4 stands for lizard
         }
    }
    else if (length == 8){
         if (choice[0] == 's' && choice[1] == 'c' && choice[2] == 'i' && choice[3] == 's' && choice[4] == 's' && choice[5] == 'o' && choice[6] == 'r' && choice[7] == 's'){ 
            return 3;     //3 stands for scissors
         }
    } 
    return 0;
    
}




int rpsls(const char *player1, const char *player2){
    int choice1 = getChoice(player1);
    int choice2 = getChoice(player2);
    if (choice1 == 0 || choice2 == 0)
       return 0;
    switch (choice1){
           case 1:
                switch (choice2){
                       case 1:
                            return 0;
                            break;
                            
                       case 3: case 4:
                            return 1;
                            break;
                            
                       default:
                               return -1;
                               }
                               break;
                               
           case 2:
                switch (choice2){
                       case 2:
                            return 0;
                            break;
                            
                       case 1: case 5:
                            return 1;
                            break;
                            
                       default:
                               return -1;
                               }
                               break;
                               
           case 3:
                switch (choice2){
                       case 3:
                            return 0;
                            break;
                            
                       case 2: case 4:
                            return 1;
                            break;
                            
                       default:
                               return -1;
                               }
                               break; 
           case 4:
                switch (choice2){
                       case 4:
                            return 0;
                            break;
                            
                       case 2: case 5:
                            return 1;
                            break;
                            
                       default:
                               return -1;
                               }
                               break;
               
           default:
                   switch (choice2){
                          case 5:
                                return 0;
                                break;
                                
                          case 1: case 3:
                               return 1;
                               break;
                          
                          default:
                                  return -1;
                                  break;
                                  
                                  }
                                  }
           
}

//int main (void)
//{
//   printf("Enter Choice in numbers (1-4) :");

//     printf ("%d\n", rpsls("rock","paper"));
//    printf ("%d\n", rpsls("rock","rock"));
//    printf ("%d\n", rpsls("paper","rock"));
//    printf ("%d\n", rpsls("lizard",(char*)0));
//    
//    return 0;
//}

// -1
//  0
//  1
//  0
