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
extern class PropertyDescriptor extends java.beans.FeatureDescriptor
{
	/**
	* Constructs a PropertyDescriptor for a property that follows
	* the standard Java convention by having getFoo and setFoo
	* accessor methods.  Thus if the argument name is "fred", it will
	* assume that the writer method is "setFred" and the reader method
	* is "getFred" (or "isFred" for a boolean property).  Note that the
	* property name should start with a lower case character, which will
	* be capitalized in the method names.
	*
	* @param propertyName The programmatic name of the property.
	* @param beanClass The Class object for the target bean.  For
	*          example sun.beans.OurButton.class.
	* @exception IntrospectionException if an exception occurs during
	*              introspection.
	*/
	@:overload public function new(propertyName : String, beanClass : Class<Dynamic>) : Void;
	
	/**
	* This constructor takes the name of a simple property, and method
	* names for reading and writing the property.
	*
	* @param propertyName The programmatic name of the property.
	* @param beanClass The Class object for the target bean.  For
	*          example sun.beans.OurButton.class.
	* @param readMethodName The name of the method used for reading the property
	*           value.  May be null if the property is write-only.
	* @param writeMethodName The name of the method used for writing the property
	*           value.  May be null if the property is read-only.
	* @exception IntrospectionException if an exception occurs during
	*              introspection.
	*/
	@:overload public function new(propertyName : String, beanClass : Class<Dynamic>, readMethodName : String, writeMethodName : String) : Void;
	
	/**
	* This constructor takes the name of a simple property, and Method
	* objects for reading and writing the property.
	*
	* @param propertyName The programmatic name of the property.
	* @param readMethod The method used for reading the property value.
	*          May be null if the property is write-only.
	* @param writeMethod The method used for writing the property value.
	*          May be null if the property is read-only.
	* @exception IntrospectionException if an exception occurs during
	*              introspection.
	*/
	@:overload public function new(propertyName : String, readMethod : java.lang.reflect.Method, writeMethod : java.lang.reflect.Method) : Void;
	
	/**
	* Returns the Java type info for the property.
	* Note that the {@code Class} object may describe
	* primitive Java types such as {@code int}.
	* This type is returned by the read method
	* or is used as the parameter type of the write method.
	* Returns {@code null} if the type is an indexed property
	* that does not support non-indexed access.
	*
	* @return the {@code Class} object that represents the Java type info,
	*         or {@code null} if the type cannot be determined
	*/
	@:overload @:synchronized public function getPropertyType() : Class<Dynamic>;
	
	/**
	* Gets the method that should be used to read the property value.
	*
	* @return The method that should be used to read the property value.
	* May return null if the property can't be read.
	*/
	@:overload @:synchronized public function getReadMethod() : java.lang.reflect.Method;
	
	/**
	* Sets the method that should be used to read the property value.
	*
	* @param readMethod The new read method.
	*/
	@:overload @:synchronized public function setReadMethod(readMethod : java.lang.reflect.Method) : Void;
	
	/**
	* Gets the method that should be used to write the property value.
	*
	* @return The method that should be used to write the property value.
	* May return null if the property can't be written.
	*/
	@:overload @:synchronized public function getWriteMethod() : java.lang.reflect.Method;
	
	/**
	* Sets the method that should be used to write the property value.
	*
	* @param writeMethod The new write method.
	*/
	@:overload @:synchronized public function setWriteMethod(writeMethod : java.lang.reflect.Method) : Void;
	
	/**
	* Updates to "bound" properties will cause a "PropertyChange" event to
	* get fired when the property is changed.
	*
	* @return True if this is a bound property.
	*/
	@:overload public function isBound() : Bool;
	
	/**
	* Updates to "bound" properties will cause a "PropertyChange" event to
	* get fired when the property is changed.
	*
	* @param bound True if this is a bound property.
	*/
	@:overload public function setBound(bound : Bool) : Void;
	
	/**
	* Attempted updates to "Constrained" properties will cause a "VetoableChange"
	* event to get fired when the property is changed.
	*
	* @return True if this is a constrained property.
	*/
	@:overload public function isConstrained() : Bool;
	
	/**
	* Attempted updates to "Constrained" properties will cause a "VetoableChange"
	* event to get fired when the property is changed.
	*
	* @param constrained True if this is a constrained property.
	*/
	@:overload public function setConstrained(constrained : Bool) : Void;
	
	/**
	* Normally PropertyEditors will be found using the PropertyEditorManager.
	* However if for some reason you want to associate a particular
	* PropertyEditor with a given property, then you can do it with
	* this method.
	*
	* @param propertyEditorClass  The Class for the desired PropertyEditor.
	*/
	@:overload public function setPropertyEditorClass(propertyEditorClass : Class<Dynamic>) : Void;
	
	/**
	* Gets any explicit PropertyEditor Class that has been registered
	* for this property.
	*
	* @return Any explicit PropertyEditor Class that has been registered
	*          for this property.  Normally this will return "null",
	*          indicating that no special editor has been registered,
	*          so the PropertyEditorManager should be used to locate
	*          a suitable PropertyEditor.
	*/
	@:overload public function getPropertyEditorClass() : Class<Dynamic>;
	
	/**
	* Constructs an instance of a property editor using the current
	* property editor class.
	* <p>
	* If the property editor class has a public constructor that takes an
	* Object argument then it will be invoked using the bean parameter
	* as the argument. Otherwise, the default constructor will be invoked.
	*
	* @param bean the source object
	* @return a property editor instance or null if a property editor has
	*         not been defined or cannot be created
	* @since 1.5
	*/
	@:require(java5) @:overload public function createPropertyEditor(bean : Dynamic) : java.beans.PropertyEditor;
	
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
