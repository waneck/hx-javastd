package javax.management.openmbean;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
//// java import
////
extern class OpenMBeanInfoSupport extends javax.management.MBeanInfo implements javax.management.openmbean.OpenMBeanInfo
{
	/**
	* <p>Constructs an {@code OpenMBeanInfoSupport} instance, which
	* describes a class of open MBeans with the specified {@code
	* className}, {@code description}, {@code openAttributes}, {@code
	* openConstructors} , {@code openOperations} and {@code
	* notifications}.</p>
	*
	* <p>The {@code openAttributes}, {@code openConstructors},
	* {@code openOperations} and {@code notifications}
	* array parameters are internally copied, so that subsequent changes
	* to the arrays referenced by these parameters have no effect on this
	* instance.</p>
	*
	* @param className The fully qualified Java class name of the
	* open MBean described by this <CODE>OpenMBeanInfoSupport</CODE>
	* instance.
	*
	* @param description A human readable description of the open
	* MBean described by this <CODE>OpenMBeanInfoSupport</CODE>
	* instance.
	*
	* @param openAttributes The list of exposed attributes of the
	* described open MBean; Must be an array of instances of a
	* subclass of {@code MBeanAttributeInfo}, typically {@code
	* OpenMBeanAttributeInfoSupport}.
	*
	* @param openConstructors The list of exposed public constructors
	* of the described open MBean; Must be an array of instances of a
	* subclass of {@code MBeanConstructorInfo}, typically {@code
	* OpenMBeanConstructorInfoSupport}.
	*
	* @param openOperations The list of exposed operations of the
	* described open MBean.  Must be an array of instances of a
	* subclass of {@code MBeanOperationInfo}, typically {@code
	* OpenMBeanOperationInfoSupport}.
	*
	* @param notifications The list of notifications emitted by the
	* described open MBean.
	*
	* @throws ArrayStoreException If {@code openAttributes}, {@code
	* openConstructors} or {@code openOperations} is not an array of
	* instances of a subclass of {@code MBeanAttributeInfo}, {@code
	* MBeanConstructorInfo} or {@code MBeanOperationInfo}
	* respectively.
	*/
	@:overload @:public public function new(className : String, description : String, openAttributes : java.NativeArray<javax.management.openmbean.OpenMBeanAttributeInfo>, openConstructors : java.NativeArray<javax.management.openmbean.OpenMBeanConstructorInfo>, openOperations : java.NativeArray<javax.management.openmbean.OpenMBeanOperationInfo>, notifications : java.NativeArray<javax.management.MBeanNotificationInfo>) : Void;
	
	/**
	* <p>Constructs an {@code OpenMBeanInfoSupport} instance, which
	* describes a class of open MBeans with the specified {@code
	* className}, {@code description}, {@code openAttributes}, {@code
	* openConstructors} , {@code openOperations}, {@code
	* notifications}, and {@code descriptor}.</p>
	*
	* <p>The {@code openAttributes}, {@code openConstructors}, {@code
	* openOperations} and {@code notifications} array parameters are
	* internally copied, so that subsequent changes to the arrays
	* referenced by these parameters have no effect on this
	* instance.</p>
	*
	* @param className The fully qualified Java class name of the
	* open MBean described by this <CODE>OpenMBeanInfoSupport</CODE>
	* instance.
	*
	* @param description A human readable description of the open
	* MBean described by this <CODE>OpenMBeanInfoSupport</CODE>
	* instance.
	*
	* @param openAttributes The list of exposed attributes of the
	* described open MBean; Must be an array of instances of a
	* subclass of {@code MBeanAttributeInfo}, typically {@code
	* OpenMBeanAttributeInfoSupport}.
	*
	* @param openConstructors The list of exposed public constructors
	* of the described open MBean; Must be an array of instances of a
	* subclass of {@code MBeanConstructorInfo}, typically {@code
	* OpenMBeanConstructorInfoSupport}.
	*
	* @param openOperations The list of exposed operations of the
	* described open MBean.  Must be an array of instances of a
	* subclass of {@code MBeanOperationInfo}, typically {@code
	* OpenMBeanOperationInfoSupport}.
	*
	* @param notifications The list of notifications emitted by the
	* described open MBean.
	*
	* @param descriptor The descriptor for the MBean.  This may be null
	* which is equivalent to an empty descriptor.
	*
	* @throws ArrayStoreException If {@code openAttributes}, {@code
	* openConstructors} or {@code openOperations} is not an array of
	* instances of a subclass of {@code MBeanAttributeInfo}, {@code
	* MBeanConstructorInfo} or {@code MBeanOperationInfo}
	* respectively.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function new(className : String, description : String, openAttributes : java.NativeArray<javax.management.openmbean.OpenMBeanAttributeInfo>, openConstructors : java.NativeArray<javax.management.openmbean.OpenMBeanConstructorInfo>, openOperations : java.NativeArray<javax.management.openmbean.OpenMBeanOperationInfo>, notifications : java.NativeArray<javax.management.MBeanNotificationInfo>, descriptor : javax.management.Descriptor) : Void;
	
	/**
	* <p>Compares the specified {@code obj} parameter with this
	* {@code OpenMBeanInfoSupport} instance for equality.</p>
	*
	* <p>Returns {@code true} if and only if all of the following
	* statements are true:
	*
	* <ul>
	* <li>{@code obj} is non null,</li>
	* <li>{@code obj} also implements the {@code OpenMBeanInfo}
	* interface,</li>
	* <li>their class names are equal</li>
	* <li>their infos on attributes, constructors, operations and
	* notifications are equal</li>
	* </ul>
	*
	* This ensures that this {@code equals} method works properly for
	* {@code obj} parameters which are different implementations of
	* the {@code OpenMBeanInfo} interface.
	*
	* @param obj the object to be compared for equality with this
	* {@code OpenMBeanInfoSupport} instance;
	*
	* @return {@code true} if the specified object is equal to this
	* {@code OpenMBeanInfoSupport} instance.
	*/
	@:overload @:public override public function equals(obj : Dynamic) : Bool;
	
	/**
	* <p>Returns the hash code value for this {@code
	* OpenMBeanInfoSupport} instance.</p>
	*
	* <p>The hash code of an {@code OpenMBeanInfoSupport} instance is
	* the sum of the hash codes of all elements of information used
	* in {@code equals} comparisons (ie: its class name, and its
	* infos on attributes, constructors, operations and
	* notifications, where the hashCode of each of these arrays is
	* calculated by a call to {@code new
	* java.util.HashSet(java.util.Arrays.asList(this.getSignature)).hashCode()}).</p>
	*
	* <p>This ensures that {@code t1.equals(t2)} implies that {@code
	* t1.hashCode()==t2.hashCode()} for any two {@code
	* OpenMBeanInfoSupport} instances {@code t1} and {@code t2}, as
	* required by the general contract of the method {@link
	* Object#hashCode() Object.hashCode()}.</p>
	*
	* <p>However, note that another instance of a class implementing
	* the {@code OpenMBeanInfo} interface may be equal to this {@code
	* OpenMBeanInfoSupport} instance as defined by {@link
	* #equals(java.lang.Object)}, but may have a different hash code
	* if it is calculated differently.</p>
	*
	* <p>As {@code OpenMBeanInfoSupport} instances are immutable, the
	* hash code for this instance is calculated once, on the first
	* call to {@code hashCode}, and then the same value is returned
	* for subsequent calls.</p>
	*
	* @return the hash code value for this {@code
	* OpenMBeanInfoSupport} instance
	*/
	@:overload @:public override public function hashCode() : Int;
	
	/**
	* <p>Returns a string representation of this {@code
	* OpenMBeanInfoSupport} instance.</p>
	*
	* <p>The string representation consists of the name of this class
	* (ie {@code javax.management.openmbean.OpenMBeanInfoSupport}),
	* the MBean class name, the string representation of infos on
	* attributes, constructors, operations and notifications of the
	* described MBean and the string representation of the descriptor.</p>
	*
	* <p>As {@code OpenMBeanInfoSupport} instances are immutable, the
	* string representation for this instance is calculated once, on
	* the first call to {@code toString}, and then the same value is
	* returned for subsequent calls.</p>
	*
	* @return a string representation of this {@code
	* OpenMBeanInfoSupport} instance
	*/
	@:overload @:public override public function toString() : String;
	
	
}
