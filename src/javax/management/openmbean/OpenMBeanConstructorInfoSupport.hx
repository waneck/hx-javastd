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
extern class OpenMBeanConstructorInfoSupport extends javax.management.MBeanConstructorInfo implements javax.management.openmbean.OpenMBeanConstructorInfo
{
	/**
	* <p>Constructs an {@code OpenMBeanConstructorInfoSupport}
	* instance, which describes the constructor of a class of open
	* MBeans with the specified {@code name}, {@code description} and
	* {@code signature}.</p>
	*
	* <p>The {@code signature} array parameter is internally copied,
	* so that subsequent changes to the array referenced by {@code
	* signature} have no effect on this instance.</p>
	*
	* @param name cannot be a null or empty string.
	*
	* @param description cannot be a null or empty string.
	*
	* @param signature can be null or empty if there are no
	* parameters to describe.
	*
	* @throws IllegalArgumentException if {@code name} or {@code
	* description} are null or empty string.
	*
	* @throws ArrayStoreException If {@code signature} is not an
	* array of instances of a subclass of {@code MBeanParameterInfo}.
	*/
	@:overload public function new(name : String, description : String, signature : java.NativeArray<javax.management.openmbean.OpenMBeanParameterInfo>) : Void;
	
	/**
	* <p>Constructs an {@code OpenMBeanConstructorInfoSupport}
	* instance, which describes the constructor of a class of open
	* MBeans with the specified {@code name}, {@code description},
	* {@code signature}, and {@code descriptor}.</p>
	*
	* <p>The {@code signature} array parameter is internally copied,
	* so that subsequent changes to the array referenced by {@code
	* signature} have no effect on this instance.</p>
	*
	* @param name cannot be a null or empty string.
	*
	* @param description cannot be a null or empty string.
	*
	* @param signature can be null or empty if there are no
	* parameters to describe.
	*
	* @param descriptor The descriptor for the constructor.  This may
	* be null which is equivalent to an empty descriptor.
	*
	* @throws IllegalArgumentException if {@code name} or {@code
	* description} are null or empty string.
	*
	* @throws ArrayStoreException If {@code signature} is not an
	* array of instances of a subclass of {@code MBeanParameterInfo}.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(name : String, description : String, signature : java.NativeArray<javax.management.openmbean.OpenMBeanParameterInfo>, descriptor : javax.management.Descriptor) : Void;
	
	/**
	* <p>Compares the specified {@code obj} parameter with this
	* {@code OpenMBeanConstructorInfoSupport} instance for
	* equality.</p>
	*
	* <p>Returns {@code true} if and only if all of the following
	* statements are true:
	*
	* <ul>
	* <li>{@code obj} is non null,</li>
	* <li>{@code obj} also implements the {@code
	* OpenMBeanConstructorInfo} interface,</li>
	* <li>their names are equal</li>
	* <li>their signatures are equal.</li>
	* </ul>
	*
	* This ensures that this {@code equals} method works properly for
	* {@code obj} parameters which are different implementations of
	* the {@code OpenMBeanConstructorInfo} interface.
	*
	* @param obj the object to be compared for equality with this
	* {@code OpenMBeanConstructorInfoSupport} instance;
	*
	* @return {@code true} if the specified object is equal to this
	* {@code OpenMBeanConstructorInfoSupport} instance.
	*/
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	/**
	* <p>Returns the hash code value for this {@code
	* OpenMBeanConstructorInfoSupport} instance.</p>
	*
	* <p>The hash code of an {@code OpenMBeanConstructorInfoSupport}
	* instance is the sum of the hash codes of all elements of
	* information used in {@code equals} comparisons (ie: its name
	* and signature, where the signature hashCode is calculated by a
	* call to {@code
	* java.util.Arrays.asList(this.getSignature).hashCode()}).</p>
	*
	* <p>This ensures that {@code t1.equals(t2)} implies that {@code
	* t1.hashCode()==t2.hashCode()} for any two {@code
	* OpenMBeanConstructorInfoSupport} instances {@code t1} and
	* {@code t2}, as required by the general contract of the method
	* {@link Object#hashCode() Object.hashCode()}.</p>
	*
	* <p>However, note that another instance of a class implementing
	* the {@code OpenMBeanConstructorInfo} interface may be equal to
	* this {@code OpenMBeanConstructorInfoSupport} instance as
	* defined by {@link #equals(java.lang.Object)}, but may have a
	* different hash code if it is calculated differently.</p>
	*
	* <p>As {@code OpenMBeanConstructorInfoSupport} instances are
	* immutable, the hash code for this instance is calculated once,
	* on the first call to {@code hashCode}, and then the same value
	* is returned for subsequent calls.</p>
	*
	* @return the hash code value for this {@code
	* OpenMBeanConstructorInfoSupport} instance
	*/
	@:overload override public function hashCode() : Int;
	
	/**
	* <p>Returns a string representation of this {@code
	* OpenMBeanConstructorInfoSupport} instance.</p>
	*
	* <p>The string representation consists of the name of this class
	* (ie {@code
	* javax.management.openmbean.OpenMBeanConstructorInfoSupport}),
	* the name and signature of the described constructor and the
	* string representation of its descriptor.</p>
	*
	* <p>As {@code OpenMBeanConstructorInfoSupport} instances are
	* immutable, the string representation for this instance is
	* calculated once, on the first call to {@code toString}, and
	* then the same value is returned for subsequent calls.</p>
	*
	* @return a string representation of this {@code
	* OpenMBeanConstructorInfoSupport} instance
	*/
	@:overload override public function toString() : String;
	
	
}
