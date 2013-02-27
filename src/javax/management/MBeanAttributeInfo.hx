package javax.management;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class MBeanAttributeInfo extends javax.management.MBeanFeatureInfo implements java.lang.Cloneable
{
	/**
	* Constructs an <CODE>MBeanAttributeInfo</CODE> object.
	*
	* @param name The name of the attribute.
	* @param type The type or class name of the attribute.
	* @param description A human readable description of the attribute.
	* @param isReadable True if the attribute has a getter method, false otherwise.
	* @param isWritable True if the attribute has a setter method, false otherwise.
	* @param isIs True if this attribute has an "is" getter, false otherwise.
	*
	* @throws IllegalArgumentException if {@code isIs} is true but
	* {@code isReadable} is not, or if {@code isIs} is true and
	* {@code type} is not {@code boolean} or {@code java.lang.Boolean}.
	* (New code should always use {@code boolean} rather than
	* {@code java.lang.Boolean}.)
	*/
	@:overload public function new(name : String, type : String, description : String, isReadable : Bool, isWritable : Bool, isIs : Bool) : Void;
	
	/**
	* Constructs an <CODE>MBeanAttributeInfo</CODE> object.
	*
	* @param name The name of the attribute.
	* @param type The type or class name of the attribute.
	* @param description A human readable description of the attribute.
	* @param isReadable True if the attribute has a getter method, false otherwise.
	* @param isWritable True if the attribute has a setter method, false otherwise.
	* @param isIs True if this attribute has an "is" getter, false otherwise.
	* @param descriptor The descriptor for the attribute.  This may be null
	* which is equivalent to an empty descriptor.
	*
	* @throws IllegalArgumentException if {@code isIs} is true but
	* {@code isReadable} is not, or if {@code isIs} is true and
	* {@code type} is not {@code boolean} or {@code java.lang.Boolean}.
	* (New code should always use {@code boolean} rather than
	* {@code java.lang.Boolean}.)
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(name : String, type : String, description : String, isReadable : Bool, isWritable : Bool, isIs : Bool, descriptor : javax.management.Descriptor) : Void;
	
	/**
	* <p>This constructor takes the name of a simple attribute, and Method
	* objects for reading and writing the attribute.  The {@link Descriptor}
	* of the constructed object will include fields contributed by any
	* annotations on the {@code Method} objects that contain the
	* {@link DescriptorKey} meta-annotation.
	*
	* @param name The programmatic name of the attribute.
	* @param description A human readable description of the attribute.
	* @param getter The method used for reading the attribute value.
	*          May be null if the property is write-only.
	* @param setter The method used for writing the attribute value.
	*          May be null if the attribute is read-only.
	* @exception IntrospectionException There is a consistency
	* problem in the definition of this attribute.
	*/
	@:overload public function new(name : String, description : String, getter : java.lang.reflect.Method, setter : java.lang.reflect.Method) : Void;
	
	/**
	* <p>Returns a shallow clone of this instance.
	* The clone is obtained by simply calling <tt>super.clone()</tt>,
	* thus calling the default native shallow cloning mechanism
	* implemented by <tt>Object.clone()</tt>.
	* No deeper cloning of any internal field is made.</p>
	*
	* <p>Since this class is immutable, cloning is chiefly of
	* interest to subclasses.</p>
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* Returns the class name of the attribute.
	*
	* @return the class name.
	*/
	@:overload public function getType() : String;
	
	/**
	* Whether the value of the attribute can be read.
	*
	* @return True if the attribute can be read, false otherwise.
	*/
	@:overload public function isReadable() : Bool;
	
	/**
	* Whether new values can be written to the attribute.
	*
	* @return True if the attribute can be written to, false otherwise.
	*/
	@:overload public function isWritable() : Bool;
	
	/**
	* Indicates if this attribute has an "is" getter.
	*
	* @return true if this attribute has an "is" getter.
	*/
	@:overload public function isIs() : Bool;
	
	@:overload public function toString() : String;
	
	/**
	* Compare this MBeanAttributeInfo to another.
	*
	* @param o the object to compare to.
	*
	* @return true if and only if <code>o</code> is an MBeanAttributeInfo such
	* that its {@link #getName()}, {@link #getType()}, {@link
	* #getDescription()}, {@link #isReadable()}, {@link
	* #isWritable()}, and {@link #isIs()} values are equal (not
	* necessarily identical) to those of this MBeanAttributeInfo.
	*/
	@:overload override public function equals(o : Dynamic) : Bool;
	
	/* We do not include everything in the hashcode.  We assume that
	if two operations are different they'll probably have different
	names or types.  The penalty we pay when this assumption is
	wrong should be less than the penalty we would pay if it were
	right and we needlessly hashed in the description and parameter
	array.  */
	@:overload override public function hashCode() : Int;
	
	
}
