#Mew Gcode generator for the MEWron tubular collector
#Author: Alessandro Zedgitt
#Date: August 2023
#Dependancies: math for pi definition
import math
import constants 

def pipe(init_position, x_pitch, repetitions, layers, spacing):
    #this generates straight lines that are then is wrapped around by a single tube.
    #init_position is the start position of the pattern
    #x_pitch is the length of the singular pattern
    #n is the number of repeating patterns
    #layers is the number of layers that are needed
    #spacing is the distance between the fibers
    current_pos=init_position
    next_pos=init_position
    gcode=""
    length=x_pitch*repetitions
    #compute the correct spacing for the given parameters
    n=math.floor(constants.FULL_REVOLUTION/(2*spacing))
    print(n)
    spacing=constants.FULL_REVOLUTION/n
    next_pos.x=init_position.x+length
    for i in range(layers):
        for j in range(n//2+1):
            gcode+="G1 X"+str(next_pos.x)+" Y"+str(next_pos.y)+" Z"+str(next_pos.z)+"\n"
            current_pos=next_pos
            gcode+=spacer_code(spacing,constants.v_x/constants.R_MANDREL)
            next_pos.x=current_pos.x-length
            current_pos=next_pos
            gcode+="G1 X"+str(next_pos.x)+" Y"+str(next_pos.y)+" Z"+str(next_pos.z)+"\n"
            next_pos.x=current_pos.x+length
            current_pos=next_pos
            gcode+=spacer_code(spacing,constants.v_x/constants.R_MANDREL)
        tube_pos=init_position
        tube_pos.x=tube_pos.x-length
        gcode+=tube(init_position, x_pitch, repetitions, 1, 3*spacing)
        current_pos.x=current_pos.x+length
    return gcode

def allignement_channels(init_position, x_pitch, repetitions, layers, spacing):
    #this generates straight lines that are then is wrapped around by a single tube.
    #init_position is the start position of the pattern
    #x_pitch is the length of the singular pattern
    #n is the number of repeating patterns
    #layers is the number of layers that are needed
    #spacing is the distance between the fibers
    current_pos=init_position
    next_pos=init_position
    gcode=""
    #compute the correct spacing for the given parameters
    n=math.floor(constants.FULL_REVOLUTION/(2*spacing))
    print(n)
    spacing=constants.FULL_REVOLUTION/n
    next_pos.x=init_position.x+x_pitch
    for i in range(layers):
        for j in range(n//2+1):
            gcode+="G1 X"+str(next_pos.x)+" Y"+str(next_pos.y)+" Z"+str(next_pos.z)+"\n"
            current_pos=next_pos
            gcode+=spacer_code(spacing,constants.v_x/constants.R_MANDREL)
            next_pos.x=current_pos.x-x_pitch
            current_pos=next_pos
            gcode+="G1 X"+str(next_pos.x)+" Y"+str(next_pos.y)+" Z"+str(next_pos.z)+"\n"
            next_pos.x=current_pos.x+x_pitch
            current_pos=next_pos
            gcode+=spacer_code(spacing,constants.v_x/constants.R_MANDREL)
    tube_pos=init_position
    tube_pos.x=tube_pos.x-x_pitch
    gcode+=tube(init_position, x_pitch, repetitions, 1, 3*spacing)
    current_pos.x=current_pos.x+x_pitch
    return gcode

def spacer_code(spacing,v_x):
    gcode=""
    #jetlag computation
    jetlag_distance=math.sqrt(4*constants.Qv/(math.pi*v_x))
    delay=1000*jetlag_distance/v_x #stabilising the tool in ms
    #Gcode
    gcode+="G4 P"+str(delay)+"; waits for the jetlag to diminish \n"
    gcode+="MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 \n"
    gcode+="MANUAL_STEPPER STEPPER=stepper_1 MOVE="+str(spacing)+" SPEED="+str(v_x)+" ACCEL="+str(constants.MANDREL_ACCEL)+"\n"
    gcode+="MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 \n"
    gcode+="G4 P"+str(delay)+"; waits for the jetlag to diminish \n"
    return gcode

def stabilisation(stabilisation_pos):
    gcode=";Start of the stabilising sequence \n"\
            +tube(stabilisation_pos, 5, 1, 1, 1)+"\n;end of the stabilising sequence \n"
    return gcode

def end_sequence(stop_position,safety_pos):
    gcode = "G1 X"+str(stop_position.x)+" Y"+str(stop_position.y)+" Z"+str(stop_position.z)+";defines the exit point \n" \
            +"G1 F100 ; increases the speed to break the fiber \n"\
            +"G1 X"+str(stop_position.x)+" Y"+str(stop_position.y+constants.OFFSET)+" Z"+str(stop_position.z+constants.OFFSET)+ "\n" \
            +"G1 X"+str(safety_pos.x)+" Y"+str(safety_pos.y)+" Z"+str(safety_pos.z)+";defines the exit point \n"\
            +"G1 F600 \n"\
            +"G4 P500; wait 500ms \n"
    return gcode

def start_sequence(starting_position):
    gcode="TUBE_HOME \n" \
            +"M106 S64; turn the fan on\n" \
            +";M109 S"+str(constants.TEMPERATURE)+"; set temperature of nozzle and wait until reached \n" \
            +"M220 S100 ; set feedrate to 100%\n"  \
            +"G90 ; absolute positioning\n" \
            +"G1 F3000 ; speed to get into postion \n" \
            +"G1 X"+str(starting_position.x)+" Y"+str(starting_position.y)+" Z"+str(starting_position.z)+"; set rest position \n"\
            +"G4 P500; wait time \n"

    gcode+="MANUAL_STEPPER STEPPER=stepper_1 MOVE="+str(constants.FULL_REVOLUTION*3/4)+" SPEED="+str(constants.v_theta_init)+" ACCEL="\
            +str(constants.MANDREL_ACCEL)+" SYNC=1; turns the mandrel for 360° \n"\
            +"MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 \n"
    return gcode

def tube(position, x_pitch, repetitions, layers, spacing):
    gcode=""
    #fixed parameters
    v_x=constants.v_x

    #compute parameter based on physics
    v_xmms=v_x/60 # mm/min to mm/s
    v_theta=v_xmms*2*math.pi*constants.R_MANDREL/x_pitch

    #correction of the parameters due to incompatibilities
    filler=round(constants.FULL_REVOLUTION/(spacing))
    spacing=constants.FULL_REVOLUTION/(filler)
    x_pitch=v_xmms*(constants.FULL_REVOLUTION/v_theta)

    #jetlag computation
    v_real=math.sqrt(v_x**2+v_theta**2)
    jetlag_distance=math.sqrt(4*constants.Qv/(math.pi*v_real))
    delay=1000*jetlag_distance/v_real #stabilising the tool in ms

    #defintition of the positions
    current_pos=position
    next_pos=position
    
    gcode="G1 F"+str(v_x)+"\n"\
            +"G1 X"+str(next_pos.x) +" Y"+str(next_pos.y)+" Z"+str(next_pos.z) +"\n"

    for j in range(layers): #multiple layers
        for k in range(filler):
            #forwards pattern
            gcode+="MANUAL_STEPPER STEPPER=stepper_1 MOVE="+str(constants.FULL_REVOLUTION*repetitions)+" SPEED="+str(v_theta)+" ACCEL="\
                    +str(constants.MANDREL_ACCEL)+" SYNC=0; turns the mandrel for 360° \n"\
                    +"G1 F"+ str(v_x)+" \n"
            for i in range(repetitions):  
                next_pos.x=current_pos.x+x_pitch
                one_revolution = "G1 X"+str(next_pos.x)+" Y"+str(next_pos.y)+" Z"+str(next_pos.z) +"\n"
                gcode += one_revolution
                current_pos=next_pos

            #pattern to reset the mandrel count before reversing
            gcode+= "G4 P"+str(delay)+"; wait "+str(delay)+"ms \n"\
                +"MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 \n"\
                +"G4 P"+str(delay)+"; wait "+str(delay)+"ms \n"

            #reverse pattern
            gcode+= "MANUAL_STEPPER STEPPER=stepper_1 MOVE="+str(constants.FULL_REVOLUTION*repetitions) \
                    +" SPEED="+str(v_theta)+" ACCEL="+str(constants.MANDREL_ACCEL)+" SYNC=0; turns the mandrel for 360° \n"\
                    +"G1 F"+ str(v_x)+" \n"
            for i in range(repetitions):
                next_pos.x=current_pos.x-x_pitch
                one_revolution = "G1 X"+str(next_pos.x) +" Y"+str(next_pos.y)+" Z"+str(next_pos.z) +"\n"
                gcode += one_revolution
                current_pos=next_pos
        
            #spacing pattern
            gcode+= spacer_code(spacing, v_theta)

        next_pos.z=round(current_pos.z+constants.LAYER_HEIGHT,3)
    return gcode
    
class position:
    x=0
    y=0
    z=0
    def __init__(self,x_1,x_2,x_3):
        self.x=x_1
        self.y=x_2
        self.z=x_3
    
    def __add__(self,o):
        result=position(0,0,0)
        result.x=self.x+o.x
        result.y=self.y+o.y
        result.z=self.z+o.z
        return result