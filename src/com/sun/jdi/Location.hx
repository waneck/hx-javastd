package com.sun.jdi;
/*
* Copyright (c) 1998, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface Location extends com.sun.jdi.Mirror extends java.lang.Comparable<Location>
{
	/**
	* Gets the type to which this Location belongs. Normally
	* the declaring type is a {@link ClassType}, but executable
	* locations also may exist within the static initializer of an
	* {@link InterfaceType}.
	*
	* @return the {@link ReferenceType} containing this Location.
	*/
	@:overload public function declaringType() : com.sun.jdi.ReferenceType;
	
	/**
	* Gets the method containing this Location.
	*
	* @return the location's {@link Method}.
	*/
	@:overload public function method() : com.sun.jdi.Method;
	
	/**
	* Gets the code position within this location's method.
	*
	* @return the long representing the position within the method
	* or -1 if location is within a native method.
	*/
	@:overload public function codeIndex() : haxe.Int64;
	
	/**
	* Gets an identifing name for the source corresponding to
	* this location.
	* <P>
	* This method is equivalent to
	* <code>sourceName(vm.getDefaultStratum())</code> -
	* see {@link #sourceName(String)}
	* for more information.
	*
	* @return a string specifying the source
	* @throws AbsentInformationException if the source name is not
	* known
	*/
	@:overload public function sourceName() : String;
	
	/**
	* Gets an identifing name for the source corresponding to
	* this location. Interpretation of this string is the
	* responsibility of the source repository mechanism.
	* <P>
	* Returned name is for the specified <i>stratum</i>
	* (see the {@link Location class comment} for a
	* description of strata).
	* <P>
	* The returned string is the unqualified name of the source
	* file for this Location.  For example,
	* <CODE>java.lang.Thread</CODE> would return
	* <CODE>"Thread.java"</CODE>.
	*
	* @param stratum The stratum to retrieve information from
	* or <code>null</code> for the declaring type's
	* default stratum.
	*
	* @return a string specifying the source
	*
	* @throws AbsentInformationException if the source name is not
	* known
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function sourceName(stratum : String) : String;
	
	/**
	* Gets the path to the source corresponding to this
	* location.
	* <P>
	* This method is equivalent to
	* <code>sourcePath(vm.getDefaultStratum())</code> -
	* see {@link #sourcePath(String)}
	* for more information.
	*
	* @return a string specifying the source
	*
	* @throws AbsentInformationException if the source name is not
	* known
	*/
	@:overload public function sourcePath() : String;
	
	/**
	* Gets the path to the source corresponding to this
	* location. Interpretation of this string is the
	* responsibility of the source repository mechanism.
	* <P>
	* Returned path is for the specified <i>stratum</i>
	* (see the {@link Location class comment} for a
	* description of strata).
	* <P>
	* In the reference implementation, for strata which
	* do not explicitly specify source path (the Java
	* programming language stratum never does), the returned
	* string is the package name of {@link #declaringType()}
	* converted to a platform dependent path followed by the
	* unqualified name of the source file for this Location
	* ({@link #sourceName sourceName(stratum)}).
	* For example, on a
	* Windows platform, <CODE>java.lang.Thread</CODE>
	* would return
	* <CODE>"java\lang\Thread.java"</CODE>.
	*
	* @param stratum The stratum to retrieve information from
	* or <code>null</code> for the declaring type's
	* default stratum.
	*
	* @return a string specifying the source
	*
	* @throws AbsentInformationException if the source name is not
	* known
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function sourcePath(stratum : String) : String;
	
	/**
	* Gets the line number of this Location.
	* <P>
	* This method is equivalent to
	* <code>lineNumber(vm.getDefaultStratum())</code> -
	* see {@link #lineNumber(String)}
	* for more information.
	*
	* @return an int specifying the line in the source, returns
	* -1 if the information is not available; specifically, always
	* returns -1 for native methods.
	*/
	@:overload public function lineNumber() : Int;
	
	/**
	* The line number of this Location.  The line number is
	* relative to the source specified by
	* {@link #sourceName(String) sourceName(stratum)}.
	* <P>
	* Returned line number is for the specified <i>stratum</i>
	* (see the {@link Location class comment} for a
	* description of strata).
	*
	* @param stratum The stratum to retrieve information from
	* or <code>null</code> for the declaring type's
	* default stratum.
	*
	* @return an int specifying the line in the source, returns
	* -1 if the information is not available; specifically, always
	* returns -1 for native methods.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function lineNumber(stratum : String) : Int;
	
	
}
