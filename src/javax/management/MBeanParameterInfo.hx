package javax.management;
/*
* Copyright (c) 1999, 2006, Oracle and/or its affiliates. All rights reserved.
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
* Describes an argument of an operation exposed by an MBean.
* Instances of this class are immutable.  Subclasses may be mutable
* but this is not recommended.
*
* @since 1.5
*/
@:require(java5) extern class MBeanParameterInfo extends javax.management.MBeanFeatureInfo implements java.lang.Cloneable
{
	/**
	* Constructs an <CODE>MBeanParameterInfo</CODE> object.
	*
	* @param name The name of the data
	* @param type The type or class name of the data
	* @param description A human readable description of the data. Optional.
	*/
	@:overload @:public public function new(name : String, type : String, description : String) : Void;
	
	/**
	* Constructs an <CODE>MBeanParameterInfo</CODE> object.
	*
	* @param name The name of the data
	* @param type The type or class name of the data
	* @param description A human readable description of the data. Optional.
	* @param descriptor The descriptor for the operation.  This may be null
	* which is equivalent to an empty descriptor.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function new(name : String, type : String, description : String, descriptor : javax.management.Descriptor) : Void;
	
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
	@:overload @:public public function clone() : Dynamic;
	
	/**
	* Returns the type or class name of the data.
	*
	* @return the type string.
	*/
	@:overload @:public public function getType() : String;
	
	@:overload @:public public function toString() : String;
	
	/**
	* Compare this MBeanParameterInfo to another.
	*
	* @param o the object to compare to.
	*
	* @return true if and only if <code>o</code> is an MBeanParameterInfo such
	* that its {@link #getName()}, {@link #getType()},
	* {@link #getDescriptor()}, and {@link
	* #getDescription()} values are equal (not necessarily identical)
	* to those of this MBeanParameterInfo.
	*/
	@:overload @:public override public function equals(o : Dynamic) : Bool;
	
	@:overload @:public override public function hashCode() : Int;
	
	
}
