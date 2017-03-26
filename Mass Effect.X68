*-----------------------------------------------------------
* Title      : Mass Effect Project
* Written by : Michael Lyons (C00217557)
* Date       : 06/03/17
* Description: This is a text based game, that takes place inside the mass effect universe.
*-----------------------------------------------------------

    org $1000


*-------------------------------------------------------
*Validation values to be used, modify as needed
*Add additional validation values as required
*-------------------------------------------------------
exit            EQU 0      used to exit assembly program
min_crew        EQU 5      min crew requirement
min_rate        EQU 1      min rate of fuel use based of speed
max_rate        EQU 3      max rate e.g. Flank Speed       
hit_point       EQU 5      points accumilated on enemy ship strike
miss_point      EQU 8      points deducted for ordinace miss
max_enemies     EQU 10
red             EQU $000000FF
white           EQU $00FFFFFF


mine_loc        EQU 100    example for a hit

stamina_points  EQU 100


*Start of Game
start:
    move.l  #100,$4000 put score/health in memory location $4000
    lea     $4000,A3   assign address A3 to that memory location
    move.l  #0,D7
    bsr     welcome    branch to the welcome subroutine
    bsr     Main_Menu  branch to the main menu subroutine
    bsr     game       branch to the game subroutine
*Game loop
    org     $3000      the rest of the program is to be located from 3000 onwards

*-------------------------------------------------------
*-------------------Game Subroutine---------------------
*-------------------------------------------------------
game:
    bsr     gameloop   branch to gameloop subroutine
    rts                return from game: subroutine
          
end:
    simhalt

*-------------------------------------------------------
*-------------------Welcome Subroutine------------------
*-------------------------------------------------------
welcome:
    bsr     endl            branch to endl subroutine
    lea     welcome_msg,A1  assign message to address register A1
    move.l  #14,D0          move literal 14 to DO
    trap    #15             trap and interpret value in D0
    lea     logo,A1  assign message to address register A1
    move.l  #14,D0          move literal 14 to DO
    trap    #15             trap and interpret value in D0
    lea     logo_red,A1  assign message to address register A1
    move.l  #red,D1
    move.b  #21,D0
    trap    #15
    move.l  #14,D0          move literal 14 to DO
    trap    #15             trap and interpret value in D0
    lea     logo1,A1  assign message to address register A1
    move.l  #white,D1
    move.b  #21,D0
    trap    #15
    move.l  #14,D0          move literal 14 to DO
    trap    #15             trap and interpret value in D0
    lea     logo_red1,A1  assign message to address register A1
    move.l  #red,D1
    move.b  #21,D0
    trap    #15
    move.l  #14,D0          move literal 14 to DO
    trap    #15   
    lea     logo2,A1  assign message to address register A1
    move.l  #white,D1
    move.b  #21,D0
    trap    #15
    move.l  #14,D0          move literal 14 to DO
    trap    #15             trap and interpret value in D0
    lea     logo_red2,A1  assign message to address register A1
    move.l  #red,D1
    move.b  #21,D0
    trap    #15
    move.l  #14,D0          move literal 14 to DO
    trap    #15   
    lea     logo3,A1  assign message to address register A1
    move.l  #white,D1
    move.b  #21,D0
    trap    #15
    move.l  #14,D0          move literal 14 to DO
    trap    #15             trap and interpret value in D0
    lea     logo_red3,A1  assign message to address register A1
    move.l  #red,D1
    move.b  #21,D0
    trap    #15
    move.l  #14,D0          move literal 14 to DO
    trap    #15             trap and interpret value in D0
    lea     logo4,A1  assign message to address register A1
    move.l  #white,D1
    move.b  #21,D0
    trap    #15
    move.l  #14,D0          move literal 14 to DO
    trap    #15             trap and interpret value in D0
    lea     logo_red4,A1  assign message to address register A1
    move.l  #red,D1
    move.b  #21,D0
    trap    #15
    move.l  #14,D0          move literal 14 to DO
    trap    #15   
    lea     logo5,A1  assign message to address register A1
    move.l  #white,D1
    move.b  #21,D0
    trap    #15
    move.l  #14,D0          move literal 14 to DO
    trap    #15             trap and interpret value in D0
    lea     logo_red5,A1  assign message to address register A1
    move.l  #red,D1
    move.b  #21,D0
    trap    #15
    move.l  #14,D0          move literal 14 to DO
    trap    #15     
    lea     logo6,A1  assign message to address register A1
    move.l  #white,D1
    move.b  #21,D0
    trap    #15
    move.l  #14,D0          move literal 14 to DO
    trap    #15             trap and interpret value in D0
    lea     logo_red6,A1  assign message to address register A1
    move.l  #red,D1
    move.b  #21,D0
    trap    #15
    move.l  #14,D0          move literal 14 to DO
    trap    #15             trap and interpret value in D0
    lea     logo7,A1  assign message to address register A1
    move.l  #white,D1
    move.b  #21,D0
    trap    #15
    move.l  #14,D0          move literal 14 to DO
    trap    #15             trap and interpret value in D0
    lea     logo_red7,A1  assign message to address register A1
    move.l  #red,D1
    move.b  #21,D0
    trap    #15
    move.l  #14,D0          move literal 14 to DO
    trap    #15   
    lea     logo8,A1  assign message to address register A1
    move.l  #white,D1
    move.b  #21,D0
    trap    #15
    move.l  #14,D0          move literal 14 to DO
    trap    #15             trap and interpret value in D0
    lea     logo_red8,A1  assign message to address register A1
    move.l  #red,D1
    move.b  #21,D0
    trap    #15
    move.l  #14,D0          move literal 14 to DO
    trap    #15     
    lea     logo9,A1  assign message to address register A1
    move.l  #white,D1
    move.b  #21,D0
    trap    #15
    move.l  #14,D0          move literal 14 to DO
    trap    #15             trap and interpret value in D0
    lea     logo_red9,A1  assign message to address register A1
    move.l  #red,D1
    move.b  #21,D0
    trap    #15
    move.l  #14,D0          move literal 14 to DO
    trap    #15    
    lea     finish_logo,A1  assign message to address register A1
    move.l  #white,D1
    move.b  #21,D0
    trap    #15
    move.l  #14,D0          move literal 14 to DO
    trap    #15      
    bsr     endl            branch to endl subroutine
    rts                     return from welcome: subroutine

*-------------------------------------------------------
*-------------------Menu Subroutine---------------------
*-------------------------------------------------------
Main_Menu:
    bsr     endl
    lea     Main_Menu_msg,A1
    move.l  #14,D0
    trap    #15
    bsr     endl
    move.l  #4,D0
    trap    #15
    cmp     #exit,D1
    beq     end
    bsr     clear_screen
    bsr     gameloop 
*-------------------------------------------------------
*---------Gameplay Input Values Subroutine--------------
*-------------------------------------------------------    
input:
    bsr     Crew            branch to fuel input subroutine
    bsr     distance        branch to mission distance/location input subroutine
    rts

*-------------------------------------------------------
*----------------Gameloop (main loop)-------------------
*------------------------------------------------------- 
gameloop:
    bsr     input
    bsr     update          branch to update game subroutine 
    bsr     clear_screen    clears the screen
    bsr     gameplay        branch to gameplay subroutine
    bsr     clear_screen    clears the screen
    bsr     hud             branch to display HUD subroutine
    bsr     clear_screen    clears the screen
    bsr     replay          branch to replay game subroutine
    bsr     clear_screen    clears the screen
    rts                     return from gameloop: subroutine

*-------------------------------------------------------
*---------------Update Mission Progress-----------------
*  Move to battle location, engage enemy, fire and take
*  fire, complete mission and return to base
*------------------------------------------------------- 
update:
    bsr     clear_screen 
    bsr     endl            print a CR and LF
    bsr     decorate        decorate with dots using a loop
    lea     update_msg_1,A1
    move.l  #14,D0
    trap    #15
    move.l  #4,D0
    trap    #15
    bsr     decorate
    bsr     clear_screen 
    bsr     decorate
    lea     update_msg_2,A1
    move.l  #14,D0
    trap    #15
    move.l  #4,D0
    trap    #15
    bsr     decorate
    bsr     clear_screen 
    bsr     decorate
    lea     update_msg_3,A1
    move.l  #14,D0
    trap    #15
    move.l  #4,D0
    trap    #15
    bsr     decorate
    bsr     clear_screen 
    rts
*-------------------------------------------------------
*---------------Draw Mission Updates--------------------
* Draw the game progress information, status regarding
* mission
*------------------------------------------------------- 
draw_Win:
    bsr     endl
    bsr     decorate
    lea     draw_msg,A1
    move.l  #14,D0
    trap    #15
    move.l  #4,D0
    trap    #15
    bsr     decorate
    bsr     clear_screen
    bsr     decorate
    lea     hit_msg,A1
    move.l  #14,D0
    trap    #15
    move.l  #4,D0
    trap    #15
    lea     hit_msg,A1
    move.l  #14,D0
    trap    #15
    move.l  #4,D0
    trap    #15
    lea     hit_msg,A1
    move.l  #14,D0
    trap    #15
    move.l  #4,D0
    trap    #15
    lea     hit_msg,A1
    move.l  #14,D0
    trap    #15
    move.l  #4,D0
    trap    #15
    lea     miss_msg,A1
    move.l  #14,D0
    trap    #15
    move.l  #4,D0
    trap    #15
    lea     hit_msg,A1
    move.l  #14,D0
    trap    #15
    move.l  #4,D0
    trap    #15
    bsr     decorate
    bsr     clear_screen
    bsr     Score_Math
    rts
    
*-------------------------------------------------------
*---------------Draw Mission Updates--------------------
* Draw the game progress information, status regarding
* mission
*------------------------------------------------------- 
draw_Lose:
    bsr     endl
    bsr     decorate
    lea     draw_msg,A1
    move.l  #14,D0
    trap    #15
    move.l  #4,D0
    trap    #15
    bsr     decorate
    bsr     clear_screen
    bsr     decorate
    lea     miss_msg,A1
    move.l  #14,D0
    trap    #15
    move.l  #4,D0
    trap    #15
    lea     hit_msg,A1
    move.l  #14,D0
    trap    #15
    move.l  #4,D0
    trap    #15
    lea     miss_msg,A1
    move.l  #14,D0
    trap    #15
    move.l  #4,D0
    trap    #15
    lea     miss_msg,A1
    move.l  #14,D0
    trap    #15
    move.l  #4,D0
    trap    #15
    lea     miss_msg,A1
    move.l  #14,D0
    trap    #15
    move.l  #4,D0
    trap    #15
    lea     miss_msg,A1
    move.l  #14,D0
    trap    #15
    move.l  #4,D0
    trap    #15
    bsr     decorate
    bsr     clear_screen
    bsr     Troops_Dead
    rts
*-------------------------------------------------------
*-----------------------Crew------------------------------
* Input the crew. Each member of crew costs money
* For an advanced mark you need to manage this resource
*------------------------------------------------------- 
Crew:
    bsr     endl
    bsr     decorate
    lea     Crew_msg,A1
    move.l  #14,D0
    trap    #15
    move.l  #4,D0
    trap    #15
    cmp     #min_crew,D1
    blt     crewLessThan
    move.l  D1,D7
    bsr     decorate
    rts
*-------------------------------------------------------
*-------------------Crew Error----------------------------
* Only used if the crew number inputted is not the correct value
*-------------------------------------------------------
crewLessThan:
    bsr     endl
    bsr     decorate
    lea     Crew_Error_Message,A1
    move.l  #14,D0
    trap    #15
    bsr     decorate
    bsr     Crew
    rts


*-------------------------------------------------------
*------------------Mission Distance---------------------
* Distance to target or battle location
*------------------------------------------------------- 
distance:
    bsr     endl
    bsr     decorate
    lea     distance_msg,A1
    move.l  #14,D0
    trap    #15
    move.l  #4,D0
    trap    #15
    move.l  D1,D6
    cmp     #0,D1
    blt     distance_Error
    bsr     stamina_Maths
    bsr     decorate
    rts

*-------------------------------------------------------
*------------------Mission Distance Error----------------
* Distance to target or battle location
*------------------------------------------------------- 
distance_Error:
    bsr     endl
    bsr     decorate
    lea     distance_error_msg,A1
    move.l  #14,D0
    trap    #15
    bsr     decorate
    bsr     distance
    rts
*-------------------------------------------------------
*-----------------------Stamina Maths-------------------
* Used to work out how much stamina is used
*------------------------------------------------------- 
stamina_Maths:  
    sub    #stamina_points,D6
    cmp    #0, D6
    beq    Stamina_0
    rts

*-------------------------------------------------------
*-----------------------Stamina Failed------------------
* Used when stamina reaches 0
*------------------------------------------------------- 
Stamina_0:
    bsr     endl
    bsr     decorate
    lea     stamina_Error_Message,A1
    move.l  #14,D0
    trap    #15
    bsr     decorate
    bsr     replay
    rts

*-------------------------------------------------------
*---Game Play (Mission Progress, Battle Maneuvers)------
*------------------------------------------------------- 
gameplay:
    bsr     stamina_Maths
    bsr     collision
    rts


*-------------------------------------------------------
*-----------------Heads Up Display (Score)--------------
* Retrieves the score from memory location
*-------------------------------------------------------   
hud:

    bsr     endl
    bsr     decorate
    lea     hud_msg,A1
    move.l  #14,D0
    trap    #15
    move.l  (A3),D1     retrieve the value A3 point to and move to D1
    move.l  #3,D0       move literal 3 to D0
    trap    #15         intrepret value in D0, which 3 which displays D1
    bsr     decorate
    rts

*-------------------------------------------------------
*-----------------------Taking Fire---------------------
* This could be used for collision detection, if 
*-------------------------------------------------------
collision:
    sub     #max_enemies,D6
    cmp     #0,D6
    bgt     draw_Win
    cmp     #0,D6
    ble     draw_Lose
Score_Math:
    move.l  D6,D7
    bsr     endl
    bsr     decorate
    lea     win_message,A1
    move.l  #14,D0
    trap    #15
    bsr     endl
    bsr     decorate
    lea     hud_msg,A1
    move.l  #14,D0
    trap    #15
    move.l  D7,D1
    move.l  #3,D0
    trap    #15
    bsr     decorate
    bsr     replay

*-------------------------------------------------------
*--------------------------Game Over--------------------
*-------------------------------------------------------
Troops_Dead:
    move.l  #0,D7
    bsr     endl
    bsr     decorate
    lea     Crew_Death_Message,A1
    move.l  #14,D0
    trap    #15
    move.l  #4,D0
    trap    #15
    bsr     clear_screen
    lea     lose_message,A1
    move.l  #14,D0
    trap    #15
    bsr     endl
    bsr     decorate
    lea     hud_msg,A1
    move.l  #14,D0
    trap    #15
    move.l  D7,D1
    move.l  #3,D0
    trap    #15
    bsr     decorate
    bsr     replay

*-------------------------------------------------------
*--------------------------Loop-------------------------
*-------------------------------------------------------
loop:
    move.l  #5, D3 loop counter D3=5
next:
    lea     loop_msg,A1
    move.l  #14,D0
    trap    #15
	sub     #1,D3   decrement loop counter
    bne     next    repeat until D0=0

*-------------------------------------------------------
*------------------Screen Decoration--------------------
*-------------------------------------------------------
decorate:
    move.l  #60, D3
    bsr     endl
out:
    lea     loop_msg,A1
    move.l  #14,D0
    trap    #15
	sub     #1,D3   decrement loop counter
    bne     out	    repeat until D0=0
    bsr     endl
    rts
    
clear_screen: 
    move.l  #11,D0      clear screen
    move.l  #$ff00,D1
    trap    #15
    rts
*-------------------------------------------------------
*------------------------Replay-------------------------
*-------------------------------------------------------
replay:
    bsr     endl
    lea     replay_msg,A1
    move.l  #14,D0
    trap    #15
    
    move.l  #4,D0
    trap    #15

    cmp     #exit,D1
    beq     end         if SR Z register contains 1 beq => Branch Equals
    bsr     clear_screen 
    bsr     gameloop

endl:
    movem.l D0/A1,-(A7)
    move    #14,D0
    lea     crlf,A1
    trap    #15
    movem.l (A7)+,D0/A1
    rts
    
*-------------------------------------------------------
*-------------------Data Delarations--------------------
*-------------------------------------------------------

crlf:           dc.b    $0D,$0A,0
welcome_msg:    dc.b    '************************************************************'
                dc.b    $0D,$0A
                dc.b    'Welcome to Mass Effect'
                dc.b    $0D,$0A,0
logo:           dc.b    ' __       __    __________ ',0
logo1:                dc.b    '|**\     |**|  |**********|',0
logo2:                dc.b    '|***\    |**|  |**********|',0
logo3:                dc.b    '|****\   |**|       /****/',0
logo4:                dc.b    '|**\**\  |**|      /****/',0
logo5:                dc.b    '|**|\**\ |**|     /****/',0
logo6:                dc.b    '|**| \**\|**|    /****/',0
logo7:                dc.b    '|**|  \** **|   /****/',0
logo8:                dc.b    '|**|   \****|  /****/',0
logo9:                dc.b    '|**|    \***| /****/',0
logo_red:       dc.b    '        __ '
                dc.b    $0D,$0A,0
logo_red1:      dc.b    '       |**|'
                dc.b    $0D,$0A,0
logo_red2:      dc.b    '       |**|'
                dc.b    $0D,$0A,0
logo_red3:      dc.b    '       /***|'
                dc.b    $0D,$0A,0
logo_red4:      dc.b    '       /****|'
                dc.b    $0D,$0A.0
logo_red5:      dc.b    '       /*****|'
                dc.b    $0D,$0A,0
logo_red6:      dc.b    '       /******|'
                dc.b    $0D,$0A,0
logo_red7:      dc.b    '       /*******|'
                dc.b    $0D,$0A,0
logo_red8:      dc.b    '       /********|'
                dc.b    $0D,$0A,0
logo_red9:      dc.b    '       /*********|'
                dc.b    $0D,$0A
                dc.b    $0D,$0A,0
finish_logo:    dc.b    '************************************************************'
                dc.b    $0D,$0A,0

Main_Menu_msg:  dc.b    '************************************************************'
                dc.b    $0D,$0A
                dc.b    'Hello Commander Shepard.'
                dc.b    $0D,$0A
                dc.b    'You have been called upon to remove'
                dc.b    $0D,$0A
                dc.b    'a certain number of Reapers from 2175 Aeia.'
                dc.b    $0D,$0A
                dc.b    'We do not know how the Reapers got there,'
                dc.b    $0D,$0A
                dc.b    'but you are to eliminate them with extreme prejudice.'
                dc.b    $0D,$0A
                dc.b    'Do you accept this mission?'
                dc.b    $0D,$0A
                dc.b    'Press "1" to accept mission'
                dc.b    $0D,$0A
                dc.b    'Press "0" to decline mission'
                dc.b    $0D,$0A
                dc.b    '************************************************************'
                dc.b    $0D,$0A,0

Crew_msg:       dc.b    'Crew Amount (You need at least 5 other crew members)'
                dc.b    $0D,$0A
                dc.b    'Enter Crew Loadout : ',0
distance_msg:   dc.b    'Mission distance e.g. 40 (with full stamina  '
                dc.b    $0D,$0A
                dc.b    '60 stamina left for fight), crew '
                dc.b    $0D,$0A
                dc.b    'without stamina are killed.'
                dc.b    $0D,$0A
                dc.b    'Enter mission distance : ',0
distance_error_msg:   dc.b    'You have entered an invalid amount, please try again',0
Crew_Error_Message: dc.b 'Error, you have not entered enough crew members, please try again' ,0
stamina_Error_Message: dc.b 'You ran out of stamina, well done, your crew is dead' ,0
Crew_Death_Message: dc.b 'Your crew got overwhelmed, and got killed. Hard luck.' ,0
gameplay_msg:   dc.b    'Add Gameplay !',0
update_msg_1:   dc.b    'Moving to Location .',0
update_msg_2:   dc.b    'Moving to Location ..',0
update_msg_3:   dc.b    'Moving to Location ...',0
draw_msg:       dc.b    'Firing....',0
hit_msg:        dc.b    'Strike!',0
miss_msg:       dc.b    'Miss!',0
loop_msg:       dc.b    '.',0
replay_msg:     dc.b    'Enter 0 to Quit any other number to replay : ',0
hud_msg:        dc.b    'Score : ',0
win_message:    dc.b    '************************************************************'
                dc.b    $0D,$0A
                dc.b    'Well done Commander Shepard.'
                dc.b    $0D,$0A
                dc.b    'You have saved the planet 2175 Aeia,'
                dc.b    $0D,$0A
                dc.b    'and from your discoveries, we have learned a lot about the planet.'
                dc.b    $0D,$0A
                dc.b    'We will continue to investigate the planet more,'
                dc.b    $0D,$0A
                dc.b    'thank you Shepard.'
                dc.b    $0D,$0A
                dc.b    '************************************************************'
                dc.b    $0D,$0A,0                
lose_message:   dc.b    '************************************************************'
                dc.b    $0D,$0A
                dc.b    'This mission turned out to be Shepard',$27,'s last mission.'
                dc.b    $0D,$0A
                dc.b    'He was overcome by the Reapers on planet 2175 Aeia.'
                dc.b    $0D,$0A
                dc.b    'The Reapers will continue to multiply on this planet,'
                dc.b    $0D,$0A
                dc.b    'and the planet will no longer be habitable.'
                dc.b    $0D,$0A
                dc.b    'Travel to and from this planet is now forbidden.'
                dc.b    $0D,$0A
                dc.b    '************************************************************'
                dc.b    $0D,$0A,0  
health:     ds.w    1
score:      ds.w    1 reserve space for score

    end start



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
