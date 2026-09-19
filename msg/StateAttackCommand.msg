# Post-EKF state attack command (ROS2 -> PX4).
# Instructs the StateAttackManager to mount / update / clear an attack on one state channel.
# Channels 0..6 = nav state, 7..9 = attitude. Sending type=NONE clears the channel.

uint64 timestamp # [us] Time since system start

uint8 channel # StateChannel enum value (0..9): NAV_POS_X/Y/Z, NAV_VEL_X/Y/Z, NAV_HEADING, ATT_ROLL/PITCH/YAW
uint8 type # PrimitiveType enum value (0=NONE -> clear the attack)

float64[4] param # primitive parameters (a, b, c, d); meaning depends on 'type'

uint64 t0_us # start delay relative to command arrival (us); 0 = immediately
uint64 t1_us # duration relative to start (us); 0 = until cleared
uint32 seed # RNG seed for stochastic primitives; 0 = random
