package com.sun.tools.jdi;
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
extern class MethodImpl extends com.sun.tools.jdi.TypeComponentImpl implements com.sun.jdi.Method
{
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	@:overload override public function hashCode() : Int;
	
	@:overload @:final public function allLineLocations() : java.util.List<com.sun.jdi.Location>;
	
	@:overload public function allLineLocations(stratumID : String, sourceName : String) : java.util.List<com.sun.jdi.Location>;
	
	@:overload @:final public function locationsOfLine(lineNumber : Int) : java.util.List<com.sun.jdi.Location>;
	
	@:overload public function locationsOfLine(stratumID : String, sourceName : String, lineNumber : Int) : java.util.List<com.sun.jdi.Location>;
	
	/**
	* @return a text representation of the declared return type
	* of this method.
	*/
	@:overload public function returnTypeName() : String;
	
	@:overload public function returnType() : com.sun.jdi.Type;
	
	@:overload public function findType(signature : String) : com.sun.jdi.Type;
	
	@:overload public function argumentTypeNames() : java.util.List<String>;
	
	@:overload public function argumentSignatures() : java.util.List<String>;
	
	@:overload public function argumentTypes() : java.util.List<com.sun.jdi.Type>;
	
	@:overload public function compareTo(method : com.sun.jdi.Method) : Int;
	
	@:overload public function isAbstract() : Bool;
	
	@:overload public function isSynchronized() : Bool;
	
	@:overload public function isNative() : Bool;
	
	@:overload public function isVarArgs() : Bool;
	
	@:overload public function isBridge() : Bool;
	
	@:overload public function isConstructor() : Bool;
	
	@:overload public function isStaticInitializer() : Bool;
	
	@:overload public function isObsolete() : Bool;
	
	@:overload override public function toString() : String;
	
	/**
	* Gets the VirtualMachine to which this
	* Mirror belongs. A Mirror must be associated
	* with a VirtualMachine to have any meaning.
	*
	* @return the {@link VirtualMachine} for which this mirror is a proxy.
	*/
	@:overload @:public override public function virtualMachine() : com.sun.jdi.VirtualMachine;
	
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
	@:overload @:public @:public @:public @:public public function compareTo(o : Dynamic) : Int;
	
	/**
	* Returns the Java<sup><font size=-2>TM</font></sup>
	* programming language modifiers, encoded in an integer.
	* <p>
	* The modifier encodings are defined in
	* <cite>The Java&trade; Virtual Machine Specification</cite>
	* in the <code>access_flag</code> tables for classes(section 4.1), fields(section 4.5), and methods(section 4.6).
	*/
	@:overload override public function modifiers() : Int;
	
	
}
/*
* A container class for the return value to allow
* proper type-checking.
*/
@:native('com$sun$tools$jdi$MethodImpl$ReturnContainer') @:internal extern class MethodImpl_ReturnContainer implements com.sun.tools.jdi.ValueContainer
{
	@:overload public function type() : com.sun.jdi.Type;
	
	@:overload public function typeName() : String;
	
	@:overload public function signature() : String;
	
	@:overload public function findType(signature : String) : com.sun.jdi.Type;
	
	
}
/*
* A container class for the argument to allow
* proper type-checking.
*/
@:native('com$sun$tools$jdi$MethodImpl$ArgumentContainer') @:internal extern class MethodImpl_ArgumentContainer implements com.sun.tools.jdi.ValueContainer
{
	@:overload public function type() : com.sun.jdi.Type;
	
	@:overload public function typeName() : String;
	
	@:overload public function signature() : String;
	
	@:overload public function findType(signature : String) : com.sun.jdi.Type;
	
	
}
