# Dubins-Interval-Problem-DIP-

## Problem statement
This problem is a part of Mechanical Engineering coursework at Texas A&M University (MEEN 689 - SPTP: Decision making Algorithms for UAVs). Suppose a fixed-wing UAV (modeled as a Dubins’ vehicle) is used for delivering goods
to a customer among a set of N customers from a specified depot. At a specific intermediate location, the identity of the customer will be revealed to the UAV. It computes the length of the shortest path from depot to any customer as a
function of the (optimal) heading angle at the intermediate location.

- For simplicity depot, intermediate location and customer are separated by at least $2R$ distance.
- **Turning circle radius** - Unit dimension
- **Vehicle speed** - Unit dimension

## Getting Started

### Working

The total path is computed in two-stages. In the first stage a dubins' path is computed from depot to intermediate location (with heading angle varying from 0-360). In the second stage, from each of these heading angles, dubins' path is computed to the customer location.

### Script

- `Dubins_path_with_intermediate_location.jl`: Contains code which computes the Dubins' path.

### Usage

- Step 1: Clone the github repository to your local drive using the link 

```bash
git clone https://github.com/kaarthiksundar/Dubins.jl.git
```

- Step 2: Navigate to `src` folder in the `Dubins.jl` repository on your workstation.

- Step 3: Clone this repository into `Dubins.jl/src` folder using.

```bash
git clone https://github.com/pranavsp18/Dubins-Interval-Problem-DIP-.git
```

Step 3: Run `Dubins_path_with_intermediate_location.jl` to compute Dubins shortest path.

## References
https://github.com/kaarthiksundar/Dubins.jl
