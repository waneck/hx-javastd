package java.beans;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class Encoder
{
	/**
	* Write the specified object to the output stream.
	* The serialized form will denote a series of
	* expressions, the combined effect of which will create
	* an equivalent object when the input stream is read.
	* By default, the object is assumed to be a <em>JavaBean</em>
	* with a nullary constructor, whose state is defined by
	* the matching pairs of "setter" and "getter" methods
	* returned by the Introspector.
	*
	* @param o The object to be written to the stream.
	*
	* @see XMLDecoder#readObject
	*/
	@:overload @:protected private function writeObject(o : Dynamic) : Void;
	
	/**
	* Sets the exception handler for this stream to <code>exceptionListener</code>.
	* The exception handler is notified when this stream catches recoverable
	* exceptions.
	*
	* @param exceptionListener The exception handler for this stream;
	*       if <code>null</code> the default exception listener will be used.
	*
	* @see #getExceptionListener
	*/
	@:overload @:public public function setExceptionListener(exceptionListener : java.beans.ExceptionListener) : Void;
	
	/**
	* Gets the exception handler for this stream.
	*
	* @return The exception handler for this stream;
	*    Will return the default exception listener if this has not explicitly been set.
	*
	* @see #setExceptionListener
	*/
	@:overload @:public public function getExceptionListener() : java.beans.ExceptionListener;
	
	/**
	* Returns the persistence delegate for the given type.
	* The persistence delegate is calculated by applying
	* the following rules in order:
	* <ol>
	* <li>
	* If a persistence delegate is associated with the given type
	* by using the {@link #setPersistenceDelegate} method
	* it is returned.
	* <li>
	* A persistence delegate is then looked up by the name
	* composed of the the fully qualified name of the given type
	* and the "PersistenceDelegate" postfix.
	* For example, a persistence delegate for the {@code Bean} class
	* should be named {@code BeanPersistenceDelegate}
	* and located in the same package.
	* <pre>
	* public class Bean { ... }
	* public class BeanPersistenceDelegate { ... }</pre>
	* The instance of the {@code BeanPersistenceDelegate} class
	* is returned for the {@code Bean} class.
	* <li>
	* If the type is {@code null},
	* a shared internal persistence delegate is returned
	* that encodes {@code null} value.
	* <li>
	* If the type is a {@code enum} declaration,
	* a shared internal persistence delegate is returned
	* that encodes constants of this enumeration
	* by their names.
	* <li>
	* If the type is a primitive type or the corresponding wrapper,
	* a shared internal persistence delegate is returned
	* that encodes values of the given type.
	* <li>
	* If the type is an array,
	* a shared internal persistence delegate is returned
	* that encodes an array of the appropriate type and length,
	* and each of its elements as if they are properties.
	* <li>
	* If the type is a proxy,
	* a shared internal persistence delegate is returned
	* that encodes a proxy instance by using
	* the {@link java.lang.reflect.Proxy#newProxyInstance} method.
	* <li>
	* If the {@link BeanInfo} for this type has a {@link BeanDescriptor}
	* which defined a "persistenceDelegate" attribute,
	* the value of this named attribute is returned.
	* <li>
	* In all other cases the default persistence delegate is returned.
	* The default persistence delegate assumes the type is a <em>JavaBean</em>,
	* implying that it has a default constructor and that its state
	* may be characterized by the matching pairs of "setter" and "getter"
	* methods returned by the {@link Introspector} class.
	* The default constructor is the constructor with the greatest number
	* of parameters that has the {@link ConstructorProperties} annotation.
	* If none of the constructors has the {@code ConstructorProperties} annotation,
	* then the nullary constructor (constructor with no parameters) will be used.
	* For example, in the following code fragment, the nullary constructor
	* for the {@code Foo} class will be used,
	* while the two-parameter constructor
	* for the {@code Bar} class will be used.
	* <pre>
	* public class Foo {
	*     public Foo() { ... }
	*     public Foo(int x) { ... }
	* }
	* public class Bar {
	*     public Bar() { ... }
	*     &#64;ConstructorProperties({"x"})
	*     public Bar(int x) { ... }
	*     &#64;ConstructorProperties({"x", "y"})
	*     public Bar(int x, int y) { ... }
	* }</pre>
	* </ol>
	*
	* @param type  the class of the objects
	* @return the persistence delegate for the given type
	*
	* @see #setPersistenceDelegate
	* @see java.beans.Introspector#getBeanInfo
	* @see java.beans.BeanInfo#getBeanDescriptor
	*/
	@:overload @:public public function getPersistenceDelegate(type : Class<Dynamic>) : java.beans.PersistenceDelegate;
	
	/**
	* Associates the specified persistence delegate with the given type.
	*
	* @param type  the class of objects that the specified persistence delegate applies to
	* @param delegate  the persistence delegate for instances of the given type
	*
	* @see #getPersistenceDelegate
	* @see java.beans.Introspector#getBeanInfo
	* @see java.beans.BeanInfo#getBeanDescriptor
	*/
	@:overload @:public public function setPersistenceDelegate(type : Class<Dynamic>, delegate : java.beans.PersistenceDelegate) : Void;
	
	/**
	* Removes the entry for this instance, returning the old entry.
	*
	* @param oldInstance The entry that should be removed.
	* @return The entry that was removed.
	*
	* @see #get
	*/
	@:overload @:public public function remove(oldInstance : Dynamic) : Dynamic;
	
	/**
	* Returns a tentative value for <code>oldInstance</code> in
	* the environment created by this stream. A persistence
	* delegate can use its <code>mutatesTo</code> method to
	* determine whether this value may be initialized to
	* form the equivalent object at the output or whether
	* a new object must be instantiated afresh. If the
	* stream has not yet seen this value, null is returned.
	*
	* @param  oldInstance The instance to be looked up.
	* @return The object, null if the object has not been seen before.
	*/
	@:overload @:public public function get(oldInstance : Dynamic) : Dynamic;
	
	/**
	* Writes statement <code>oldStm</code> to the stream.
	* The <code>oldStm</code> should be written entirely
	* in terms of the callers environment, i.e. the
	* target and all arguments should be part of the
	* object graph being written. These expressions
	* represent a series of "what happened" expressions
	* which tell the output stream how to produce an
	* object graph like the original.
	* <p>
	* The implementation of this method will produce
	* a second expression to represent the same expression in
	* an environment that will exist when the stream is read.
	* This is achieved simply by calling <code>writeObject</code>
	* on the target and all the arguments and building a new
	* expression with the results.
	*
	* @param oldStm The expression to be written to the stream.
	*/
	@:overload @:public public function writeStatement(oldStm : java.beans.Statement) : Void;
	
	/**
	* The implementation first checks to see if an
	* expression with this value has already been written.
	* If not, the expression is cloned, using
	* the same procedure as <code>writeStatement</code>,
	* and the value of this expression is reconciled
	* with the value of the cloned expression
	* by calling <code>writeObject</code>.
	*
	* @param oldExp The expression to be written to the stream.
	*/
	@:overload @:public public function writeExpression(oldExp : java.beans.Expression) : Void;
	
	
}
