package java.beans;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
/**
* The <code>DefaultPersistenceDelegate</code> is a concrete implementation of
* the abstract <code>PersistenceDelegate</code> class and
* is the delegate used by default for classes about
* which no information is available. The <code>DefaultPersistenceDelegate</code>
* provides, version resilient, public API-based persistence for
* classes that follow the JavaBeans&trade; conventions without any class specific
* configuration.
* <p>
* The key assumptions are that the class has a nullary constructor
* and that its state is accurately represented by matching pairs
* of "setter" and "getter" methods in the order they are returned
* by the Introspector.
* In addition to providing code-free persistence for JavaBeans,
* the <code>DefaultPersistenceDelegate</code> provides a convenient means
* to effect persistent storage for classes that have a constructor
* that, while not nullary, simply requires some property values
* as arguments.
*
* @see #DefaultPersistenceDelegate(String[])
* @see java.beans.Introspector
*
* @since 1.4
*
* @author Philip Milne
*/
@:require(java4) extern class DefaultPersistenceDelegate extends java.beans.PersistenceDelegate
{
	/**
	* Creates a persistence delegate for a class with a nullary constructor.
	*
	* @see #DefaultPersistenceDelegate(java.lang.String[])
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a default persistence delegate for a class with a
	* constructor whose arguments are the values of the property
	* names as specified by <code>constructorPropertyNames</code>.
	* The constructor arguments are created by
	* evaluating the property names in the order they are supplied.
	* To use this class to specify a single preferred constructor for use
	* in the serialization of a particular type, we state the
	* names of the properties that make up the constructor's
	* arguments. For example, the <code>Font</code> class which
	* does not define a nullary constructor can be handled
	* with the following persistence delegate:
	*
	* <pre>
	*     new DefaultPersistenceDelegate(new String[]{"name", "style", "size"});
	* </pre>
	*
	* @param  constructorPropertyNames The property names for the arguments of this constructor.
	*
	* @see #instantiate
	*/
	@:overload public function new(constructorPropertyNames : java.NativeArray<String>) : Void;
	
	/**
	* If the number of arguments in the specified constructor is non-zero and
	* the class of <code>oldInstance</code> explicitly declares an "equals" method
	* this method returns the value of <code>oldInstance.equals(newInstance)</code>.
	* Otherwise, this method uses the superclass's definition which returns true if the
	* classes of the two instances are equal.
	*
	* @param oldInstance The instance to be copied.
	* @param newInstance The instance that is to be modified.
	* @return True if an equivalent copy of <code>newInstance</code> may be
	*         created by applying a series of mutations to <code>oldInstance</code>.
	*
	* @see #DefaultPersistenceDelegate(String[])
	*/
	@:overload override private function mutatesTo(oldInstance : Dynamic, newInstance : Dynamic) : Bool;
	
	/**
	* This default implementation of the <code>instantiate</code> method returns
	* an expression containing the predefined method name "new" which denotes a
	* call to a constructor with the arguments as specified in
	* the <code>DefaultPersistenceDelegate</code>'s constructor.
	*
	* @param  oldInstance The instance to be instantiated.
	* @param  out The code output stream.
	* @return An expression whose value is <code>oldInstance</code>.
	*
	* @throws NullPointerException if {@code out} is {@code null}
	*
	* @see #DefaultPersistenceDelegate(String[])
	*/
	@:overload override private function instantiate(oldInstance : Dynamic, out : java.beans.Encoder) : java.beans.Expression;
	
	/**
	* This default implementation of the <code>initialize</code> method assumes
	* all state held in objects of this type is exposed via the
	* matching pairs of "setter" and "getter" methods in the order
	* they are returned by the Introspector. If a property descriptor
	* defines a "transient" attribute with a value equal to
	* <code>Boolean.TRUE</code> the property is ignored by this
	* default implementation. Note that this use of the word
	* "transient" is quite independent of the field modifier
	* that is used by the <code>ObjectOutputStream</code>.
	* <p>
	* For each non-transient property, an expression is created
	* in which the nullary "getter" method is applied
	* to the <code>oldInstance</code>. The value of this
	* expression is the value of the property in the instance that is
	* being serialized. If the value of this expression
	* in the cloned environment <code>mutatesTo</code> the
	* target value, the new value is initialized to make it
	* equivalent to the old value. In this case, because
	* the property value has not changed there is no need to
	* call the corresponding "setter" method and no statement
	* is emitted. If not however, the expression for this value
	* is replaced with another expression (normally a constructor)
	* and the corresponding "setter" method is called to install
	* the new property value in the object. This scheme removes
	* default information from the output produced by streams
	* using this delegate.
	* <p>
	* In passing these statements to the output stream, where they
	* will be executed, side effects are made to the <code>newInstance</code>.
	* In most cases this allows the problem of properties
	* whose values depend on each other to actually help the
	* serialization process by making the number of statements
	* that need to be written to the output smaller. In general,
	* the problem of handling interdependent properties is reduced to
	* that of finding an order for the properties in
	* a class such that no property value depends on the value of
	* a subsequent property.
	*
	* @param oldInstance The instance to be copied.
	* @param newInstance The instance that is to be modified.
	* @param out The stream to which any initialization statements should be written.
	*
	* @throws NullPointerException if {@code out} is {@code null}
	*
	* @see java.beans.Introspector#getBeanInfo
	* @see java.beans.PropertyDescriptor
	*/
	@:overload override private function initialize(type : Class<Dynamic>, oldInstance : Dynamic, newInstance : Dynamic, out : java.beans.Encoder) : Void;
	
	
}
