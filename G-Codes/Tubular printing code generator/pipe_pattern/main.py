import g_code_pipe as pipe
import constants
import datetime
import sys

#parameters used in the tubes
length = 5    #this is the length of the repeating unit
repetitions = 3 #this is the number of repeating units
layers = 5      #This is the number of layers for the print
spacing = 1  #This is the distance in between the fibres
#you need to duplicate the variable for multiple print in the same g-code file

#Author of Gcode:
author = "Alessandro Zedgitt"
today = datetime.datetime.now()
pattern = "tube" 
#or "tube" for the version without the alignment channels
#or "pipe" for the alignment channels to alternate with a tube
#or "channel" for the alignment channels to be layers high than wrapped by a tube
#or "custom" this mode enables a higher degree of freedom of control of the print head. Intended for seasoned users

#position definitions
starting_position=pipe.position(15, 41.5, 3.5) #position in which the polymer aderes to the shaft
stabilisation_pos=pipe.position(17, 41.5, 3.5) #start position of the stabilisation pattern
init_position=pipe.position(25,41.5,3.5) #starting position of the pattern
end_pos=pipe.position(45,41.5,3.5) #the position of the end of the pattern
safety_pos=pipe.position(70,70,20) #posiion in which the tool is safe to handle once the high voltage is turned off

#g-code generation for the preparation sequences:
header =";" + author + "\n;" + str(today) + "\n;"\
        +"Pattern = "+pattern+"\n;"\
        +"Length = " +str(length) + "   Repetitions = " + str(repetitions) +"\n;"\
        +"Layers = " +str(layers) + "   Spacing = " + str(spacing) +"\n"

starting_sequence=pipe.start_sequence(starting_position)
stabilising_sequence=pipe.stabilisation(stabilisation_pos)
ending_sequence=pipe.end_sequence(end_pos,safety_pos)

#custom pattern definition :
def custom():
    gcode = ""
    offset_1=pipe.position(5*2,0,0)
    offset_2=pipe.position(10*1,0,0)
    gcode+= pipe.tube(init_position, 5, 2, 5, 1)
    gcode+= pipe.allignement_channels(init_position+offset_1,10,1,3,0.5)
    gcode+= pipe.pipe(init_position+offset_1+offset_2, 5, 2, 5, 1)
    return gcode
    #currently this prints a 2 5mm tube of 5 layers, totaling a length of 10, spacing = 1mm. Then after the tube finishes,
    #the net pattern printed adjescently we print a channel pattern that is 10mm long of one repeating unit, with a spacing of 0.5 mm  for 
    #three layers. The last pattern is a pipe with a 5 mm repeating unit that repates twice. The fibres are spaced by 1 mm and are stacked
    #on 5 layers.

#This matches the value of the pattern variable to one of the pattern that is code below: 
match pattern:
    case "pipe":
        pattern_sequence = pipe.pipe(init_position, length, repetitions, layers, spacing)
    case "tube":
        pattern_sequence = pipe.tube(init_position, length, repetitions, layers, spacing)
    case "channel":
        pattern_sequence = pipe.allignement_channels(init_position, length, repetitions, layers, spacing)
    case "custom":
        pattern_sequence = custom()
    case _: #this case is intended to warn the user that there was an error in the pattern
        print("not an existing pattern")
        sys.exit()



#the complete g-code is stored in the data variable
data = header +"\n"  + starting_sequence +"\n" + stabilising_sequence + "\n" + pattern_sequence +"\n" + ending_sequence +"\n"
#write file with the data
with open(constants.FILE_NAME+".gcode", "w") as file:
    file.write(data)
file.close()

#ensure the file is corretly closed.
if(file.closed):
    print("Exited correctly")
else:
    print("close failed")