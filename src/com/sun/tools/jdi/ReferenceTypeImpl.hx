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
extern class ReferenceTypeImpl extends com.sun.tools.jdi.TypeImpl implements com.sun.jdi.ReferenceType
{
	@:overload @:protected private function new(aVm : com.sun.jdi.VirtualMachine, aRef : haxe.Int64) : Void;
	
	@:overload @:public override public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public override public function hashCode() : Int;
	
	@:overload @:public public function compareTo(object : com.sun.jdi.ReferenceType) : Int;
	
	@:overload @:public override public function signature() : String;
	
	@:overload @:public public function genericSignature() : String;
	
	@:overload @:public public function classLoader() : com.sun.jdi.ClassLoaderReference;
	
	@:overload @:public public function isPublic() : Bool;
	
	@:overload @:public public function isProtected() : Bool;
	
	@:overload @:public public function isPrivate() : Bool;
	
	@:overload @:public public function isPackagePrivate() : Bool;
	
	@:overload @:public public function isAbstract() : Bool;
	
	@:overload @:public public function isFinal() : Bool;
	
	@:overload @:public public function isStatic() : Bool;
	
	@:overload @:public public function isPrepared() : Bool;
	
	@:overload @:public public function isVerified() : Bool;
	
	@:overload @:public public function isInitialized() : Bool;
	
	@:overload @:public public function failedToInitialize() : Bool;
	
	@:overload @:public public function fields() : java.util.List<com.sun.jdi.Field>;
	
	@:overload @:public public function visibleFields() : java.util.List<com.sun.jdi.Field>;
	
	@:overload @:public public function allFields() : java.util.List<com.sun.jdi.Field>;
	
	@:overload @:public public function fieldByName(fieldName : String) : com.sun.jdi.Field;
	
	@:overload @:public public function methods() : java.util.List<com.sun.jdi.Method>;
	
	@:overload @:public public function visibleMethods() : java.util.List<com.sun.jdi.Method>;
	
	@:overload @:abstract @:public public function allMethods() : java.util.List<com.sun.jdi.Method>;
	
	@:overload @:public public function methodsByName(name : String) : java.util.List<com.sun.jdi.Method>;
	
	@:overload @:public public function methodsByName(name : String, signature : String) : java.util.List<com.sun.jdi.Method>;
	
	@:overload @:public public function nestedTypes() : java.util.List<com.sun.jdi.ReferenceType>;
	
	@:overload @:public public function getValue(sig : com.sun.jdi.Field) : com.sun.jdi.Value;
	
	/**
	* Returns a map of field values
	*/
	@:overload @:public public function getValues(theFields : java.util.List<com.sun.jdi.Field>) : java.util.Map<com.sun.jdi.Field, com.sun.jdi.Value>;
	
	@:overload @:public public function classObject() : com.sun.jdi.ClassObjectReference;
	
	@:overload @:public public function sourceName() : String;
	
	@:overload @:public public function sourceNames(stratumID : String) : java.util.List<String>;
	
	@:overload @:public public function sourcePaths(stratumID : String) : java.util.List<String>;
	
	@:overload @:public public function sourceDebugExtension() : String;
	
	@:overload @:public public function availableStrata() : java.util.List<String>;
	
	/**
	* Always returns non-null stratumID
	*/
	@:overload @:public public function defaultStratum() : String;
	
	@:overload @:public public function modifiers() : Int;
	
	@:overload @:public public function allLineLocations() : java.util.List<com.sun.jdi.Location>;
	
	@:overload @:public public function allLineLocations(stratumID : String, sourceName : String) : java.util.List<com.sun.jdi.Location>;
	
	@:overload @:public public function locationsOfLine(lineNumber : Int) : java.util.List<com.sun.jdi.Location>;
	
	@:overload @:public public function locationsOfLine(stratumID : String, sourceName : String, lineNumber : Int) : java.util.List<com.sun.jdi.Location>;
	
	@:overload @:public public function instances(maxInstances : haxe.Int64) : java.util.List<com.sun.jdi.ObjectReference>;
	
	@:overload @:public public function majorVersion() : Int;
	
	@:overload @:public public function minorVersion() : Int;
	
	@:overload @:public public function constantPoolCount() : Int;
	
	@:overload @:public public function constantPool() : java.NativeArray<java.StdTypes.Int8>;
	
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
	@:overload @:public public function compareTo(o : Dynamic) : Int;
	
	/**
	* Gets the fully qualified name of this type. The returned name
	* is formatted as it might appear in a Java programming langauge
	* declaration for objects of this type.
	* <p>
	* For primitive classes
	* the returned name is the name of the corresponding primitive
	* type; for example, "int" is returned as the name of the class
	* represented by {@link java.lang.Integer#TYPE Integer.TYPE}.
	* @return a string containing the type name.
	*/
	@:overload @:public override public function name() : String;
	
	
}
