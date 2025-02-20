;Alessandro Zedgitt
;2023-08-18 09:53:27.138476
;Pattern = pipe
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
G1 F600
G1 X17 Y41.5 Z2.5
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X21.774648292756858 Y41.5 Z2.5
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X17.0 Y41.5 Z2.5
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=18.84955592153876 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X21.774648292756858 Y41.5 Z2.5
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X17.0 Y41.5 Z2.5
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=18.84955592153876 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X21.774648292756858 Y41.5 Z2.5
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X17.0 Y41.5 Z2.5
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=18.84955592153876 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X21.774648292756858 Y41.5 Z2.5
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X17.0 Y41.5 Z2.5
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=18.84955592153876 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X21.774648292756858 Y41.5 Z2.5
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X17.0 Y41.5 Z2.5
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=18.84955592153876 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X21.774648292756858 Y41.5 Z2.5
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X17.0 Y41.5 Z2.5
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=18.84955592153876 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X21.774648292756858 Y41.5 Z2.5
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X17.0 Y41.5 Z2.5
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=18.84955592153876 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X21.774648292756858 Y41.5 Z2.5
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X17.0 Y41.5 Z2.5
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=18.84955592153876 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X21.774648292756858 Y41.5 Z2.5
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=9 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X17.0 Y41.5 Z2.5
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=18.84955592153876 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P2.525856149777068; waits for the jetlag to diminish 

;end of the stabilising sequence 

G1 F600
G1 X30 Y41.5 Z2.5
G4 P641.5248903316593; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=0.47 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P641.5248903316593; waits for the jetlag to diminish 
G1 X25 Y41.5 Z2.5
G4 P641.5248903316593; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=0.47 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P641.5248903316593; waits for the jetlag to diminish 
G1 X30 Y41.5 Z2.5
G4 P641.5248903316593; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=0.47 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P641.5248903316593; waits for the jetlag to diminish 
G1 X25 Y41.5 Z2.5
G4 P641.5248903316593; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=0.47 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P641.5248903316593; waits for the jetlag to diminish 
G1 X30 Y41.5 Z2.5
G4 P641.5248903316593; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=0.47 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P641.5248903316593; waits for the jetlag to diminish 
G1 X25 Y41.5 Z2.5
G4 P641.5248903316593; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=0.47 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P641.5248903316593; waits for the jetlag to diminish 
G1 X30 Y41.5 Z2.5
G4 P641.5248903316593; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=0.47 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P641.5248903316593; waits for the jetlag to diminish 
G1 X25 Y41.5 Z2.5
G4 P641.5248903316593; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=0.47 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P641.5248903316593; waits for the jetlag to diminish 
G1 X30 Y41.5 Z2.5
G4 P641.5248903316593; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=0.47 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P641.5248903316593; waits for the jetlag to diminish 
G1 F600
G1 X25 Y41.5 Z2.5
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X29.774648292756858 Y41.5 Z2.5
G1 X34.549296585513716 Y41.5 Z2.5
G1 X39.323944878270574 Y41.5 Z2.5
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X34.549296585513716 Y41.5 Z2.5
G1 X29.774648292756858 Y41.5 Z2.5
G1 X25.0 Y41.5 Z2.5
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=18.84955592153876 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X29.774648292756858 Y41.5 Z2.5
G1 X34.549296585513716 Y41.5 Z2.5
G1 X39.323944878270574 Y41.5 Z2.5
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X34.549296585513716 Y41.5 Z2.5
G1 X29.774648292756858 Y41.5 Z2.5
G1 X25.0 Y41.5 Z2.5
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=18.84955592153876 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X29.774648292756858 Y41.5 Z2.5
G1 X34.549296585513716 Y41.5 Z2.5
G1 X39.323944878270574 Y41.5 Z2.5
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X34.549296585513716 Y41.5 Z2.5
G1 X29.774648292756858 Y41.5 Z2.5
G1 X25.0 Y41.5 Z2.5
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=18.84955592153876 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X29.774648292756858 Y41.5 Z2.5
G1 X34.549296585513716 Y41.5 Z2.5
G1 X39.323944878270574 Y41.5 Z2.5
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X34.549296585513716 Y41.5 Z2.5
G1 X29.774648292756858 Y41.5 Z2.5
G1 X25.0 Y41.5 Z2.5
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=18.84955592153876 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X29.774648292756858 Y41.5 Z2.5
G1 X34.549296585513716 Y41.5 Z2.5
G1 X39.323944878270574 Y41.5 Z2.5
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X34.549296585513716 Y41.5 Z2.5
G1 X29.774648292756858 Y41.5 Z2.5
G1 X25.0 Y41.5 Z2.5
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=18.84955592153876 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X29.774648292756858 Y41.5 Z2.5
G1 X34.549296585513716 Y41.5 Z2.5
G1 X39.323944878270574 Y41.5 Z2.5
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X34.549296585513716 Y41.5 Z2.5
G1 X29.774648292756858 Y41.5 Z2.5
G1 X25.0 Y41.5 Z2.5
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=18.84955592153876 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X29.774648292756858 Y41.5 Z2.5
G1 X34.549296585513716 Y41.5 Z2.5
G1 X39.323944878270574 Y41.5 Z2.5
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X34.549296585513716 Y41.5 Z2.5
G1 X29.774648292756858 Y41.5 Z2.5
G1 X25.0 Y41.5 Z2.5
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=18.84955592153876 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X29.774648292756858 Y41.5 Z2.5
G1 X34.549296585513716 Y41.5 Z2.5
G1 X39.323944878270574 Y41.5 Z2.5
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X34.549296585513716 Y41.5 Z2.5
G1 X29.774648292756858 Y41.5 Z2.5
G1 X25.0 Y41.5 Z2.5
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=18.84955592153876 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X29.774648292756858 Y41.5 Z2.5
G1 X34.549296585513716 Y41.5 Z2.5
G1 X39.323944878270574 Y41.5 Z2.5
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P0.01405439344994865; wait 0.01405439344994865ms 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=27 SPEED=18.84955592153876 ACCEL=100 SYNC=0; turns the mandrel for 360� 
G1 F600 
G1 X34.549296585513716 Y41.5 Z2.5
G1 X29.774648292756858 Y41.5 Z2.5
G1 X25.0 Y41.5 Z2.5
G4 P2.525856149777068; waits for the jetlag to diminish 
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
MANUAL_STEPPER STEPPER=stepper_1 MOVE=1.0 SPEED=18.84955592153876 ACCEL=100
MANUAL_STEPPER STEPPER=stepper_1 SET_POSITION=0 
G4 P2.525856149777068; waits for the jetlag to diminish 

G1 X40 Y41.5 Z2.5;defines the exit point 
G1 F100 ; increases the speed to break the fiber 
G1 X40 Y56.5 Z17.5
G1 X70 Y70 Z20;defines the exit point 
G4 P500; wait 500ms 

