package com.sun.tools.classfile;
/*
* Copyright (c) 2009, Oracle and/or its affiliates. All rights reserved.
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
/**
* A directed relationship between two {@link Dependency.Location Location}s.
* Subtypes of {@code Dependency} may provide additional detail about the dependency.
*
* @see Dependency.Finder
* @see Dependency.Filter
* @see Dependencies
*/
extern interface Dependency
{
	/**
	* Get the location that has the dependency.
	* @return the location that has the dependency.
	*/
	@:overload public function getOrigin() : com.sun.tools.classfile.Dependency.Dependency_Location;
	
	/**
	* Get the location that is being depended upon.
	* @return the location that is being depended upon.
	*/
	@:overload public function getTarget() : com.sun.tools.classfile.Dependency.Dependency_Location;
	
	
}
/**
* A filter used to select dependencies of interest, and to discard others.
*/
@:native('com$sun$tools$classfile$Dependency$Filter') extern interface Dependency_Filter
{
	/**
	* Return true if the dependency is of interest.
	* @param dependency the dependency to be considered
	* @return true if and only if the dependency is of interest.
	*/
	@:overload public function accepts(dependency : com.sun.tools.classfile.Dependency) : Bool;
	
	
}
/**
* An interface for finding the immediate dependencies of a given class file.
*/
@:native('com$sun$tools$classfile$Dependency$Finder') extern interface Dependency_Finder
{
	/**
	* Find the immediate dependencies of a given class file.
	* @param classfile the class file to be examined
	* @return the dependencies located in the given class file.
	*/
	@:overload @:public public function findDependencies(classfile : com.sun.tools.classfile.ClassFile) : java.lang.Iterable<com.sun.tools.classfile.Dependency>;
	
	
}
/**
* A location somewhere within a class. Subtypes of {@code Location}
* may be used to provide additional detail about the location.
*/
@:native('com$sun$tools$classfile$Dependency$Location') extern interface Dependency_Location
{
	/**
	* Get the name of the class containing the location.
	* This name will be used to locate the class file for transitive
	* dependency analysis.
	* @return the name of the class containing the location.
	*/
	@:overload public function getClassName() : String;
	
	
}
