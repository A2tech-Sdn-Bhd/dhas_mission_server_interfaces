# Metadata for one route in the routes library.

string name
string description
string yaml_path
int32 waypoint_count
float32 total_length_m
bool is_loop
# Drive-time estimate (minutes). Taken verbatim from the route YAML's
# ``estimated_duration_min`` field when present; otherwise computed at
# load time from ``total_length_m / routes.nominal_speed_mps / 60``.
float32 estimated_duration_min
