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
extern class MBeanFeatureInfo implements java.io.Serializable implements javax.management.DescriptorRead
{
	/**
	* The name of the feature.  It is recommended that subclasses call
	* {@link #getName} rather than reading this field, and that they
	* not change it.
	*
	* @serial The name of the feature.
	*/
	private var name : String;
	
	/**
	* The human-readable description of the feature.  It is
	* recommended that subclasses call {@link #getDescription} rather
	* than reading this field, and that they not change it.
	*
	* @serial The human-readable description of the feature.
	*/
	private var description : String;
	
	/**
	* Constructs an <CODE>MBeanFeatureInfo</CODE> object.  This
	* constructor is equivalent to {@code MBeanFeatureInfo(name,
	* description, (Descriptor) null}.
	*
	* @param name The name of the feature.
	* @param description A human readable description of the feature.
	*/
	@:overload public function new(name : String, description : String) : Void;
	
	/**
	* Constructs an <CODE>MBeanFeatureInfo</CODE> object.
	*
	* @param name The name of the feature.
	* @param description A human readable description of the feature.
	* @param descriptor The descriptor for the feature.  This may be null
	* which is equivalent to an empty descriptor.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(name : String, description : String, descriptor : javax.management.Descriptor) : Void;
	
	/**
	* Returns the name of the feature.
	*
	* @return the name of the feature.
	*/
	@:overload public function getName() : String;
	
	/**
	* Returns the human-readable description of the feature.
	*
	* @return the human-readable description of the feature.
	*/
	@:overload public function getDescription() : String;
	
	/**
	* Returns the descriptor for the feature.  Changing the returned value
	* will have no affect on the original descriptor.
	*
	* @return a descriptor that is either immutable or a copy of the original.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function getDescriptor() : javax.management.Descriptor;
	
	/**
	* Compare this MBeanFeatureInfo to another.
	*
	* @param o the object to compare to.
	*
	* @return true if and only if <code>o</code> is an MBeanFeatureInfo such
	* that its {@link #getName()}, {@link #getDescription()}, and
	* {@link #getDescriptor()}
	* values are equal (not necessarily identical) to those of this
	* MBeanFeatureInfo.
	*/
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	
}
