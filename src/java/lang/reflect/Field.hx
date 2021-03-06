package java.lang.reflect;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class Field extends java.lang.reflect.AccessibleObject implements java.lang.reflect.Member
{
	/**
	* Returns the {@code Class} object representing the class or interface
	* that declares the field represented by this {@code Field} object.
	*/
	@:overload @:public public function getDeclaringClass() : Class<Dynamic>;
	
	/**
	* Returns the name of the field represented by this {@code Field} object.
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Returns the Java language modifiers for the field represented
	* by this {@code Field} object, as an integer. The {@code Modifier} class should
	* be used to decode the modifiers.
	*
	* @see Modifier
	*/
	@:overload @:public public function getModifiers() : Int;
	
	/**
	* Returns {@code true} if this field represents an element of
	* an enumerated type; returns {@code false} otherwise.
	*
	* @return {@code true} if and only if this field represents an element of
	* an enumerated type.
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function isEnumConstant() : Bool;
	
	/**
	* Returns {@code true} if this field is a synthetic
	* field; returns {@code false} otherwise.
	*
	* @return true if and only if this field is a synthetic
	* field as defined by the Java Language Specification.
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function isSynthetic() : Bool;
	
	/**
	* Returns a {@code Class} object that identifies the
	* declared type for the field represented by this
	* {@code Field} object.
	*
	* @return a {@code Class} object identifying the declared
	* type of the field represented by this object
	*/
	@:overload @:public public function getType() : Class<Dynamic>;
	
	/**
	* Returns a {@code Type} object that represents the declared type for
	* the field represented by this {@code Field} object.
	*
	* <p>If the {@code Type} is a parameterized type, the
	* {@code Type} object returned must accurately reflect the
	* actual type parameters used in the source code.
	*
	* <p>If the type of the underlying field is a type variable or a
	* parameterized type, it is created. Otherwise, it is resolved.
	*
	* @return a {@code Type} object that represents the declared type for
	*     the field represented by this {@code Field} object
	* @throws GenericSignatureFormatError if the generic field
	*     signature does not conform to the format specified in
	*     <cite>The Java&trade; Virtual Machine Specification</cite>
	* @throws TypeNotPresentException if the generic type
	*     signature of the underlying field refers to a non-existent
	*     type declaration
	* @throws MalformedParameterizedTypeException if the generic
	*     signature of the underlying field refers to a parameterized type
	*     that cannot be instantiated for any reason
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getGenericType() : java.lang.reflect.Type;
	
	/**
	* Compares this {@code Field} against the specified object.  Returns
	* true if the objects are the same.  Two {@code Field} objects are the same if
	* they were declared by the same class and have the same name
	* and type.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns a hashcode for this {@code Field}.  This is computed as the
	* exclusive-or of the hashcodes for the underlying field's
	* declaring class name and its name.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns a string describing this {@code Field}.  The format is
	* the access modifiers for the field, if any, followed
	* by the field type, followed by a space, followed by
	* the fully-qualified name of the class declaring the field,
	* followed by a period, followed by the name of the field.
	* For example:
	* <pre>
	*    public static final int java.lang.Thread.MIN_PRIORITY
	*    private int java.io.FileDescriptor.fd
	* </pre>
	*
	* <p>The modifiers are placed in canonical order as specified by
	* "The Java Language Specification".  This is {@code public},
	* {@code protected} or {@code private} first, and then other
	* modifiers in the following order: {@code static}, {@code final},
	* {@code transient}, {@code volatile}.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Returns a string describing this {@code Field}, including
	* its generic type.  The format is the access modifiers for the
	* field, if any, followed by the generic field type, followed by
	* a space, followed by the fully-qualified name of the class
	* declaring the field, followed by a period, followed by the name
	* of the field.
	*
	* <p>The modifiers are placed in canonical order as specified by
	* "The Java Language Specification".  This is {@code public},
	* {@code protected} or {@code private} first, and then other
	* modifiers in the following order: {@code static}, {@code final},
	* {@code transient}, {@code volatile}.
	*
	* @return a string describing this {@code Field}, including
	* its generic type
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function toGenericString() : String;
	
	/**
	* Returns the value of the field represented by this {@code Field}, on
	* the specified object. The value is automatically wrapped in an
	* object if it has a primitive type.
	*
	* <p>The underlying field's value is obtained as follows:
	*
	* <p>If the underlying field is a static field, the {@code obj} argument
	* is ignored; it may be null.
	*
	* <p>Otherwise, the underlying field is an instance field.  If the
	* specified {@code obj} argument is null, the method throws a
	* {@code NullPointerException}. If the specified object is not an
	* instance of the class or interface declaring the underlying
	* field, the method throws an {@code IllegalArgumentException}.
	*
	* <p>If this {@code Field} object is enforcing Java language access control, and
	* the underlying field is inaccessible, the method throws an
	* {@code IllegalAccessException}.
	* If the underlying field is static, the class that declared the
	* field is initialized if it has not already been initialized.
	*
	* <p>Otherwise, the value is retrieved from the underlying instance
	* or static field.  If the field has a primitive type, the value
	* is wrapped in an object before being returned, otherwise it is
	* returned as is.
	*
	* <p>If the field is hidden in the type of {@code obj},
	* the field's value is obtained according to the preceding rules.
	*
	* @param obj object from which the represented field's value is
	* to be extracted
	* @return the value of the represented field in object
	* {@code obj}; primitive values are wrapped in an appropriate
	* object before being returned
	*
	* @exception IllegalAccessException    if this {@code Field} object
	*              is enforcing Java language access control and the underlying
	*              field is inaccessible.
	* @exception IllegalArgumentException  if the specified object is not an
	*              instance of the class or interface declaring the underlying
	*              field (or a subclass or implementor thereof).
	* @exception NullPointerException      if the specified object is null
	*              and the field is an instance field.
	* @exception ExceptionInInitializerError if the initialization provoked
	*              by this method fails.
	*/
	@:overload @:public public function get(obj : Dynamic) : Dynamic;
	
	/**
	* Gets the value of a static or instance {@code boolean} field.
	*
	* @param obj the object to extract the {@code boolean} value
	* from
	* @return the value of the {@code boolean} field
	*
	* @exception IllegalAccessException    if this {@code Field} object
	*              is enforcing Java language access control and the underlying
	*              field is inaccessible.
	* @exception IllegalArgumentException  if the specified object is not
	*              an instance of the class or interface declaring the
	*              underlying field (or a subclass or implementor
	*              thereof), or if the field value cannot be
	*              converted to the type {@code boolean} by a
	*              widening conversion.
	* @exception NullPointerException      if the specified object is null
	*              and the field is an instance field.
	* @exception ExceptionInInitializerError if the initialization provoked
	*              by this method fails.
	* @see       Field#get
	*/
	@:overload @:public public function getBoolean(obj : Dynamic) : Bool;
	
	/**
	* Gets the value of a static or instance {@code byte} field.
	*
	* @param obj the object to extract the {@code byte} value
	* from
	* @return the value of the {@code byte} field
	*
	* @exception IllegalAccessException    if this {@code Field} object
	*              is enforcing Java language access control and the underlying
	*              field is inaccessible.
	* @exception IllegalArgumentException  if the specified object is not
	*              an instance of the class or interface declaring the
	*              underlying field (or a subclass or implementor
	*              thereof), or if the field value cannot be
	*              converted to the type {@code byte} by a
	*              widening conversion.
	* @exception NullPointerException      if the specified object is null
	*              and the field is an instance field.
	* @exception ExceptionInInitializerError if the initialization provoked
	*              by this method fails.
	* @see       Field#get
	*/
	@:overload @:public public function getByte(obj : Dynamic) : java.StdTypes.Int8;
	
	/**
	* Gets the value of a static or instance field of type
	* {@code char} or of another primitive type convertible to
	* type {@code char} via a widening conversion.
	*
	* @param obj the object to extract the {@code char} value
	* from
	* @return the value of the field converted to type {@code char}
	*
	* @exception IllegalAccessException    if this {@code Field} object
	*              is enforcing Java language access control and the underlying
	*              field is inaccessible.
	* @exception IllegalArgumentException  if the specified object is not
	*              an instance of the class or interface declaring the
	*              underlying field (or a subclass or implementor
	*              thereof), or if the field value cannot be
	*              converted to the type {@code char} by a
	*              widening conversion.
	* @exception NullPointerException      if the specified object is null
	*              and the field is an instance field.
	* @exception ExceptionInInitializerError if the initialization provoked
	*              by this method fails.
	* @see Field#get
	*/
	@:overload @:public public function getChar(obj : Dynamic) : java.StdTypes.Char16;
	
	/**
	* Gets the value of a static or instance field of type
	* {@code short} or of another primitive type convertible to
	* type {@code short} via a widening conversion.
	*
	* @param obj the object to extract the {@code short} value
	* from
	* @return the value of the field converted to type {@code short}
	*
	* @exception IllegalAccessException    if this {@code Field} object
	*              is enforcing Java language access control and the underlying
	*              field is inaccessible.
	* @exception IllegalArgumentException  if the specified object is not
	*              an instance of the class or interface declaring the
	*              underlying field (or a subclass or implementor
	*              thereof), or if the field value cannot be
	*              converted to the type {@code short} by a
	*              widening conversion.
	* @exception NullPointerException      if the specified object is null
	*              and the field is an instance field.
	* @exception ExceptionInInitializerError if the initialization provoked
	*              by this method fails.
	* @see       Field#get
	*/
	@:overload @:public public function getShort(obj : Dynamic) : java.StdTypes.Int16;
	
	/**
	* Gets the value of a static or instance field of type
	* {@code int} or of another primitive type convertible to
	* type {@code int} via a widening conversion.
	*
	* @param obj the object to extract the {@code int} value
	* from
	* @return the value of the field converted to type {@code int}
	*
	* @exception IllegalAccessException    if this {@code Field} object
	*              is enforcing Java language access control and the underlying
	*              field is inaccessible.
	* @exception IllegalArgumentException  if the specified object is not
	*              an instance of the class or interface declaring the
	*              underlying field (or a subclass or implementor
	*              thereof), or if the field value cannot be
	*              converted to the type {@code int} by a
	*              widening conversion.
	* @exception NullPointerException      if the specified object is null
	*              and the field is an instance field.
	* @exception ExceptionInInitializerError if the initialization provoked
	*              by this method fails.
	* @see       Field#get
	*/
	@:overload @:public public function getInt(obj : Dynamic) : Int;
	
	/**
	* Gets the value of a static or instance field of type
	* {@code long} or of another primitive type convertible to
	* type {@code long} via a widening conversion.
	*
	* @param obj the object to extract the {@code long} value
	* from
	* @return the value of the field converted to type {@code long}
	*
	* @exception IllegalAccessException    if this {@code Field} object
	*              is enforcing Java language access control and the underlying
	*              field is inaccessible.
	* @exception IllegalArgumentException  if the specified object is not
	*              an instance of the class or interface declaring the
	*              underlying field (or a subclass or implementor
	*              thereof), or if the field value cannot be
	*              converted to the type {@code long} by a
	*              widening conversion.
	* @exception NullPointerException      if the specified object is null
	*              and the field is an instance field.
	* @exception ExceptionInInitializerError if the initialization provoked
	*              by this method fails.
	* @see       Field#get
	*/
	@:overload @:public public function getLong(obj : Dynamic) : haxe.Int64;
	
	/**
	* Gets the value of a static or instance field of type
	* {@code float} or of another primitive type convertible to
	* type {@code float} via a widening conversion.
	*
	* @param obj the object to extract the {@code float} value
	* from
	* @return the value of the field converted to type {@code float}
	*
	* @exception IllegalAccessException    if this {@code Field} object
	*              is enforcing Java language access control and the underlying
	*              field is inaccessible.
	* @exception IllegalArgumentException  if the specified object is not
	*              an instance of the class or interface declaring the
	*              underlying field (or a subclass or implementor
	*              thereof), or if the field value cannot be
	*              converted to the type {@code float} by a
	*              widening conversion.
	* @exception NullPointerException      if the specified object is null
	*              and the field is an instance field.
	* @exception ExceptionInInitializerError if the initialization provoked
	*              by this method fails.
	* @see Field#get
	*/
	@:overload @:public public function getFloat(obj : Dynamic) : Single;
	
	/**
	* Gets the value of a static or instance field of type
	* {@code double} or of another primitive type convertible to
	* type {@code double} via a widening conversion.
	*
	* @param obj the object to extract the {@code double} value
	* from
	* @return the value of the field converted to type {@code double}
	*
	* @exception IllegalAccessException    if this {@code Field} object
	*              is enforcing Java language access control and the underlying
	*              field is inaccessible.
	* @exception IllegalArgumentException  if the specified object is not
	*              an instance of the class or interface declaring the
	*              underlying field (or a subclass or implementor
	*              thereof), or if the field value cannot be
	*              converted to the type {@code double} by a
	*              widening conversion.
	* @exception NullPointerException      if the specified object is null
	*              and the field is an instance field.
	* @exception ExceptionInInitializerError if the initialization provoked
	*              by this method fails.
	* @see       Field#get
	*/
	@:overload @:public public function getDouble(obj : Dynamic) : Float;
	
	/**
	* Sets the field represented by this {@code Field} object on the
	* specified object argument to the specified new value. The new
	* value is automatically unwrapped if the underlying field has a
	* primitive type.
	*
	* <p>The operation proceeds as follows:
	*
	* <p>If the underlying field is static, the {@code obj} argument is
	* ignored; it may be null.
	*
	* <p>Otherwise the underlying field is an instance field.  If the
	* specified object argument is null, the method throws a
	* {@code NullPointerException}.  If the specified object argument is not
	* an instance of the class or interface declaring the underlying
	* field, the method throws an {@code IllegalArgumentException}.
	*
	* <p>If this {@code Field} object is enforcing Java language access control, and
	* the underlying field is inaccessible, the method throws an
	* {@code IllegalAccessException}.
	*
	* <p>If the underlying field is final, the method throws an
	* {@code IllegalAccessException} unless {@code setAccessible(true)}
	* has succeeded for this {@code Field} object
	* and the field is non-static. Setting a final field in this way
	* is meaningful only during deserialization or reconstruction of
	* instances of classes with blank final fields, before they are
	* made available for access by other parts of a program. Use in
	* any other context may have unpredictable effects, including cases
	* in which other parts of a program continue to use the original
	* value of this field.
	*
	* <p>If the underlying field is of a primitive type, an unwrapping
	* conversion is attempted to convert the new value to a value of
	* a primitive type.  If this attempt fails, the method throws an
	* {@code IllegalArgumentException}.
	*
	* <p>If, after possible unwrapping, the new value cannot be
	* converted to the type of the underlying field by an identity or
	* widening conversion, the method throws an
	* {@code IllegalArgumentException}.
	*
	* <p>If the underlying field is static, the class that declared the
	* field is initialized if it has not already been initialized.
	*
	* <p>The field is set to the possibly unwrapped and widened new value.
	*
	* <p>If the field is hidden in the type of {@code obj},
	* the field's value is set according to the preceding rules.
	*
	* @param obj the object whose field should be modified
	* @param value the new value for the field of {@code obj}
	* being modified
	*
	* @exception IllegalAccessException    if this {@code Field} object
	*              is enforcing Java language access control and the underlying
	*              field is either inaccessible or final.
	* @exception IllegalArgumentException  if the specified object is not an
	*              instance of the class or interface declaring the underlying
	*              field (or a subclass or implementor thereof),
	*              or if an unwrapping conversion fails.
	* @exception NullPointerException      if the specified object is null
	*              and the field is an instance field.
	* @exception ExceptionInInitializerError if the initialization provoked
	*              by this method fails.
	*/
	@:overload @:public public function set(obj : Dynamic, value : Dynamic) : Void;
	
	/**
	* Sets the value of a field as a {@code boolean} on the specified object.
	* This method is equivalent to
	* {@code set(obj, zObj)},
	* where {@code zObj} is a {@code Boolean} object and
	* {@code zObj.booleanValue() == z}.
	*
	* @param obj the object whose field should be modified
	* @param z   the new value for the field of {@code obj}
	* being modified
	*
	* @exception IllegalAccessException    if this {@code Field} object
	*              is enforcing Java language access control and the underlying
	*              field is either inaccessible or final.
	* @exception IllegalArgumentException  if the specified object is not an
	*              instance of the class or interface declaring the underlying
	*              field (or a subclass or implementor thereof),
	*              or if an unwrapping conversion fails.
	* @exception NullPointerException      if the specified object is null
	*              and the field is an instance field.
	* @exception ExceptionInInitializerError if the initialization provoked
	*              by this method fails.
	* @see       Field#set
	*/
	@:overload @:public public function setBoolean(obj : Dynamic, z : Bool) : Void;
	
	/**
	* Sets the value of a field as a {@code byte} on the specified object.
	* This method is equivalent to
	* {@code set(obj, bObj)},
	* where {@code bObj} is a {@code Byte} object and
	* {@code bObj.byteValue() == b}.
	*
	* @param obj the object whose field should be modified
	* @param b   the new value for the field of {@code obj}
	* being modified
	*
	* @exception IllegalAccessException    if this {@code Field} object
	*              is enforcing Java language access control and the underlying
	*              field is either inaccessible or final.
	* @exception IllegalArgumentException  if the specified object is not an
	*              instance of the class or interface declaring the underlying
	*              field (or a subclass or implementor thereof),
	*              or if an unwrapping conversion fails.
	* @exception NullPointerException      if the specified object is null
	*              and the field is an instance field.
	* @exception ExceptionInInitializerError if the initialization provoked
	*              by this method fails.
	* @see       Field#set
	*/
	@:overload @:public public function setByte(obj : Dynamic, b : java.StdTypes.Int8) : Void;
	
	/**
	* Sets the value of a field as a {@code char} on the specified object.
	* This method is equivalent to
	* {@code set(obj, cObj)},
	* where {@code cObj} is a {@code Character} object and
	* {@code cObj.charValue() == c}.
	*
	* @param obj the object whose field should be modified
	* @param c   the new value for the field of {@code obj}
	* being modified
	*
	* @exception IllegalAccessException    if this {@code Field} object
	*              is enforcing Java language access control and the underlying
	*              field is either inaccessible or final.
	* @exception IllegalArgumentException  if the specified object is not an
	*              instance of the class or interface declaring the underlying
	*              field (or a subclass or implementor thereof),
	*              or if an unwrapping conversion fails.
	* @exception NullPointerException      if the specified object is null
	*              and the field is an instance field.
	* @exception ExceptionInInitializerError if the initialization provoked
	*              by this method fails.
	* @see       Field#set
	*/
	@:overload @:public public function setChar(obj : Dynamic, c : java.StdTypes.Char16) : Void;
	
	/**
	* Sets the value of a field as a {@code short} on the specified object.
	* This method is equivalent to
	* {@code set(obj, sObj)},
	* where {@code sObj} is a {@code Short} object and
	* {@code sObj.shortValue() == s}.
	*
	* @param obj the object whose field should be modified
	* @param s   the new value for the field of {@code obj}
	* being modified
	*
	* @exception IllegalAccessException    if this {@code Field} object
	*              is enforcing Java language access control and the underlying
	*              field is either inaccessible or final.
	* @exception IllegalArgumentException  if the specified object is not an
	*              instance of the class or interface declaring the underlying
	*              field (or a subclass or implementor thereof),
	*              or if an unwrapping conversion fails.
	* @exception NullPointerException      if the specified object is null
	*              and the field is an instance field.
	* @exception ExceptionInInitializerError if the initialization provoked
	*              by this method fails.
	* @see       Field#set
	*/
	@:overload @:public public function setShort(obj : Dynamic, s : java.StdTypes.Int16) : Void;
	
	/**
	* Sets the value of a field as an {@code int} on the specified object.
	* This method is equivalent to
	* {@code set(obj, iObj)},
	* where {@code iObj} is a {@code Integer} object and
	* {@code iObj.intValue() == i}.
	*
	* @param obj the object whose field should be modified
	* @param i   the new value for the field of {@code obj}
	* being modified
	*
	* @exception IllegalAccessException    if this {@code Field} object
	*              is enforcing Java language access control and the underlying
	*              field is either inaccessible or final.
	* @exception IllegalArgumentException  if the specified object is not an
	*              instance of the class or interface declaring the underlying
	*              field (or a subclass or implementor thereof),
	*              or if an unwrapping conversion fails.
	* @exception NullPointerException      if the specified object is null
	*              and the field is an instance field.
	* @exception ExceptionInInitializerError if the initialization provoked
	*              by this method fails.
	* @see       Field#set
	*/
	@:overload @:public public function setInt(obj : Dynamic, i : Int) : Void;
	
	/**
	* Sets the value of a field as a {@code long} on the specified object.
	* This method is equivalent to
	* {@code set(obj, lObj)},
	* where {@code lObj} is a {@code Long} object and
	* {@code lObj.longValue() == l}.
	*
	* @param obj the object whose field should be modified
	* @param l   the new value for the field of {@code obj}
	* being modified
	*
	* @exception IllegalAccessException    if this {@code Field} object
	*              is enforcing Java language access control and the underlying
	*              field is either inaccessible or final.
	* @exception IllegalArgumentException  if the specified object is not an
	*              instance of the class or interface declaring the underlying
	*              field (or a subclass or implementor thereof),
	*              or if an unwrapping conversion fails.
	* @exception NullPointerException      if the specified object is null
	*              and the field is an instance field.
	* @exception ExceptionInInitializerError if the initialization provoked
	*              by this method fails.
	* @see       Field#set
	*/
	@:overload @:public public function setLong(obj : Dynamic, l : haxe.Int64) : Void;
	
	/**
	* Sets the value of a field as a {@code float} on the specified object.
	* This method is equivalent to
	* {@code set(obj, fObj)},
	* where {@code fObj} is a {@code Float} object and
	* {@code fObj.floatValue() == f}.
	*
	* @param obj the object whose field should be modified
	* @param f   the new value for the field of {@code obj}
	* being modified
	*
	* @exception IllegalAccessException    if this {@code Field} object
	*              is enforcing Java language access control and the underlying
	*              field is either inaccessible or final.
	* @exception IllegalArgumentException  if the specified object is not an
	*              instance of the class or interface declaring the underlying
	*              field (or a subclass or implementor thereof),
	*              or if an unwrapping conversion fails.
	* @exception NullPointerException      if the specified object is null
	*              and the field is an instance field.
	* @exception ExceptionInInitializerError if the initialization provoked
	*              by this method fails.
	* @see       Field#set
	*/
	@:overload @:public public function setFloat(obj : Dynamic, f : Single) : Void;
	
	/**
	* Sets the value of a field as a {@code double} on the specified object.
	* This method is equivalent to
	* {@code set(obj, dObj)},
	* where {@code dObj} is a {@code Double} object and
	* {@code dObj.doubleValue() == d}.
	*
	* @param obj the object whose field should be modified
	* @param d   the new value for the field of {@code obj}
	* being modified
	*
	* @exception IllegalAccessException    if this {@code Field} object
	*              is enforcing Java language access control and the underlying
	*              field is either inaccessible or final.
	* @exception IllegalArgumentException  if the specified object is not an
	*              instance of the class or interface declaring the underlying
	*              field (or a subclass or implementor thereof),
	*              or if an unwrapping conversion fails.
	* @exception NullPointerException      if the specified object is null
	*              and the field is an instance field.
	* @exception ExceptionInInitializerError if the initialization provoked
	*              by this method fails.
	* @see       Field#set
	*/
	@:overload @:public public function setDouble(obj : Dynamic, d : Float) : Void;
	
	/**
	* @throws NullPointerException {@inheritDoc}
	* @since 1.5
	*/
	@:require(java5) @:overload @:public override public function getAnnotation<T : java.lang.annotation.Annotation>(annotationClass : Class<T>) : T;
	
	/**
	* @since 1.5
	*/
	@:require(java5) @:overload @:public override public function getDeclaredAnnotations() : java.NativeArray<java.lang.annotation.Annotation>;
	
	
}
