package com.sun.codemodel.internal;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class JClass extends com.sun.codemodel.internal.JType
{
	/**
	* Represents a Java reference type, such as a class, an interface,
	* an enum, an array type, a parameterized type.
	*
	* <p>
	* To be exact, this object represents an "use" of a reference type,
	* not necessarily a declaration of it, which is modeled as {@link JDefinedClass}.
	*/
	@:overload private function new(_owner : com.sun.codemodel.internal.JCodeModel) : Void;
	
	/**
	* Gets the name of this class.
	*
	* @return
	*  name of this class, without any qualification.
	*  For example, this method returns "String" for
	*  <code>java.lang.String</code>.
	*/
	@:overload @:abstract override public function name() : String;
	
	/**
	* Gets the package to which this class belongs.
	* TODO: shall we move move this down?
	*/
	@:overload @:abstract public function _package() : com.sun.codemodel.internal.JPackage;
	
	/**
	* Returns the class in which this class is nested, or <tt>null</tt> if
	* this is a top-level class.
	*/
	@:overload public function outer() : com.sun.codemodel.internal.JClass;
	
	/** Gets the JCodeModel object to which this object belongs. */
	@:overload @:final override public function owner() : com.sun.codemodel.internal.JCodeModel;
	
	/**
	* Gets the super class of this class.
	*
	* @return
	*      Returns the JClass representing the superclass of the
	*      entity (class or interface) represented by this {@link JClass}.
	*      Even if no super class is given explicitly or this {@link JClass}
	*      is not a class, this method still returns
	*      {@link JClass} for {@link Object}.
	*      If this JClass represents {@link Object}, return null.
	*/
	@:overload @:abstract public function _extends() : com.sun.codemodel.internal.JClass;
	
	/**
	* Iterates all super interfaces directly implemented by
	* this class/interface.
	*
	* @return
	*          A non-null valid iterator that iterates all
	*          {@link JClass} objects that represents those interfaces
	*          implemented by this object.
	*/
	@:overload @:abstract public function _implements() : java.util.Iterator<com.sun.codemodel.internal.JClass>;
	
	/**
	* Iterates all the type parameters of this class/interface.
	*
	* <p>
	* For example, if this {@link JClass} represents
	* <code>Set&lt;T></code>, this method returns an array
	* that contains single {@link JTypeVar} for 'T'.
	*/
	@:overload public function typeParams() : java.NativeArray<com.sun.codemodel.internal.JTypeVar>;
	
	/**
	* Sometimes useful reusable empty array.
	*/
	private static var EMPTY_ARRAY(default, null) : java.NativeArray<com.sun.codemodel.internal.JTypeVar>;
	
	/**
	* Checks if this object represents an interface.
	*/
	@:overload @:abstract public function isInterface() : Bool;
	
	/**
	* Checks if this class is an abstract class.
	*/
	@:overload @:abstract public function isAbstract() : Bool;
	
	/**
	* If this class represents one of the wrapper classes
	* defined in the java.lang package, return the corresponding
	* primitive type. Otherwise null.
	*/
	@:overload public function getPrimitiveType() : com.sun.codemodel.internal.JPrimitiveType;
	
	/**
	* @deprecated calling this method from {@link JClass}
	* would be meaningless, since it's always guaranteed to
	* return <tt>this</tt>.
	*/
	@:overload override public function boxify() : com.sun.codemodel.internal.JClass;
	
	@:overload override public function unboxify() : com.sun.codemodel.internal.JType;
	
	@:overload override public function erasure() : com.sun.codemodel.internal.JClass;
	
	/**
	* Checks the relationship between two classes.
	* <p>
	* This method works in the same way as {@link Class#isAssignableFrom(Class)}
	* works. For example, baseClass.isAssignableFrom(derivedClass)==true.
	*/
	@:overload @:final public function isAssignableFrom(derived : com.sun.codemodel.internal.JClass) : Bool;
	
	/**
	* Gets the parameterization of the given base type.
	*
	* <p>
	* For example, given the following
	* <pre><xmp>
	* interface Foo<T> extends List<List<T>> {}
	* interface Bar extends Foo<String> {}
	* </xmp></pre>
	* This method works like this:
	* <pre><xmp>
	* getBaseClass( Bar, List ) = List<List<String>
	* getBaseClass( Bar, Foo  ) = Foo<String>
	* getBaseClass( Foo<? extends Number>, Collection ) = Collection<List<? extends Number>>
	* getBaseClass( ArrayList<? extends BigInteger>, List ) = List<? extends BigInteger>
	* </xmp></pre>
	*
	* @param baseType
	*      The class whose parameterization we are interested in.
	* @return
	*      The use of {@code baseType} in {@code this} type.
	*      or null if the type is not assignable to the base type.
	*/
	@:overload @:final public function getBaseClass(baseType : com.sun.codemodel.internal.JClass) : com.sun.codemodel.internal.JClass;
	
	@:overload @:final public function getBaseClass(baseType : Class<Dynamic>) : com.sun.codemodel.internal.JClass;
	
	@:overload override public function array() : com.sun.codemodel.internal.JClass;
	
	/**
	* "Narrows" a generic class to a concrete class by specifying
	* a type argument.
	*
	* <p>
	* <code>.narrow(X)</code> builds <code>Set&lt;X></code> from <code>Set</code>.
	*/
	@:overload public function narrow(clazz : Class<Dynamic>) : com.sun.codemodel.internal.JClass;
	
	@:overload public function narrow(clazz : java.NativeArray<Class<Dynamic>>) : com.sun.codemodel.internal.JClass;
	
	/**
	* "Narrows" a generic class to a concrete class by specifying
	* a type argument.
	*
	* <p>
	* <code>.narrow(X)</code> builds <code>Set&lt;X></code> from <code>Set</code>.
	*/
	@:overload public function narrow(clazz : com.sun.codemodel.internal.JClass) : com.sun.codemodel.internal.JClass;
	
	@:overload public function narrow(type : com.sun.codemodel.internal.JType) : com.sun.codemodel.internal.JClass;
	
	@:overload public function narrow(clazz : java.NativeArray<com.sun.codemodel.internal.JClass>) : com.sun.codemodel.internal.JClass;
	
	@:overload public function narrow(clazz : java.util.List<com.sun.codemodel.internal.JClass>) : com.sun.codemodel.internal.JClass;
	
	/**
	* If this class is parameterized, return the type parameter of the given index.
	*/
	@:overload public function getTypeParameters() : java.util.List<com.sun.codemodel.internal.JClass>;
	
	/**
	* Returns true if this class is a parameterized class.
	*/
	@:overload @:final public function isParameterized() : Bool;
	
	/**
	* Create "? extends T" from T.
	*
	* @return never null
	*/
	@:overload @:final public function wildcard() : com.sun.codemodel.internal.JClass;
	
	/**
	* Substitutes the type variables with their actual arguments.
	*
	* <p>
	* For example, when this class is Map&lt;String,Map&lt;V>>,
	* (where V then doing
	* substituteParams( V, Integer ) returns a {@link JClass}
	* for <code>Map&lt;String,Map&lt;Integer>></code>.
	*
	* <p>
	* This method needs to work recursively.
	*/
	@:overload @:abstract private function substituteParams(variables : java.NativeArray<com.sun.codemodel.internal.JTypeVar>, bindings : java.util.List<com.sun.codemodel.internal.JClass>) : com.sun.codemodel.internal.JClass;
	
	@:overload override public function toString() : String;
	
	@:overload @:final public function dotclass() : com.sun.codemodel.internal.JExpression;
	
	/** Generates a static method invocation. */
	@:overload @:final public function staticInvoke(method : com.sun.codemodel.internal.JMethod) : com.sun.codemodel.internal.JInvocation;
	
	/** Generates a static method invocation. */
	@:overload @:final public function staticInvoke(method : String) : com.sun.codemodel.internal.JInvocation;
	
	/** Static field reference. */
	@:overload @:final public function staticRef(field : String) : com.sun.codemodel.internal.JFieldRef;
	
	/** Static field reference. */
	@:overload @:final public function staticRef(field : com.sun.codemodel.internal.JVar) : com.sun.codemodel.internal.JFieldRef;
	
	@:overload override public function generate(f : com.sun.codemodel.internal.JFormatter) : Void;
	
	
}
