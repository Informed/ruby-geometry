Geometry in Ruby
================

Implementation of basic 2D geometry algorithms in Ruby.


Installation
============
```ruby
gem 'ruby-geometry', require: 'geometry'
```


Defined geometry objects
========================

  * Point

  * Segment

  * GVector

  * Polygon

  * Line


Already implemented algorithms
==============================

  * Area of convex polygon `Polygon#area`

  * Distance from point to a line or segment `Line#distance_to(point)`, `Segment#distance_to(point)`

  * Do segments overlap? `Segments#overlaps?`

  * Do segments lie on one line? `Segment#lies_on_one_line_with?`

  * Do segments intersect? `Segment#intersects_with?`

  * Segments intersection point `Segment#intersection_point_with`

  * Does segment contain given point?  `Segment#contains_point?`

  * Are segments parallel? `Segment#parallel_to?`

  * Are gvectors collinear? `GVector#collinear_with?`

  * GVectors cross product (outer product, gvector product) `GVector#cross_product`

  * GVectors scalar product (inner product, dot product) `GVector#scalar_product`

  * Segment length `Segment#length`

  * GVector modulus `GVector#modulus`

  * Trivial gvector arithmetics: summation, subtraction, gvector-number multiplication `GVector#+(gvector); GVector#-(gvector); GVector#*(numeric)`

  * Euclid distance `Geometry#distance`

  * Line slope `Line#slope`

  * Y-intercept of a line `Line#y_intercept`

  * X-intercept of a line `Line#x_intercept`

  * Are lines parallel? `Line#parallel_to?`

  * What x-value do lines intersect at? `Line#intersect_x`

  * What is the angle between two lines? `Line#angle_to`

  * Rectangular bounds of polygon `Polygon#bounding_box`

  * Does polygon contain a given point? `Polygon#contains?`


Coming up
=========

  * Is polygon self-intersecting?

  * Is polygon convex?

  * Do polygons intersect?

  * Does circle contain given point?

  * Do circles intersect?


Copyright (c) 2008 Daniel Vartanov, released under the MIT license
