using LinearAlgebra, Dubins

# Constants
    
R = 1.0   # Minimum turning radius
"""
depot = [0, 0]  # Coordinates of the depot
depot_heading_angle = 0*180 / pi # Heading angle at depot
"""
q0=[0.0, 0.0, 0.0] # Intial configuration

"""
int_loc = (5,5) # Coordinates of the intermediate location
"""
q1=[5.0, 5.0, 0.0] #Intermediate location configuration
"""
customer = [-10,-10] # Considered a 20x20 grid with worst case customer location at (-10,-10) from the intermediate  location
heading_angle_cust = 90 * 180 / pi #Heading angle at customer location
"""
qc=[-10.0, -10.0, 0.0]
# best_cost = Inf  Initialized cost to very high value

angle_cost_values = Float64[]
heading_angle_values = Float64[]
heading_angle_degrees_values = Float64[]

#Brute-force search for all possible heading angles
for heading_angle in 0.0:pi/36:2*pi
    """
    Compute the cost of dubins path from starting configuration to Intermediate location and cost from Intermediate location to final configuration

    """
    q1[3] = heading_angle
    errcode_1, path_1 = dubins_shortest_path(q0, q1, R)
    path_length_1 = dubins_path_length(path_1)
    errcode_2, path_2 = dubins_shortest_path(q1, qc, R)
    path_length_2 = dubins_path_length(path_2)

    angle_cost = path_length_1 + path_length_2
    heading_angle_degrees = heading_angle * 180/ pi

    # Store the values for each iteration
    push!(heading_angle_values, heading_angle)
    push!(heading_angle_degrees_values, heading_angle_degrees)
    push!(angle_cost_values, angle_cost)
end
# Find the index of the minimum angle_cost value
min_index = argmin(angle_cost_values)

# Return the minimum angle_cost value and its corresponding heading_angle value
return (minimum(angle_cost_values), heading_angle_values[min_index], heading_angle_degrees_values[min_index])
