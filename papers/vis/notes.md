## SpaceTree: Supporting Exploration in Large Node Link Tree, Design Evolution and Empirical Evaluation

- Author: Catherine Plaisant, Jesse Grosjean, Benjamin B. Bederson
- Affiliation: Human-Computer Interaction Laboratory University of Maryland

### Abstract
Tree Broswer, Dynamic Rescaling of Branches, Integreted Search and Filter Function.  
This paper reflects on the evolution of the design and highlights the principles that emerged from it.

### Related Work
Space-Filling, Node-Link, Focus+Context(Overview+Detail), 3D Approach, Circular Layout,  
Focus Switch(refine the focus of interest)

## EncCon: an approach to constructing interactive visualization of large hierarchical data

- Author: Quang Vinh Nguyen, Mao Lin Huang
- Affiliation: Department of Computer Systems,
  Faculty of Information Technology,
	University of Technology, Sydney

### Contributes
`EncCon` for visualizing and navigating large hierarchical information.

### Techniques

- enclosure + connection method
	- This visualization aims to maximize the utilization of display space
	  while retaining a good geometrical layout as well as a clear (explicit)
		presentation of the hierarchical structure of graphs.
-	rectangular division algorithm
- an experimental evaluation of EncCon’s layout algorithm
- a new focusþcontext viewing technique for the navigation of large hierarchies
	- zoomingþlayering concept rather than traditional enlarge + embedded concept

### Differences
### Benefits
### Content

__Design of Interactive Visualization:__

- Layout Design
- Navigation Design

__Navigation Techniques:__

- focus+context
	- Fisheye Views
	- Polyfocal Display
	- Bifocal Lens
	- Perspective Wall
	- Hyperbolic Browser
- zooming+filtering
	- Starfield Display
	-	Tree-Maps
	-	Pad
	-	Pad++ 
	-	Piccolo
- incremental exploration

__What's the difference between `focus+contex` and `zooming+filtering`?__

### Evaluation: compare with squrified treemap

- Less edge crossings: two out of five data sets
- Little angular resolution: just slightly
- Average edge length: not better

> for medium and moderately large data sets EncCon’s
partitioning performs significantly better

### Questions

_What does the name of `EncCon` mean?_

the technique used in this paper is a `enclosure` and `connection`
approach.

_Why context view is essential? Some examples?_
> This allows users to maintain
the perception of where they are and where they can
move from during the navigation of large information
spaces.

_Focus+Context technique, Zooming+Filtering technique and Incremental Exploration?_
> Filtering the information in the form of selecting a
subset of the data along a range of numerical values of
one or more dimension.

_What are `landmark node` and `history path` mechanisms in zooming+context
and incremental exploration techniques?_
> to show the contextual information to a certain
degree during the navigation.

_What't the design consideration?_

- space utilization
- fast computation
- minimization the human cognitive process: fade in/out animation

_This paper use squarified rectangle for the area division, what's the difference
with squarified treemaps?_
> In Squarified Tree-Maps, the partitioning is accomplished through
the horizontal-vertical manner. In EncCon, this is achieved
in the circular manner, in which all rectangles are placed in the
north–east–south–west order around four sides of the parent rectangle.

