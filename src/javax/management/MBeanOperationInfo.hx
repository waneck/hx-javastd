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
extern class MBeanOperationInfo extends javax.management.MBeanFeatureInfo implements java.lang.Cloneable
{
	/**
	* Indicates that the operation is read-like:
	* it returns information but does not change any state.
	*/
	public static var INFO(default, null) : Int;
	
	/**
	* Indicates that the operation is write-like: it has an effect but does
	* not return any information from the MBean.
	*/
	public static var ACTION(default, null) : Int;
	
	/**
	* Indicates that the operation is both read-like and write-like:
	* it has an effect, and it also returns information from the MBean.
	*/
	public static var ACTION_INFO(default, null) : Int;
	
	/**
	* Indicates that the impact of the operation is unknown or cannot be
	* expressed using one of the other values.
	*/
	public static var UNKNOWN(default, null) : Int;
	
	/**
	* Constructs an <CODE>MBeanOperationInfo</CODE> object.  The
	* {@link Descriptor} of the constructed object will include
	* fields contributed by any annotations on the {@code Method}
	* object that contain the {@link DescriptorKey} meta-annotation.
	*
	* @param method The <CODE>java.lang.reflect.Method</CODE> object
	* describing the MBean operation.
	* @param description A human readable description of the operation.
	*/
	@:overload public function new(description : String, method : java.lang.reflect.Method) : Void;
	
	/**
	* Constructs an <CODE>MBeanOperationInfo</CODE> object.
	*
	* @param name The name of the method.
	* @param description A human readable description of the operation.
	* @param signature <CODE>MBeanParameterInfo</CODE> objects
	* describing the parameters(arguments) of the method.  This may be
	* null with the same effect as a zero-length array.
	* @param type The type of the method's return value.
	* @param impact The impact of the method, one of
	* {@link #INFO}, {@link #ACTION}, {@link #ACTION_INFO},
	* {@link #UNKNOWN}.
	*/
	@:overload public function new(name : String, description : String, signature : java.NativeArray<javax.management.MBeanParameterInfo>, type : String, impact : Int) : Void;
	
	/**
	* Constructs an <CODE>MBeanOperationInfo</CODE> object.
	*
	* @param name The name of the method.
	* @param description A human readable description of the operation.
	* @param signature <CODE>MBeanParameterInfo</CODE> objects
	* describing the parameters(arguments) of the method.  This may be
	* null with the same effect as a zero-length array.
	* @param type The type of the method's return value.
	* @param impact The impact of the method, one of
	* {@link #INFO}, {@link #ACTION}, {@link #ACTION_INFO},
	* {@link #UNKNOWN}.
	* @param descriptor The descriptor for the operation.  This may be null
	* which is equivalent to an empty descriptor.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(name : String, description : String, signature : java.NativeArray<javax.management.MBeanParameterInfo>, type : String, impact : Int, descriptor : javax.management.Descriptor) : Void;
	
	/**
	* <p>Returns a shallow clone of this instance.
	* The clone is obtained by simply calling <tt>super.clone()</tt>,
	* thus calling the default native shallow cloning mechanism
	* implemented by <tt>Object.clone()</tt>.
	* No deeper cloning of any internal field is made.</p>
	*
	* <p>Since this class is immutable, cloning is chiefly of interest
	* to subclasses.</p>
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* Returns the type of the method's return value.
	*
	* @return the return type.
	*/
	@:overload public function getReturnType() : String;
	
	/**
	* <p>Returns the list of parameters for this operation.  Each
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
	
	/**
	* Returns the impact of the method, one of
	* <CODE>INFO</CODE>, <CODE>ACTION</CODE>, <CODE>ACTION_INFO</CODE>, <CODE>UNKNOWN</CODE>.
	*
	* @return the impact code.
	*/
	@:overload public function getImpact() : Int;
	
	@:overload public function toString() : String;
	
	/**
	* Compare this MBeanOperationInfo to another.
	*
	* @param o the object to compare to.
	*
	* @return true if and only if <code>o</code> is an MBeanOperationInfo such
	* that its {@link #getName()}, {@link #getReturnType()}, {@link
	* #getDescription()}, {@link #getImpact()}, {@link #getDescriptor()}
	* and {@link #getSignature()} values are equal (not necessarily identical)
	* to those of this MBeanConstructorInfo.  Two signature arrays
	* are equal if their elements are pairwise equal.
	*/
	@:overload override public function equals(o : Dynamic) : Bool;
	
	/* We do not include everything in the hashcode.  We assume that
	if two operations are different they'll probably have different
	names or types.  The penalty we pay when this assumption is
	wrong should be less than the penalty we would pay if it were
	right and we needlessly hashed in the description and the
	parameter array.  */
	@:overload override public function hashCode() : Int;
	
	
}
