package javax.swing.text.html;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
@:internal extern class Map implements java.io.Serializable
{
	@:overload public function new() : Void;
	
	@:overload public function new(name : String) : Void;
	
	/**
	* Returns the name of the Map.
	*/
	@:overload public function getName() : String;
	
	/**
	* Defines a region of the Map, based on the passed in AttributeSet.
	*/
	@:overload public function addArea(as : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Removes the previously created area.
	*/
	@:overload public function removeArea(as : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Returns the AttributeSets representing the differet areas of the Map.
	*/
	@:overload public function getAreas() : java.NativeArray<javax.swing.text.AttributeSet>;
	
	/**
	* Returns the AttributeSet that contains the passed in location,
	* <code>x</code>, <code>y</code>. <code>width</code>, <code>height</code>
	* gives the size of the region the map is defined over. If a matching
	* area is found, the AttribueSet for it is returned.
	*/
	@:overload public function getArea(x : Int, y : Int, width : Int, height : Int) : javax.swing.text.AttributeSet;
	
	/**
	* Creates and returns an instance of RegionContainment that can be
	* used to test if a particular point lies inside a region.
	*/
	@:overload private function createRegionContainment(attributes : javax.swing.text.AttributeSet) : Map_RegionContainment;
	
	/**
	* Creates and returns an array of integers from the String
	* <code>stringCoords</code>. If one of the values represents a
	* % the returned value with be negative. If a parse error results
	* from trying to parse one of the numbers null is returned.
	*/
	@:overload private static function extractCoords(stringCoords : Dynamic) : java.NativeArray<Int>;
	
	
}
/**
* Defines the interface used for to check if a point is inside a
* region.
*/
@:native('javax$swing$text$html$Map$RegionContainment') @:internal extern interface Map_RegionContainment
{
	/**
	* Returns true if the location <code>x</code>, <code>y</code>
	* falls inside the region defined in the receiver.
	* <code>width</code>, <code>height</code> is the size of
	* the enclosing region.
	*/
	@:overload public function contains(x : Int, y : Int, width : Int, height : Int) : Bool;
	
	
}
/**
* Used to test for containment in a rectangular region.
*/
@:native('javax$swing$text$html$Map$RectangleRegionContainment') @:internal extern class Map_RectangleRegionContainment implements Map_RegionContainment
{
	@:overload public function new(as : javax.swing.text.AttributeSet) : Void;
	
	@:overload public function contains(x : Int, y : Int, width : Int, height : Int) : Bool;
	
	@:overload public function contains(x : Int, y : Int) : Bool;
	
	
}
/**
* Used to test for containment in a polygon region.
*/
@:native('javax$swing$text$html$Map$PolygonRegionContainment') @:internal extern class Map_PolygonRegionContainment extends java.awt.Polygon implements Map_RegionContainment
{
	@:overload public function new(as : javax.swing.text.AttributeSet) : Void;
	
	@:overload public function contains(x : Int, y : Int, width : Int, height : Int) : Bool;
	
	
}
/**
* Used to test for containment in a circular region.
*/
@:native('javax$swing$text$html$Map$CircleRegionContainment') @:internal extern class Map_CircleRegionContainment implements Map_RegionContainment
{
	@:overload public function new(as : javax.swing.text.AttributeSet) : Void;
	
	@:overload public function contains(x : Int, y : Int, width : Int, height : Int) : Bool;
	
	
}
/**
* An implementation that will return true if the x, y location is
* inside a rectangle defined by origin 0, 0, and width equal to
* width passed in, and height equal to height passed in.
*/
@:native('javax$swing$text$html$Map$DefaultRegionContainment') @:internal extern class Map_DefaultRegionContainment implements Map_RegionContainment
{
	@:overload public static function sharedInstance() : Map_DefaultRegionContainment;
	
	@:overload public function contains(x : Int, y : Int, width : Int, height : Int) : Bool;
	
	
}
