package com.sun.tools.javac.file;
/*
* Copyright (c) 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class RelativePath implements java.lang.Comparable<com.sun.tools.javac.file.RelativePath>
{
	/**
	* @param p must use '/' as an internal separator
	*/
	@:overload private function new(p : String) : Void;
	
	@:overload @:abstract public function dirname() : com.sun.tools.javac.file.RelativePath.RelativePath_RelativeDirectory;
	
	@:overload @:abstract public function basename() : String;
	
	@:overload public function getFile(directory : java.io.File) : java.io.File;
	
	@:overload public function compareTo(other : com.sun.tools.javac.file.RelativePath) : Int;
	
	@:overload public function equals(other : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function toString() : String;
	
	@:overload public function getPath() : String;
	
	private var path(default, null) : String;
	
	/**
	* Compares this object with the specified object for order.  Returns a
	* negative integer, zero, or a positive integer as this object is less
	* than, equal to, or greater than the specified object.
	*
	* <p>The implementor must ensure <tt>sgn(x.compareTo(y)) ==
	* -sgn(y.compareTo(x))</tt> for all <tt>x</tt> and <tt>y</tt>.  (This
	* implies that <tt>x.compareTo(y)</tt> must throw an exception iff
	* <tt>y.compareTo(x)</tt> throws an exception.)
	*
	* <p>The implementor must also ensure that the relation is transitive:
	* <tt>(x.compareTo(y)&gt;0 &amp;&amp; y.compareTo(z)&gt;0)</tt> implies
	* <tt>x.compareTo(z)&gt;0</tt>.
	*
	* <p>Finally, the implementor must ensure that <tt>x.compareTo(y)==0</tt>
	* implies that <tt>sgn(x.compareTo(z)) == sgn(y.compareTo(z))</tt>, for
	* all <tt>z</tt>.
	*
	* <p>It is strongly recommended, but <i>not</i> strictly required that
	* <tt>(x.compareTo(y)==0) == (x.equals(y))</tt>.  Generally speaking, any
	* class that implements the <tt>Comparable</tt> interface and violates
	* this condition should clearly indicate this fact.  The recommended
	* language is "Note: this class has a natural ordering that is
	* inconsistent with equals."
	*
	* <p>In the foregoing description, the notation
	* <tt>sgn(</tt><i>expression</i><tt>)</tt> designates the mathematical
	* <i>signum</i> function, which is defined to return one of <tt>-1</tt>,
	* <tt>0</tt>, or <tt>1</tt> according to whether the value of
	* <i>expression</i> is negative, zero or positive.
	*
	* @param   o the object to be compared.
	* @return  a negative integer, zero, or a positive integer as this object
	*          is less than, equal to, or greater than the specified object.
	*
	* @throws NullPointerException if the specified object is null
	* @throws ClassCastException if the specified object's type prevents it
	*         from being compared to this object.
	*/
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public public function compareTo(o : Dynamic) : Int;
	
	
}
/**
* Used to represent a platform-neutral subdirectory within a platform-specific
* container, such as a directory or zip file.
* Internally, the file separator is always '/', and if the path is not empty,
* it always ends in a '/' as well.
*/
@:native('com$sun$tools$javac$file$RelativePath$RelativeDirectory') extern class RelativePath_RelativeDirectory extends com.sun.tools.javac.file.RelativePath
{
	/**
	* @param p must use '/' as an internal separator
	*/
	@:overload public function new(p : String) : Void;
	
	/**
	* @param p must use '/' as an internal separator
	*/
	@:overload public function new(d : com.sun.tools.javac.file.RelativePath.RelativePath_RelativeDirectory, p : String) : Void;
	
	@:overload override public function dirname() : com.sun.tools.javac.file.RelativePath.RelativePath_RelativeDirectory;
	
	@:overload override public function basename() : String;
	
	@:overload override public function toString() : String;
	
	
}
/**
* Used to represent a platform-neutral file within a platform-specific
* container, such as a directory or zip file.
* Internally, the file separator is always '/'. It never ends in '/'.
*/
@:native('com$sun$tools$javac$file$RelativePath$RelativeFile') extern class RelativePath_RelativeFile extends com.sun.tools.javac.file.RelativePath
{
	@:overload public function new(p : String) : Void;
	
	/**
	* @param p must use '/' as an internal separator
	*/
	@:overload public function new(d : com.sun.tools.javac.file.RelativePath.RelativePath_RelativeDirectory, p : String) : Void;
	
	@:overload override public function dirname() : com.sun.tools.javac.file.RelativePath.RelativePath_RelativeDirectory;
	
	@:overload override public function basename() : String;
	
	@:overload override public function toString() : String;
	
	
}
