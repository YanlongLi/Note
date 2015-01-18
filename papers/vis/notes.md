
## SpaceTree: Supporting Exploration in Large Node Link Tree, Design Evolution and Empirical Evaluation

- Author: Catherine Plaisant, Jesse Grosjean, Benjamin B. Bederson
- Affiliation: Human-Computer Interaction Laboratory University of Maryland

### Abstract

Tree Browser, Dynamic Rescaling of Branches, Integrated Search and Filter Function.  
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
- a new focus+context viewing technique for the navigation of large hierarchies
	- zooming-layering concept rather than traditional enlarge + embedded concept

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



## TreeJuxtaposer: Scalable Tree Comparison using Focus+Context with Guaranteed Visibility

- Author: Tamara Munzner, Francois Guimbretiere, Serdar Tasiran, Li Zhang, Yunhong Zhou
- Affiliation: 

### Abstract

Structual comparison of large trees.  
System designed to support the comparison task for large trees of several hundred thousand nodes.  
Concept of "Guaranteed Visibility"  
A new Methodology for detailed structural comparison between two trees.  
A new nearly-linear algorithm for computing the best corresponding node from one tree to another.  
A new rectilinear Focus+Context technique for navigation.  


## TreePlus: Interactive Exploration of Networks with Enhanced Tree Layouts

- Author: Bongshin Lee, Cynthia S. Parr, Catherine Plaisant, Benjamin B. Bederson, Vladislav D. Veksler, Wayne D. Gray, and Christopher Kotfila
- Affiliation: Human-ComputerInteractionLaboratoryattheUniversity of Maryland
- Year: 2006

### Abstract
effective interactive layouts for large graphs.  
“Plant a seed and watch it grow.”  

### Design Goals

- Take advantage of human perception of trees
- make as many nodes of readable as apssible
- maximize stability of layout
- offer preview before commiting
- provide multistep animations so users can follow changes

### Showing hidden graph structure

- hilighting and preview of adjacent nodes
- animated update of tree structure
- visual hints of graph structure

### Questions

__What makes this paper special?__

__What problems does this paper solve?__


## Visual Exploration of Time-Series Data with Shape Space Projections

__not quite understand this paper tell__

- Author: Matthew O. Ward and Zhenyu Guo
- Affiliation: Computer Science Department Worcester Polytechnic Institute Worcester, MA USA
- Year: 2011

### Abstract

Time-series Data Visulization  
Typical tasks: identifying cyclic behaviour, outliers, trends, periods of time that share distinctive shape characteristic.  
None to date is a complete solution.  
Borrowing idea from text analysis, [n-gram][]

[n-gram]: http://en.wikipedia.org/wiki/N-gram

## VISUALIZING DYNAMIC QUANTITATIVE DATA IN HIERARCHIES TimeEdgeTrees: Attaching Dynamic Weights to Tree Edges

- Author: Michael Burch, Daniel Weiskopf
- Affiliation: VISUS, University of Stuttgar
- Year: IVAPP2011

### Abstract

visualizing the dynamics of quantitative data in static hierarchical structure.  
orthogonal tree diagrams as a timeline.  
use color coding and varying thicknesses to represent the time-varying data.  
explore trends, countertrends, periodicity, temporal shifts, or anomalies during the evolution synchronously.

![time edge trees](_img/time-edge-trees.png)

### Interactive Features

- expanding and collapsing of subhierarchies
- selecting specific time interval
- weight filtering
- geometric zomming
- apply color coding
- thickness slider
- labeling
- detail-on-demand

### Applications

water level data for German rivers

### Questions

__Any drawbacks of this vis technique?__

It shows the characteristics of some nodes, while we couldn't get the
comparison info from this technique.

__Basic idea of TimeEdgeTree?__

encode time information on edges


## TimeRadar Trees: Visualizing Daymamic Compound Digraphs

- Author: M.Burch, S.Diehl
- Affiliation: University of Trier, Germany
- Year: VGTC2008

### Basic Idea

It uses radial tree layout to draw the hierarchy, and circle sectors to represent the temporal change of edges in the digraphs.  
several interaction techniques that allow the users to explore the structural and temporal data.  
Smooth animations help them to track the transitions between views.  
visualize dependencies between elements in the hierarchy.

this paper gives a different point on tree/graph, it visualizes 
the weighted relation of node in tree/graph.
it use circle sectors to represent edges.

**common ways to represent edges**:color, shape, style, thickness, orientation, connection

### encoding

![graph encoding](_img/time-radar-tree.png)

advantage: no edge crossings leading to visual cluster

### Applications

### Soccer Match Result

### Triplet Codes in Gene Sequence

encode the codon distribution in gene sequence.

advantage: it encode the match to color in outer circle, so 
it can be used to get an overview of the incomming edges.
a detail-on-demaind request may help to explore info at match level.

### Questions

__What's the meaning of "sequences of compound digraphs with edge weights"?__

__TimeRadarTree, what's the relation with time?__

### Comments

这篇论文的主要不同之处在于对图或者树的加权边进行可视化，通过encode边来显示点与点之间的关系。
从一个Overview中可以看出关系的大体情况，从这点出发，用户可以发现一些有价值的信息，再进行深一步的探索。
交互方式主要集中于zoom in/out以及highlight，brushing，tool tips上。
平滑的动画(smooth animatiion)有助于用户跟踪可视结果的变化。
**Application Domains**: 层次数据中叶子节点之间的关系，所以app domain比较局限在这一类特殊的tree上，


## Multiple foci visualisation of large hierarchies with FlexTree

- Author: Hongzhi Song, Edwin P. Curran, Roy Sterritt
- Affiliation: School of Computing and Mathematics, Faculty of Engineering, University of Ulster at Jordanstown, Northern Ireland, UK
- Year: InfoVis 2004

Visiualizing large hierarchies is a difficult topic.
One is how to handle the increasing scale of hierarchies.
One is how to enable the user to focus on multiple selections of interest while maintaining context.

node-link base techniques and space-filling(enclosure or containment) techniques both have their advantages and disadvantages.
it it not always approprite to say that the space-filling approach is better than the connection-based approach.
which technique to choose is mainly determined by the task domain.
this paper tries to bridge the gap.

treemaps are better than node-link base techniques in terms of scalibility and the ability to depict node content information.
this paper enhanced these two point in node-link base technique by introducing the space-filling concept into node-link diagram.
also, it has a special design for the representation of node, so their content can be visualized.**HOW?**

from the feedback, it is found that flextree is suitable for __decision tree__ 

## Elastic Hierarchies: Combining Treemaps and  Node-Link Diagrams

- Authro: Shengdong Zhao, Michael J. McGuffin, Mark H. Chignell
- Affiliation: University of Toronto 
- Year: InfoVis 2005

### Contributions

`elastic hierarchies`

`elastic` 意为易伸缩的
这篇文章将treemap和node-link图结合的方式展示层次数据，
在不同的层次采用不同的展示方式，因此可以用在多种信息可视化中。
同时，elastic hierarchies可以结合不同的可视化策略，诸如focus+contex，multi-view等。
elastic hierarchies上有很大的设计空间。

**What is elastic hierarchies?**

`hybrid mixture`: space-efficiency of treemap,
structural clarity of node-link diagram

Taxonomy to characterize the design space of such hybrid combination.

Our work investigates improving tree representations using dynamically adjustable hybrids,
i.e. elastic hierarchies, and focuses on the case of combining Treemaps and node-link diagrams in a single display.

in term of comparison, treemap allow visual comparison of the relative sizes of nodes, and node-link diagram is better at show the levels and depth.

在交互上，treemap的内部节点空间被其子节点完全占据，这就给用户选择这些节点造成了困难。通过添加边界和边距的方式只能在很小程度上改善状况。
论文中给出的prototype在这方面也给出了方法。

## InterRing: A Visual Interface for Navigating and Manipulating Hierarchies

- Author: Yang, Jing Ward, Matthew O Rundensteiner, Elke A Patro, Anilkumar
- Affiliation: Computer Science Department Worcester Polytechnic Institute
- Year: InfoVis2003

`RSF`: Ratial, Space-Filling technique

RSF方式跟传统的node-link相比有不少优点，RSF方式继承于Treemap，所以能够有效的利用
可视空间，同时RSF克服了treemap不能有效传达层次信息的缺点。现有的很多给予RSF的系统和工具都在交互操作上有不同程度的支持。
这篇文章阐述了在层次数据上的一个比较能够让人满意的操作集合。

文章展示了InterRing这样一个可视化层次数据的系统，支持大量的交互操作，
特别的，它能够支持

- multi-focus distortions
- interactive hierarchy reconfiguration
- both semi-automated and manual selection

把系统引用在一些数据上，通过和其他方式的比较说明了系统的高效性和实用性。
