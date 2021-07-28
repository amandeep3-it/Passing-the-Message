# Passing the Message - Ada

Command-line based Ada Routers interaction design to enhance and develop communications and networking skills. Learning goals were to practise efficient synchronous and asynchronous interactions with the network routers amongst each other.

## Description

The networking and communication design of the program should allow the routers to understand the network topology and deliver the messages with a timeframe. There are several options available of topology, size, degree, depths, dimensions, print connections, print distances, routers settle time, comms timeout, test nide, dropouts and repeat to test the network design.

### Languages and Tools:

<img align="left" alt="Terminal" width="30px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/terminal/terminal.png" />

<br/>

---

## Getting Started

### Dependencies

* The program was executed and developed on `Windows 10 - GNAT Studio | AdaCore`.
* Should be executable on any OS and machine.

### Installing

* Clone or download the project on your local machine.

### Executing program

* The file to execute the program is `test_routers.exe`.
* The executable file is located at directory: `.\Executables`.
* `OPTIONS`:
```
   [-t {Topology            : String   }] -> CUBE_CONNECTED_CYCLES
      by Size            : Line, Ring, Star, Fully_Connected
      by Degree, Depths  : Tree
      by Dimension, Size : Mesh, Torus
      by Dimension       : Hypercube, Cube_Connected_Cycles,
                           Butterfly, Wrap_Around_Butterfly
   [-s {Size                : Positive }] ->  20
   [-g {Degree              : Positive }] ->   3
   [-p {Depths              : Positive }] ->   4
   [-d {Dimension           : Positive }] ->   3
   [-c {Print connections   : Boolean  }] -> TRUE
   [-i {Print distances     : Boolean  }] -> TRUE
   [-w {Routers settle time : Seconds  }] ->  0.10
   [-o {Comms timeout       : Seconds  }] ->  0.10
   [-m {Test mode           : String   }] -> ONE_TO_ALL
      Available modes: One_to_All, All_to_One
   [-x {Dropouts            : Natural  }] ->   0
   [-r {Repeats             : Positive }] -> 100
```
* Use the following terminal command:
```
swarm.exe [OPTIONS]
```

## Authors

* `Amandeep Singh` the primary developer.
* `Dr Uwe Zimmer` the original developer.

## Version History

* 0.2 - November 2020
    * Program completed
    * Programmed the networking and communication system.
    * Specifically programmed the files within the directory `.\Sources\Router`:
    ```
    - generic_message_structures.ads
    - generic_router.adb
    - generic_router.ads
    - packages.adb
    - packages.ads
    ```
    * Completed by `Amandeep Singh`
* 0.1 - July 2019
    * Developed the graphical interface and the router's functionalities.
    * Initial Release developed by `Dr Uwe Zimmer`
