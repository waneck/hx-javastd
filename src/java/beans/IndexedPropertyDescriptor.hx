package java.beans;
/*
* Copyright (c) 1996, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class IndexedPropertyDescriptor extends java.beans.PropertyDescriptor
{
	/**
	* This constructor constructs an IndexedPropertyDescriptor for a property
	* that follows the standard Java conventions by having getFoo and setFoo
	* accessor methods, for both indexed access and array access.
	* <p>
	* Thus if the argument name is "fred", it will assume that there
	* is an indexed reader method "getFred", a non-indexed (array) reader
	* method also called "getFred", an indexed writer method "setFred",
	* and finally a non-indexed writer method "setFred".
	*
	* @param propertyName The programmatic name of the property.
	* @param beanClass The Class object for the target bean.
	* @exception IntrospectionException if an exception occurs during
	*              introspection.
	*/
	@:overload public function new(propertyName : String, beanClass : Class<Dynamic>) : Void;
	
	/**
	* This constructor takes the name of a simple property, and method
	* names for reading and writing the property, both indexed
	* and non-indexed.
	*
	* @param propertyName The programmatic name of the property.
	* @param beanClass  The Class object for the target bean.
	* @param readMethodName The name of the method used for reading the property
	*           values as an array.  May be null if the property is write-only
	*           or must be indexed.
	* @param writeMethodName The name of the method used for writing the property
	*           values as an array.  May be null if the property is read-only
	*           or must be indexed.
	* @param indexedReadMethodName The name of the method used for reading
	*          an indexed property value.
	*          May be null if the property is write-only.
	* @param indexedWriteMethodName The name of the method used for writing
	*          an indexed property value.
	*          May be null if the property is read-only.
	* @exception IntrospectionException if an exception occurs during
	*              introspection.
	*/
	@:overload public function new(propertyName : String, beanClass : Class<Dynamic>, readMethodName : String, writeMethodName : String, indexedReadMethodName : String, indexedWriteMethodName : String) : Void;
	
	/**
	* This constructor takes the name of a simple property, and Method
	* objects for reading and writing the property.
	*
	* @param propertyName The programmatic name of the property.
	* @param readMethod The method used for reading the property values as an array.
	*          May be null if the property is write-only or must be indexed.
	* @param writeMethod The method used for writing the property values as an array.
	*          May be null if the property is read-only or must be indexed.
	* @param indexedReadMethod The method used for reading an indexed property value.
	*          May be null if the property is write-only.
	* @param indexedWriteMethod The method used for writing an indexed property value.
	*          May be null if the property is read-only.
	* @exception IntrospectionException if an exception occurs during
	*              introspection.
	*/
	@:overload public function new(propertyName : String, readMethod : java.lang.reflect.Method, writeMethod : java.lang.reflect.Method, indexedReadMethod : java.lang.reflect.Method, indexedWriteMethod : java.lang.reflect.Method) : Void;
	
	/**
	* Gets the method that should be used to read an indexed
	* property value.
	*
	* @return The method that should be used to read an indexed
	* property value.
	* May return null if the property isn't indexed or is write-only.
	*/
	@:overload @:synchronized public function getIndexedReadMethod() : java.lang.reflect.Method;
	
	/**
	* Sets the method that should be used to read an indexed property value.
	*
	* @param readMethod The new indexed read method.
	*/
	@:overload @:synchronized public function setIndexedReadMethod(readMethod : java.lang.reflect.Method) : Void;
	
	/**
	* Gets the method that should be used to write an indexed property value.
	*
	* @return The method that should be used to write an indexed
	* property value.
	* May return null if the property isn't indexed or is read-only.
	*/
	@:overload @:synchronized public function getIndexedWriteMethod() : java.lang.reflect.Method;
	
	/**
	* Sets the method that should be used to write an indexed property value.
	*
	* @param writeMethod The new indexed write method.
	*/
	@:overload @:synchronized public function setIndexedWriteMethod(writeMethod : java.lang.reflect.Method) : Void;
	
	/**
	* Returns the Java type info for the indexed property.
	* Note that the {@code Class} object may describe
	* primitive Java types such as {@code int}.
	* This type is returned by the indexed read method
	* or is used as the parameter type of the indexed write method.
	*
	* @return the {@code Class} object that represents the Java type info,
	*         or {@code null} if the type cannot be determined
	*/
	@:overload @:synchronized public function getIndexedPropertyType() : Class<Dynamic>;
	
	/**
	* Compares this <code>PropertyDescriptor</code> against the specified object.
	* Returns true if the objects are the same. Two <code>PropertyDescriptor</code>s
	* are the same if the read, write, property types, property editor and
	* flags  are equivalent.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns a hash code value for the object.
	* See {@link java.lang.Object#hashCode} for a complete description.
	*
	* @return a hash code value for this object.
	* @since 1.5
	*/
	@:require(java5) @:overload public function hashCode() : Int;
	
	
}
