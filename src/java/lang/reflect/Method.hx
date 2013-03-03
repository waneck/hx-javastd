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
extern class Method extends java.lang.reflect.AccessibleObject implements java.lang.reflect.GenericDeclaration implements java.lang.reflect.Member
{
	/**
	* Returns the {@code Class} object representing the class or interface
	* that declares the method represented by this {@code Method} object.
	*/
	@:overload @:public public function getDeclaringClass() : Class<Dynamic>;
	
	/**
	* Returns the name of the method represented by this {@code Method}
	* object, as a {@code String}.
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Returns the Java language modifiers for the method represented
	* by this {@code Method} object, as an integer. The {@code Modifier} class should
	* be used to decode the modifiers.
	*
	* @see Modifier
	*/
	@:overload @:public public function getModifiers() : Int;
	
	/**
	* Returns an array of {@code TypeVariable} objects that represent the
	* type variables declared by the generic declaration represented by this
	* {@code GenericDeclaration} object, in declaration order.  Returns an
	* array of length 0 if the underlying generic declaration declares no type
	* variables.
	*
	* @return an array of {@code TypeVariable} objects that represent
	*     the type variables declared by this generic declaration
	* @throws GenericSignatureFormatError if the generic
	*     signature of this generic declaration does not conform to
	*     the format specified in
	*     <cite>The Java&trade; Virtual Machine Specification</cite>
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getTypeParameters() : java.NativeArray<java.lang.reflect.TypeVariable<java.lang.reflect.Method>>;
	
	/**
	* Returns a {@code Class} object that represents the formal return type
	* of the method represented by this {@code Method} object.
	*
	* @return the return type for the method this object represents
	*/
	@:overload @:public public function getReturnType() : Class<Dynamic>;
	
	/**
	* Returns a {@code Type} object that represents the formal return
	* type of the method represented by this {@code Method} object.
	*
	* <p>If the return type is a parameterized type,
	* the {@code Type} object returned must accurately reflect
	* the actual type parameters used in the source code.
	*
	* <p>If the return type is a type variable or a parameterized type, it
	* is created. Otherwise, it is resolved.
	*
	* @return  a {@code Type} object that represents the formal return
	*     type of the underlying  method
	* @throws GenericSignatureFormatError
	*     if the generic method signature does not conform to the format
	*     specified in
	*     <cite>The Java&trade; Virtual Machine Specification</cite>
	* @throws TypeNotPresentException if the underlying method's
	*     return type refers to a non-existent type declaration
	* @throws MalformedParameterizedTypeException if the
	*     underlying method's return typed refers to a parameterized
	*     type that cannot be instantiated for any reason
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getGenericReturnType() : java.lang.reflect.Type;
	
	/**
	* Returns an array of {@code Class} objects that represent the formal
	* parameter types, in declaration order, of the method
	* represented by this {@code Method} object.  Returns an array of length
	* 0 if the underlying method takes no parameters.
	*
	* @return the parameter types for the method this object
	* represents
	*/
	@:overload @:public public function getParameterTypes() : java.NativeArray<Class<Dynamic>>;
	
	/**
	* Returns an array of {@code Type} objects that represent the formal
	* parameter types, in declaration order, of the method represented by
	* this {@code Method} object. Returns an array of length 0 if the
	* underlying method takes no parameters.
	*
	* <p>If a formal parameter type is a parameterized type,
	* the {@code Type} object returned for it must accurately reflect
	* the actual type parameters used in the source code.
	*
	* <p>If a formal parameter type is a type variable or a parameterized
	* type, it is created. Otherwise, it is resolved.
	*
	* @return an array of Types that represent the formal
	*     parameter types of the underlying method, in declaration order
	* @throws GenericSignatureFormatError
	*     if the generic method signature does not conform to the format
	*     specified in
	*     <cite>The Java&trade; Virtual Machine Specification</cite>
	* @throws TypeNotPresentException if any of the parameter
	*     types of the underlying method refers to a non-existent type
	*     declaration
	* @throws MalformedParameterizedTypeException if any of
	*     the underlying method's parameter types refer to a parameterized
	*     type that cannot be instantiated for any reason
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getGenericParameterTypes() : java.NativeArray<java.lang.reflect.Type>;
	
	/**
	* Returns an array of {@code Class} objects that represent
	* the types of the exceptions declared to be thrown
	* by the underlying method
	* represented by this {@code Method} object.  Returns an array of length
	* 0 if the method declares no exceptions in its {@code throws} clause.
	*
	* @return the exception types declared as being thrown by the
	* method this object represents
	*/
	@:overload @:public public function getExceptionTypes() : java.NativeArray<Class<Dynamic>>;
	
	/**
	* Returns an array of {@code Type} objects that represent the
	* exceptions declared to be thrown by this {@code Method} object.
	* Returns an array of length 0 if the underlying method declares
	* no exceptions in its {@code throws} clause.
	*
	* <p>If an exception type is a type variable or a parameterized
	* type, it is created. Otherwise, it is resolved.
	*
	* @return an array of Types that represent the exception types
	*     thrown by the underlying method
	* @throws GenericSignatureFormatError
	*     if the generic method signature does not conform to the format
	*     specified in
	*     <cite>The Java&trade; Virtual Machine Specification</cite>
	* @throws TypeNotPresentException if the underlying method's
	*     {@code throws} clause refers to a non-existent type declaration
	* @throws MalformedParameterizedTypeException if
	*     the underlying method's {@code throws} clause refers to a
	*     parameterized type that cannot be instantiated for any reason
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getGenericExceptionTypes() : java.NativeArray<java.lang.reflect.Type>;
	
	/**
	* Compares this {@code Method} against the specified object.  Returns
	* true if the objects are the same.  Two {@code Methods} are the same if
	* they were declared by the same class and have the same name
	* and formal parameter types and return type.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns a hashcode for this {@code Method}.  The hashcode is computed
	* as the exclusive-or of the hashcodes for the underlying
	* method's declaring class name and the method's name.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns a string describing this {@code Method}.  The string is
	* formatted as the method access modifiers, if any, followed by
	* the method return type, followed by a space, followed by the
	* class declaring the method, followed by a period, followed by
	* the method name, followed by a parenthesized, comma-separated
	* list of the method's formal parameter types. If the method
	* throws checked exceptions, the parameter list is followed by a
	* space, followed by the word throws followed by a
	* comma-separated list of the thrown exception types.
	* For example:
	* <pre>
	*    public boolean java.lang.Object.equals(java.lang.Object)
	* </pre>
	*
	* <p>The access modifiers are placed in canonical order as
	* specified by "The Java Language Specification".  This is
	* {@code public}, {@code protected} or {@code private} first,
	* and then other modifiers in the following order:
	* {@code abstract}, {@code static}, {@code final},
	* {@code synchronized}, {@code native}, {@code strictfp}.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Returns a string describing this {@code Method}, including
	* type parameters.  The string is formatted as the method access
	* modifiers, if any, followed by an angle-bracketed
	* comma-separated list of the method's type parameters, if any,
	* followed by the method's generic return type, followed by a
	* space, followed by the class declaring the method, followed by
	* a period, followed by the method name, followed by a
	* parenthesized, comma-separated list of the method's generic
	* formal parameter types.
	*
	* If this method was declared to take a variable number of
	* arguments, instead of denoting the last parameter as
	* "<tt><i>Type</i>[]</tt>", it is denoted as
	* "<tt><i>Type</i>...</tt>".
	*
	* A space is used to separate access modifiers from one another
	* and from the type parameters or return type.  If there are no
	* type parameters, the type parameter list is elided; if the type
	* parameter list is present, a space separates the list from the
	* class name.  If the method is declared to throw exceptions, the
	* parameter list is followed by a space, followed by the word
	* throws followed by a comma-separated list of the generic thrown
	* exception types.  If there are no type parameters, the type
	* parameter list is elided.
	*
	* <p>The access modifiers are placed in canonical order as
	* specified by "The Java Language Specification".  This is
	* {@code public}, {@code protected} or {@code private} first,
	* and then other modifiers in the following order:
	* {@code abstract}, {@code static}, {@code final},
	* {@code synchronized}, {@code native}, {@code strictfp}.
	*
	* @return a string describing this {@code Method},
	* include type parameters
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function toGenericString() : String;
	
	/**
	* Invokes the underlying method represented by this {@code Method}
	* object, on the specified object with the specified parameters.
	* Individual parameters are automatically unwrapped to match
	* primitive formal parameters, and both primitive and reference
	* parameters are subject to method invocation conversions as
	* necessary.
	*
	* <p>If the underlying method is static, then the specified {@code obj}
	* argument is ignored. It may be null.
	*
	* <p>If the number of formal parameters required by the underlying method is
	* 0, the supplied {@code args} array may be of length 0 or null.
	*
	* <p>If the underlying method is an instance method, it is invoked
	* using dynamic method lookup as documented in The Java Language
	* Specification, Second Edition, section 15.12.4.4; in particular,
	* overriding based on the runtime type of the target object will occur.
	*
	* <p>If the underlying method is static, the class that declared
	* the method is initialized if it has not already been initialized.
	*
	* <p>If the method completes normally, the value it returns is
	* returned to the caller of invoke; if the value has a primitive
	* type, it is first appropriately wrapped in an object. However,
	* if the value has the type of an array of a primitive type, the
	* elements of the array are <i>not</i> wrapped in objects; in
	* other words, an array of primitive type is returned.  If the
	* underlying method return type is void, the invocation returns
	* null.
	*
	* @param obj  the object the underlying method is invoked from
	* @param args the arguments used for the method call
	* @return the result of dispatching the method represented by
	* this object on {@code obj} with parameters
	* {@code args}
	*
	* @exception IllegalAccessException    if this {@code Method} object
	*              is enforcing Java language access control and the underlying
	*              method is inaccessible.
	* @exception IllegalArgumentException  if the method is an
	*              instance method and the specified object argument
	*              is not an instance of the class or interface
	*              declaring the underlying method (or of a subclass
	*              or implementor thereof); if the number of actual
	*              and formal parameters differ; if an unwrapping
	*              conversion for primitive arguments fails; or if,
	*              after possible unwrapping, a parameter value
	*              cannot be converted to the corresponding formal
	*              parameter type by a method invocation conversion.
	* @exception InvocationTargetException if the underlying method
	*              throws an exception.
	* @exception NullPointerException      if the specified object is null
	*              and the method is an instance method.
	* @exception ExceptionInInitializerError if the initialization
	* provoked by this method fails.
	*/
	@:overload @:public public function invoke(obj : Dynamic, args : java.NativeArray<Dynamic>) : Dynamic;
	
	/**
	* Returns {@code true} if this method is a bridge
	* method; returns {@code false} otherwise.
	*
	* @return true if and only if this method is a bridge
	* method as defined by the Java Language Specification.
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function isBridge() : Bool;
	
	/**
	* Returns {@code true} if this method was declared to take
	* a variable number of arguments; returns {@code false}
	* otherwise.
	*
	* @return {@code true} if an only if this method was declared to
	* take a variable number of arguments.
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function isVarArgs() : Bool;
	
	/**
	* Returns {@code true} if this method is a synthetic
	* method; returns {@code false} otherwise.
	*
	* @return true if and only if this method is a synthetic
	* method as defined by the Java Language Specification.
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function isSynthetic() : Bool;
	
	/**
	* @throws NullPointerException {@inheritDoc}
	* @since 1.5
	*/
	@:require(java5) @:overload @:public override public function getAnnotation<T : java.lang.annotation.Annotation>(annotationClass : Class<T>) : T;
	
	/**
	* @since 1.5
	*/
	@:require(java5) @:overload @:public override public function getDeclaredAnnotations() : java.NativeArray<java.lang.annotation.Annotation>;
	
	/**
	* Returns the default value for the annotation member represented by
	* this {@code Method} instance.  If the member is of a primitive type,
	* an instance of the corresponding wrapper type is returned. Returns
	* null if no default is associated with the member, or if the method
	* instance does not represent a declared member of an annotation type.
	*
	* @return the default value for the annotation member represented
	*     by this {@code Method} instance.
	* @throws TypeNotPresentException if the annotation is of type
	*     {@link Class} and no definition can be found for the
	*     default class value.
	* @since  1.5
	*/
	@:require(java5) @:overload @:public public function getDefaultValue() : Dynamic;
	
	/**
	* Returns an array of arrays that represent the annotations on the formal
	* parameters, in declaration order, of the method represented by
	* this {@code Method} object. (Returns an array of length zero if the
	* underlying method is parameterless.  If the method has one or more
	* parameters, a nested array of length zero is returned for each parameter
	* with no annotations.) The annotation objects contained in the returned
	* arrays are serializable.  The caller of this method is free to modify
	* the returned arrays; it will have no effect on the arrays returned to
	* other callers.
	*
	* @return an array of arrays that represent the annotations on the formal
	*    parameters, in declaration order, of the method represented by this
	*    Method object
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getParameterAnnotations() : java.NativeArray<java.NativeArray<java.lang.annotation.Annotation>>;
	
	
}
