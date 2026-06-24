# Public state of the mission server. Latched on /mission/state.
#
# State enum.
uint8 STATE_IDLE = 0
uint8 STATE_LOADED = 1
uint8 STATE_RUNNING = 2
uint8 STATE_PAUSED = 3
uint8 STATE_RETURNING_HOME = 4
uint8 STATE_COMPLETED = 5
uint8 STATE_ABORTED = 6
# Planner is currently vetoing the path (obstacle, infeasible plan, or
# stale plan source). The controller stays armed and braked while in
# this state; mission_server recovers to RUNNING/RETURNING_HOME as soon
# as ``plan_safe`` returns. Aborted after
# ``mission.obstacle_wait_timeout_sec`` if the block persists.
uint8 STATE_BLOCKED = 7

uint8 state
string route_name
string status_message
int32 current_index
int32 total_waypoints
float32 distance_remaining_m
