package com.sun.xml.internal.ws.policy;
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
extern class PolicyAssertion
{
	@:overload @:protected private function new() : Void;
	
	/**
	* Creates generic assertionand stores the data specified in input parameters
	*
	* @param assertionData assertion creation data specifying the details of newly created assertion. May be {@code null}.
	* @param assertionParameters collection of assertions parameters of this policy assertion. May be {@code null}.
	* @param nestedAlternative assertion set specifying nested policy alternative. May be {@code null}.
	*
	* @deprecated Non-abstract assertion types should derive from {@link SimpleAssertion}
	* or {@link ComplexAssertion} instead. {@link Policy} class will not provide support for
	* nested policy alternatives in the future. This responsibility is delegated to
	* {@link ComplexAssertion} class instead.
	*/
	@:overload @:protected private function new(assertionData : com.sun.xml.internal.ws.policy.sourcemodel.AssertionData, assertionParameters : java.util.Collection<com.sun.xml.internal.ws.policy.PolicyAssertion>, nestedAlternative : com.sun.xml.internal.ws.policy.AssertionSet) : Void;
	
	/**
	* Creates generic assertionand stores the data specified in input parameters
	*
	* @param assertionData assertion creation data specifying the details of newly created assertion
	* @param assertionParameters collection of assertions parameters of this policy assertion. May be {@code null}.
	*/
	@:overload @:protected private function new(assertionData : com.sun.xml.internal.ws.policy.sourcemodel.AssertionData, assertionParameters : java.util.Collection<com.sun.xml.internal.ws.policy.PolicyAssertion>) : Void;
	
	/**
	* Returns the fully qualified name of the assertion.
	*
	* @return assertion's fully qualified name.
	*/
	@:overload @:public @:final public function getName() : javax.xml.namespace.QName;
	
	/**
	* Returns the value of the assertion - the character data content contained in the assertion element representation.
	*
	* @return assertion's value. May return {@code null} if there is no value set for the assertion.
	*/
	@:overload @:public @:final public function getValue() : String;
	
	/**
	* Method specifies whether the assertion is otpional or not.
	* <p/>
	* This is a default implementation that may be overriden. The method returns {@code true} if the {@code wsp:optional} attribute
	* is present on the assertion and its value is {@code 'true'}. Otherwise the method returns {@code false}.
	*
	* @return {@code 'true'} if the assertion is optional. Returns {@code false} otherwise.
	*/
	@:overload @:public public function isOptional() : Bool;
	
	/**
	* Method specifies whether the assertion is ignorable or not.
	* <p/>
	* This is a default implementation that may be overriden. The method returns {@code true} if the {@code wsp:Ignorable} attribute
	* is present on the assertion and its value is {@code 'true'}. Otherwise the method returns {@code false}.
	*
	* @return {@code 'true'} if the assertion is ignorable. Returns {@code false} otherwise.
	*/
	@:overload @:public public function isIgnorable() : Bool;
	
	/**
	* Method specifies whether the assertion is private or not. This is specified by our proprietary visibility element.
	*
	* @return {@code 'true'} if the assertion is marked as private (i.e. should not be marshalled int generated WSDL documents). Returns {@code false} otherwise.
	*/
	@:overload @:public @:final public function isPrivate() : Bool;
	
	/**
	* Returns the disconnected set of attributes attached to the assertion. Each attribute is represented as a single
	* {@code Map.Entry<attributeName, attributeValue>} element.
	* <p/>
	* 'Disconnected' means, that the result of this method will not be synchronized with any consequent assertion's attribute modification. It is
	* also important to notice that a manipulation with returned set of attributes will not have any effect on the actual assertion's
	* attributes.
	*
	* @return disconected set of attributes attached to the assertion.
	*/
	@:overload @:public @:final public function getAttributesSet() : java.util.Set<java.util.Map.Map_Entry<javax.xml.namespace.QName, String>>;
	
	/**
	* Returns the disconnected map of attributes attached to the assertion.
	* <p/>
	* 'Disconnected' means, that the result of this method will not be synchronized with any consequent assertion's attribute modification. It is
	* also important to notice that a manipulation with returned set of attributes will not have any effect on the actual assertion's
	* attributes.
	*
	* @return disconnected map of attributes attached to the assertion.
	*/
	@:overload @:public @:final public function getAttributes() : java.util.Map<javax.xml.namespace.QName, String>;
	
	/**
	* Returns the value of an attribute. Returns null if an attribute with the given name does not exist.
	*
	* @param name The fully qualified name of the attribute
	* @return The value of the attribute. Returns {@code null} if there is no such attribute or if it's value is null.
	*/
	@:overload @:public @:final public function getAttributeValue(name : javax.xml.namespace.QName) : String;
	
	/**
	* Returns the boolean information whether this assertion contains any parameters.
	*
	* @return {@code true} if the assertion contains parameters. Returns {@code false} otherwise.
	*
	* @deprecated Use hasParameters() instead
	*/
	@:overload @:public @:final public function hasNestedAssertions() : Bool;
	
	/**
	* Returns the boolean information whether this assertion contains any parameters.
	*
	* @return {@code true} if the assertion contains parameters. Returns {@code false} otherwise.
	*/
	@:overload @:public @:final public function hasParameters() : Bool;
	
	/**
	* Returns the assertion's parameter collection iterator.
	*
	* @return the assertion's parameter collection iterator.
	*
	* @deprecated Use getNestedParametersIterator() instead
	*/
	@:overload @:public @:final public function getNestedAssertionsIterator() : java.util.Iterator<com.sun.xml.internal.ws.policy.PolicyAssertion>;
	
	/**
	* Returns the assertion's parameter collection iterator.
	*
	* @return the assertion's parameter collection iterator.
	*/
	@:overload @:public @:final public function getParametersIterator() : java.util.Iterator<com.sun.xml.internal.ws.policy.PolicyAssertion>;
	
	/**
	* Returns the boolean information whether this assertion contains nested policy.
	*
	* @return {@code true} if the assertion contains child (nested) policy. Returns {@code false} otherwise.
	*/
	@:overload @:public public function hasNestedPolicy() : Bool;
	
	/**
	* Returns the nested policy if any.
	*
	* @return the nested policy if the assertion contains a nested policy. Returns {@code null} otherwise.
	*/
	@:overload @:public public function getNestedPolicy() : com.sun.xml.internal.ws.policy.NestedPolicy;
	
	/**
	* Casts the assertion to the implementation type. Returns null if that is not
	* possible.
	*
	* @param <T> The implementation type of the assertion.
	* @param type The implementation type of the assertion. May not be null.
	* @return The instance of the implementation type. Null otherwise.
	*/
	@:overload @:public public function getImplementation<T : com.sun.xml.internal.ws.policy.PolicyAssertion>(type : Class<T>) : T;
	
	/**
	* An {@code Object.toString()} method override.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* A helper method that appends indented string representation of this instance to the input string buffer.
	*
	* @param indentLevel indentation level to be used.
	* @param buffer buffer to be used for appending string representation of this instance
	* @return modified buffer containing new string representation of the instance
	*/
	@:overload @:protected private function toString(indentLevel : Int, buffer : java.lang.StringBuffer) : java.lang.StringBuffer;
	
	/**
	* An {@code Object.equals(Object obj)} method override.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* An {@code Object.hashCode()} method override.
	*/
	@:overload @:public public function hashCode() : Int;
	
	
}
