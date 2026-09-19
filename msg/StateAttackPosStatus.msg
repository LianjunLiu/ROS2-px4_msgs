# Post-EKF nav state attack status (PX4 -> ROS2 / logger).
# Per-channel snapshot of what the position controller actually saw (attacked-or-truth).

uint64 timestamp # [us] Time since system start
uint64 timestamp_sample # [us] vehicle_local_position.timestamp_sample this value[] was derived from

uint8[7] active # per channel: 1 = attack currently active, 0 = inactive
uint8[7] type # per channel: current PrimitiveType enum value (meaningful when active)

float64[7] param_a # per channel: primitive parameter a
float64[7] param_b # per channel: primitive parameter b
float64[7] param_c # per channel: primitive parameter c
float64[7] param_d # per channel: primitive parameter d

float64[7] value # per channel: controller-seen value (unattacked = truth); units per channel
