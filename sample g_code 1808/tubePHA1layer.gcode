;Alessandro Zedgitt
;2023-08-18 10:55:19.283894
;Pattern = tube
;Length = 5   Repetitions = 3
;Layers = 1   Spacing = 1

TUBE_HOME 
M106 S64; turn the fan on
;M109 S85; set temperature of nozzle and wait until reached 
M220 S100 ; set feedrate to 100%
G90 ; absolute positioning
G1 F3000 ; speed to get into postion 
G1 X15 Y41.5 Z2.5; set rest position 
G4 P500; wait time 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=6.75 SPEED=0.5 ACCEL=100 SYNC=1; turns the mandrel for 360� 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 

;Start of the stabilising sequence 
G1 F800
G1 X17 Y41.5 Z2.5
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X21.77464829275686 Y41.5 Z2.5
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X17.0 Y41.5 Z2.5
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=25.132741228718345 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X21.77464829275686 Y41.5 Z2.5
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X17.0 Y41.5 Z2.5
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=25.132741228718345 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X21.77464829275686 Y41.5 Z2.5
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X17.0 Y41.5 Z2.5
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=25.132741228718345 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X21.77464829275686 Y41.5 Z2.5
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X17.0 Y41.5 Z2.5
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=25.132741228718345 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X21.77464829275686 Y41.5 Z2.5
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X17.0 Y41.5 Z2.5
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=25.132741228718345 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X21.77464829275686 Y41.5 Z2.5
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X17.0 Y41.5 Z2.5
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=25.132741228718345 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X21.77464829275686 Y41.5 Z2.5
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X17.0 Y41.5 Z2.5
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=25.132741228718345 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X21.77464829275686 Y41.5 Z2.5
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X17.0 Y41.5 Z2.5
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=25.132741228718345 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X21.77464829275686 Y41.5 Z2.5
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X17.0 Y41.5 Z2.5
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=25.132741228718345 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P1.6405916940090697; waits for the jetlag to diminish 

;end of the stabilising sequence 

G1 F800
G1 X25 Y41.5 Z2.5
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X29.77464829275686 Y41.5 Z2.5
G1 X34.54929658551372 Y41.5 Z2.5
G1 X39.32394487827058 Y41.5 Z2.5
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X34.54929658551372 Y41.5 Z2.5
G1 X29.77464829275686 Y41.5 Z2.5
G1 X25.0 Y41.5 Z2.5
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=25.132741228718345 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X29.77464829275686 Y41.5 Z2.5
G1 X34.54929658551372 Y41.5 Z2.5
G1 X39.32394487827058 Y41.5 Z2.5
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X34.54929658551372 Y41.5 Z2.5
G1 X29.77464829275686 Y41.5 Z2.5
G1 X25.0 Y41.5 Z2.5
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=25.132741228718345 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X29.77464829275686 Y41.5 Z2.5
G1 X34.54929658551372 Y41.5 Z2.5
G1 X39.32394487827058 Y41.5 Z2.5
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X34.54929658551372 Y41.5 Z2.5
G1 X29.77464829275686 Y41.5 Z2.5
G1 X25.0 Y41.5 Z2.5
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=25.132741228718345 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X29.77464829275686 Y41.5 Z2.5
G1 X34.54929658551372 Y41.5 Z2.5
G1 X39.32394487827058 Y41.5 Z2.5
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X34.54929658551372 Y41.5 Z2.5
G1 X29.77464829275686 Y41.5 Z2.5
G1 X25.0 Y41.5 Z2.5
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=25.132741228718345 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X29.77464829275686 Y41.5 Z2.5
G1 X34.54929658551372 Y41.5 Z2.5
G1 X39.32394487827058 Y41.5 Z2.5
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X34.54929658551372 Y41.5 Z2.5
G1 X29.77464829275686 Y41.5 Z2.5
G1 X25.0 Y41.5 Z2.5
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=25.132741228718345 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X29.77464829275686 Y41.5 Z2.5
G1 X34.54929658551372 Y41.5 Z2.5
G1 X39.32394487827058 Y41.5 Z2.5
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X34.54929658551372 Y41.5 Z2.5
G1 X29.77464829275686 Y41.5 Z2.5
G1 X25.0 Y41.5 Z2.5
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=25.132741228718345 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X29.77464829275686 Y41.5 Z2.5
G1 X34.54929658551372 Y41.5 Z2.5
G1 X39.32394487827058 Y41.5 Z2.5
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X34.54929658551372 Y41.5 Z2.5
G1 X29.77464829275686 Y41.5 Z2.5
G1 X25.0 Y41.5 Z2.5
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=25.132741228718345 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X29.77464829275686 Y41.5 Z2.5
G1 X34.54929658551372 Y41.5 Z2.5
G1 X39.32394487827058 Y41.5 Z2.5
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X34.54929658551372 Y41.5 Z2.5
G1 X29.77464829275686 Y41.5 Z2.5
G1 X25.0 Y41.5 Z2.5
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=25.132741228718345 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X29.77464829275686 Y41.5 Z2.5
G1 X34.54929658551372 Y41.5 Z2.5
G1 X39.32394487827058 Y41.5 Z2.5
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.00912859632182786; wait 0.00912859632182786ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=25.132741228718345 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F800 
G1 X34.54929658551372 Y41.5 Z2.5
G1 X29.77464829275686 Y41.5 Z2.5
G1 X25.0 Y41.5 Z2.5
G4 P1.6405916940090697; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=25.132741228718345 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P1.6405916940090697; waits for the jetlag to diminish 

G1 X40 Y41.5 Z2.5;defines the exit point 
G1 F100 ; increases the speed to break the fiber 
G1 X40 Y56.5 Z17.5
G1 X70 Y70 Z20;defines the exit point 
G4 P500; wait 500ms 

