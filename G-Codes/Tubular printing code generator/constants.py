#constants
FULL_REVOLUTION=9   #distance that a Manual Stepper Move needs to complete a full revolution
MANDREL_ACCEL=100   #max acceleration on the mandrel applied by the motor
LAYER_HEIGHT=0 #defined as the thickness of a layer
TEMPERATURE=85 #hot-end temperature
FLOWRATE= 16#32.48 # PCL 8.12  #flow rate of the melt through the nozzle in ug/s
DENSITY=  1.25 # PHA    #1.09 polycaprolactone melt density in g/cm^3
Qv=DENSITY/FLOWRATE#Volume flow rate of the fiber
#found here: https://arxiv.org/ftp/arxiv/papers/2211/2211.04688.pdf
OFFSET=15 #safety offset to remove the tool head
FILE_NAME="tube025spacingPHA"
v_x=900 #PCL:15
v_theta_init=0.5 #speed to set for the attachment of the fibre on the mandrel
R_MANDREL=1.5 # radius of the mandrel