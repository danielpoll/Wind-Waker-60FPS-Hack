#To be inserted at 800585d0
###############################################
##FPSHack_10_STControl_CheckLeftTrigger_LowHz##
###############################################

lis r17, 0x817F
lwz r17, 0x0000 (r17) #Load LowHzFuncsRunThisFrame into r0

cmpwi r17, 1 #Check if LowHzFuncsRunThisFrame == true

#####
beq- 0x000C
##False
li r3, 0 #Return false for trigger
blr
##True
lha r0, 0x000E (r3) #VANILLA
#####