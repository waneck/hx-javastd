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
extern class MBeanConstructorInfo extends javax.management.MBeanFeatureInfo implements java.lang.Cloneable
{
	/**
	* Constructs an <CODE>MBeanConstructorInfo</CODE> object.  The
	* {@link Descriptor} of the constructed object will include
	* fields contributed by any annotations on the {@code
	* Constructor} object that contain the {@link DescriptorKey}
	* meta-annotation.
	*
	* @param description A human readable description of the operation.
	* @param constructor The <CODE>java.lang.reflect.Constructor</CODE>
	* object describing the MBean constructor.
	*/
	@:overload public function new(description : String, constructor : java.lang.reflect.Constructor<Dynamic>) : Void;
	
	/**
	* Constructs an <CODE>MBeanConstructorInfo</CODE> object.
	*
	* @param name The name of the constructor.
	* @param signature <CODE>MBeanParameterInfo</CODE> objects
	* describing the parameters(arguments) of the constructor.  This
	* may be null with the same effect as a zero-length array.
	* @param description A human readable description of the constructor.
	*/
	@:overload public function new(name : String, description : String, signature : java.NativeArray<javax.management.MBeanParameterInfo>) : Void;
	
	/**
	* Constructs an <CODE>MBeanConstructorInfo</CODE> object.
	*
	* @param name The name of the constructor.
	* @param signature <CODE>MBeanParameterInfo</CODE> objects
	* describing the parameters(arguments) of the constructor.  This
	* may be null with the same effect as a zero-length array.
	* @param description A human readable description of the constructor.
	* @param descriptor The descriptor for the constructor.  This may be null
	* which is equivalent to an empty descriptor.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(name : String, description : String, signature : java.NativeArray<javax.management.MBeanParameterInfo>, descriptor : javax.management.Descriptor) : Void;
	
	/**
	* <p>Returns a shallow clone of this instance.  The clone is
	* obtained by simply calling <tt>super.clone()</tt>, thus calling
	* the default native shallow cloning mechanism implemented by
	* <tt>Object.clone()</tt>.  No deeper cloning of any internal
	* field is made.</p>
	*
	* <p>Since this class is immutable, cloning is chiefly of
	* interest to subclasses.</p>
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* <p>Returns the list of parameters for this constructor.  Each
	* parameter is described by an <CODE>MBeanParameterInfo</CODE>
	* object.</p>
	*
	* <p>The returned array is a shallow copy of the internal array,
	* which means that it is a copy of the internal array of
	* references to the <CODE>MBeanParameterInfo</CODE> objects but
	* that each referenced <CODE>MBeanParameterInfo</CODE> object is
	* not copied.</p>
	*
	* @return  An array of <CODE>MBeanParameterInfo</CODE> objects.
	*/
	@:overload public function getSignature() : java.NativeArray<javax.management.MBeanParameterInfo>;
	
	@:overload public function toString() : String;
	
	/**
	* Compare this MBeanConstructorInfo to another.
	*
	* @param o the object to compare to.
	*
	* @return true if and only if <code>o</code> is an MBeanConstructorInfo such
	* that its {@link #getName()}, {@link #getDescription()},
	* {@link #getSignature()}, and {@link #getDescriptor()}
	* values are equal (not necessarily
	* identical) to those of this MBeanConstructorInfo.  Two
	* signature arrays are equal if their elements are pairwise
	* equal.
	*/
	@:overload override public function equals(o : Dynamic) : Bool;
	
	/* Unlike attributes and operations, it's quite likely we'll have
	more than one constructor with the same name and even
	description, so we include the parameter array in the hashcode.
	We don't include the description, though, because it could be
	quite long and yet the same between constructors.  Likewise for
	the descriptor.  */
	@:overload override public function hashCode() : Int;
	
	
}
