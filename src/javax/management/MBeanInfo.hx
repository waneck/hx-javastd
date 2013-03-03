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
extern class MBeanInfo implements java.lang.Cloneable implements java.io.Serializable implements javax.management.DescriptorRead
{
	/**
	* Constructs an <CODE>MBeanInfo</CODE>.
	*
	* @param className The name of the Java class of the MBean described
	* by this <CODE>MBeanInfo</CODE>.  This value may be any
	* syntactically legal Java class name.  It does not have to be a
	* Java class known to the MBean server or to the MBean's
	* ClassLoader.  If it is a Java class known to the MBean's
	* ClassLoader, it is recommended but not required that the
	* class's public methods include those that would appear in a
	* Standard MBean implementing the attributes and operations in
	* this MBeanInfo.
	* @param description A human readable description of the MBean (optional).
	* @param attributes The list of exposed attributes of the MBean.
	* This may be null with the same effect as a zero-length array.
	* @param constructors The list of public constructors of the
	* MBean.  This may be null with the same effect as a zero-length
	* array.
	* @param operations The list of operations of the MBean.  This
	* may be null with the same effect as a zero-length array.
	* @param notifications The list of notifications emitted.  This
	* may be null with the same effect as a zero-length array.
	*/
	@:overload @:public public function new(className : String, description : String, attributes : java.NativeArray<javax.management.MBeanAttributeInfo>, constructors : java.NativeArray<javax.management.MBeanConstructorInfo>, operations : java.NativeArray<javax.management.MBeanOperationInfo>, notifications : java.NativeArray<javax.management.MBeanNotificationInfo>) : Void;
	
	/**
	* Constructs an <CODE>MBeanInfo</CODE>.
	*
	* @param className The name of the Java class of the MBean described
	* by this <CODE>MBeanInfo</CODE>.  This value may be any
	* syntactically legal Java class name.  It does not have to be a
	* Java class known to the MBean server or to the MBean's
	* ClassLoader.  If it is a Java class known to the MBean's
	* ClassLoader, it is recommended but not required that the
	* class's public methods include those that would appear in a
	* Standard MBean implementing the attributes and operations in
	* this MBeanInfo.
	* @param description A human readable description of the MBean (optional).
	* @param attributes The list of exposed attributes of the MBean.
	* This may be null with the same effect as a zero-length array.
	* @param constructors The list of public constructors of the
	* MBean.  This may be null with the same effect as a zero-length
	* array.
	* @param operations The list of operations of the MBean.  This
	* may be null with the same effect as a zero-length array.
	* @param notifications The list of notifications emitted.  This
	* may be null with the same effect as a zero-length array.
	* @param descriptor The descriptor for the MBean.  This may be null
	* which is equivalent to an empty descriptor.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function new(className : String, description : String, attributes : java.NativeArray<javax.management.MBeanAttributeInfo>, constructors : java.NativeArray<javax.management.MBeanConstructorInfo>, operations : java.NativeArray<javax.management.MBeanOperationInfo>, notifications : java.NativeArray<javax.management.MBeanNotificationInfo>, descriptor : javax.management.Descriptor) : Void;
	
	/**
	* <p>Returns a shallow clone of this instance.
	* The clone is obtained by simply calling <tt>super.clone()</tt>,
	* thus calling the default native shallow cloning mechanism
	* implemented by <tt>Object.clone()</tt>.
	* No deeper cloning of any internal field is made.</p>
	*
	* <p>Since this class is immutable, the clone method is chiefly of
	* interest to subclasses.</p>
	*/
	@:overload @:public public function clone() : Dynamic;
	
	/**
	* Returns the name of the Java class of the MBean described by
	* this <CODE>MBeanInfo</CODE>.
	*
	* @return the class name.
	*/
	@:overload @:public public function getClassName() : String;
	
	/**
	* Returns a human readable description of the MBean.
	*
	* @return the description.
	*/
	@:overload @:public public function getDescription() : String;
	
	/**
	* Returns the list of attributes exposed for management.
	* Each attribute is described by an <CODE>MBeanAttributeInfo</CODE> object.
	*
	* The returned array is a shallow copy of the internal array,
	* which means that it is a copy of the internal array of
	* references to the <CODE>MBeanAttributeInfo</CODE> objects
	* but that each referenced <CODE>MBeanAttributeInfo</CODE> object is not copied.
	*
	* @return  An array of <CODE>MBeanAttributeInfo</CODE> objects.
	*/
	@:overload @:public public function getAttributes() : java.NativeArray<javax.management.MBeanAttributeInfo>;
	
	/**
	* Returns the list of operations  of the MBean.
	* Each operation is described by an <CODE>MBeanOperationInfo</CODE> object.
	*
	* The returned array is a shallow copy of the internal array,
	* which means that it is a copy of the internal array of
	* references to the <CODE>MBeanOperationInfo</CODE> objects
	* but that each referenced <CODE>MBeanOperationInfo</CODE> object is not copied.
	*
	* @return  An array of <CODE>MBeanOperationInfo</CODE> objects.
	*/
	@:overload @:public public function getOperations() : java.NativeArray<javax.management.MBeanOperationInfo>;
	
	/**
	* <p>Returns the list of the public constructors of the MBean.
	* Each constructor is described by an
	* <CODE>MBeanConstructorInfo</CODE> object.</p>
	*
	* <p>The returned array is a shallow copy of the internal array,
	* which means that it is a copy of the internal array of
	* references to the <CODE>MBeanConstructorInfo</CODE> objects but
	* that each referenced <CODE>MBeanConstructorInfo</CODE> object
	* is not copied.</p>
	*
	* <p>The returned list is not necessarily exhaustive.  That is,
	* the MBean may have a public constructor that is not in the
	* list.  In this case, the MBean server can construct another
	* instance of this MBean's class using that constructor, even
	* though it is not listed here.</p>
	*
	* @return  An array of <CODE>MBeanConstructorInfo</CODE> objects.
	*/
	@:overload @:public public function getConstructors() : java.NativeArray<javax.management.MBeanConstructorInfo>;
	
	/**
	* Returns the list of the notifications emitted by the MBean.
	* Each notification is described by an <CODE>MBeanNotificationInfo</CODE> object.
	*
	* The returned array is a shallow copy of the internal array,
	* which means that it is a copy of the internal array of
	* references to the <CODE>MBeanNotificationInfo</CODE> objects
	* but that each referenced <CODE>MBeanNotificationInfo</CODE> object is not copied.
	*
	* @return  An array of <CODE>MBeanNotificationInfo</CODE> objects.
	*/
	@:overload @:public public function getNotifications() : java.NativeArray<javax.management.MBeanNotificationInfo>;
	
	/**
	* Get the descriptor of this MBeanInfo.  Changing the returned value
	* will have no affect on the original descriptor.
	*
	* @return a descriptor that is either immutable or a copy of the original.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function getDescriptor() : javax.management.Descriptor;
	
	@:overload @:public public function toString() : String;
	
	/**
	* <p>Compare this MBeanInfo to another.  Two MBeanInfo objects
	* are equal if and only if they return equal values for {@link
	* #getClassName()}, for {@link #getDescription()}, and for
	* {@link #getDescriptor()}, and the
	* arrays returned by the two objects for {@link
	* #getAttributes()}, {@link #getOperations()}, {@link
	* #getConstructors()}, and {@link #getNotifications()} are
	* pairwise equal.  Here "equal" means {@link
	* Object#equals(Object)}, not identity.</p>
	*
	* <p>If two MBeanInfo objects return the same values in one of
	* their arrays but in a different order then they are not equal.</p>
	*
	* @param o the object to compare to.
	*
	* @return true if and only if <code>o</code> is an MBeanInfo that is equal
	* to this one according to the rules above.
	*/
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	
}
/*
* The PrivilegedAction stuff is probably overkill.  We can be
* pretty sure the caller does have the required privileges -- a
* JMX user that can't do reflection can't even use Standard
* MBeans!  But there's probably a performance gain by not having
* to check the whole call stack.
*/
@:native('javax$management$MBeanInfo$ArrayGettersSafeAction') @:internal extern class MBeanInfo_ArrayGettersSafeAction implements java.security.PrivilegedAction<Null<Bool>>
{
	@:overload @:public public function run() : Null<Bool>;
	
	
}
