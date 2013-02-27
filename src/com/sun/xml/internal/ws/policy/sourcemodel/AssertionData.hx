package com.sun.xml.internal.ws.policy.sourcemodel;
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
extern class AssertionData implements java.lang.Cloneable implements java.io.Serializable
{
	/**
	* Constructs assertion data wrapper instance for an assertion that does not
	* contain any value nor any attributes.
	*
	* @param name the FQN of the assertion
	*
	* @throws IllegalArgumentException in case the {@code type} parameter is not
	* {@link ModelNode.Type#ASSERTION ASSERTION} or
	* {@link ModelNode.Type#ASSERTION_PARAMETER_NODE ASSERTION_PARAMETER_NODE}
	*/
	@:overload public static function createAssertionData(name : javax.xml.namespace.QName) : AssertionData;
	
	/**
	* Constructs assertion data wrapper instance for an assertion parameter that
	* does not contain any value nor any attributes.
	*
	* @param name the FQN of the assertion parameter
	*
	* @throws IllegalArgumentException in case the {@code type} parameter is not
	* {@link ModelNode.Type#ASSERTION ASSERTION} or
	* {@link ModelNode.Type#ASSERTION_PARAMETER_NODE ASSERTION_PARAMETER_NODE}
	*/
	@:overload public static function createAssertionParameterData(name : javax.xml.namespace.QName) : AssertionData;
	
	/**
	* Constructs assertion data wrapper instance for an assertion that does
	* contain a value or attributes.
	*
	* @param name the FQN of the assertion
	* @param value a {@link String} representation of model node value
	* @param attributes map of model node's &lt;attribute name, attribute value&gt; pairs
	* @param optional flag indicating whether the assertion is optional or not
	* @param ignorable flag indicating whether the assertion is ignorable or not
	*
	* @throws IllegalArgumentException in case the {@code type} parameter is not
	* {@link ModelNode.Type#ASSERTION ASSERTION} or
	* {@link ModelNode.Type#ASSERTION_PARAMETER_NODE ASSERTION_PARAMETER_NODE}
	*/
	@:overload public static function createAssertionData(name : javax.xml.namespace.QName, value : String, attributes : java.util.Map<javax.xml.namespace.QName, String>, optional : Bool, ignorable : Bool) : AssertionData;
	
	/**
	* Constructs assertion data wrapper instance for an assertion parameter that
	* contains a value or attributes
	*
	* @param name the FQN of the assertion parameter
	* @param value a {@link String} representation of model node value
	* @param attributes map of model node's &lt;attribute name, attribute value&gt; pairs
	*
	* @throws IllegalArgumentException in case the {@code type} parameter is not
	* {@link ModelNode.Type#ASSERTION ASSERTION} or
	* {@link ModelNode.Type#ASSERTION_PARAMETER_NODE ASSERTION_PARAMETER_NODE}
	*/
	@:overload public static function createAssertionParameterData(name : javax.xml.namespace.QName, value : String, attributes : java.util.Map<javax.xml.namespace.QName, String>) : AssertionData;
	
	@:overload private function clone() : AssertionData;
	
	/**
	* Returns true if the given attribute exists, false otherwise.
	*
	* @param name The name of the attribute. Must not be null.
	* @return True if the given attribute exists, false otherwise.
	*/
	@:overload public function containsAttribute(name : javax.xml.namespace.QName) : Bool;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the value of the given attribute. Returns null if the attribute
	* does not exist.
	*
	* @param name The name of the attribute. Must not be null.
	* @return The value of the given attribute. Returns null if the attribute
	*   does not exist.
	*/
	@:overload public function getAttributeValue(name : javax.xml.namespace.QName) : String;
	
	/**
	* Returns the disconnected map of attributes attached to the assertion.
	* <p/>
	* 'Disconnected' means, that the result of this method will not be synchronized with any consequent assertion's attribute modification. It is
	* also important to notice that a manipulation with returned set of attributes will not have any effect on the actual assertion's
	* attributes.
	*
	* @return disconnected map of attributes attached to the assertion.
	*/
	@:overload public function getAttributes() : java.util.Map<javax.xml.namespace.QName, String>;
	
	/**
	* Returns the disconnected set of attributes attached to the assertion. Each attribute is represented as a single
	* {@code Map.Entry<attributeName, attributeValue>} element.
	* <p/>
	* 'Disconnected' means, that the result of this method will not be synchronized with any consequent assertion's attribute modification. It is
	* also important to notice that a manipulation with returned set of attributes will not have any effect on the actual assertion's
	* attributes.
	*
	* @return disconnected set of attributes attached to the assertion.
	*/
	@:overload public function getAttributesSet() : java.util.Set<java.util.Map.Map_Entry<javax.xml.namespace.QName, String>>;
	
	/**
	* Returns the name of the assertion.
	*
	* @return assertion's name
	*/
	@:overload public function getName() : javax.xml.namespace.QName;
	
	/**
	* Returns the value of the assertion.
	*
	* @return assertion's value
	*/
	@:overload public function getValue() : String;
	
	/**
	* An {@code Object.hashCode()} method override.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Method specifies whether the assertion data contain proprietary visibility element set to "private" value.
	*
	* @return {@code 'true'} if the attribute is present and set properly (i.e. the node containing this assertion data instance should
	* not be marshaled into generated WSDL documents). Returns {@code false} otherwise.
	*/
	@:overload public function isPrivateAttributeSet() : Bool;
	
	/**
	* Removes the given attribute from the assertion data.
	*
	* @param name The name of the attribute. Must not be null
	* @return The value of the removed attribute.
	*/
	@:overload public function removeAttribute(name : javax.xml.namespace.QName) : String;
	
	/**
	* Adds or overwrites an attribute.
	*
	* @param name The name of the attribute.
	* @param value The value of the attribute.
	*/
	@:overload public function setAttribute(name : javax.xml.namespace.QName, value : String) : Void;
	
	/**
	* Sets the optional attribute.
	*
	* @param value The value of the optional attribute.
	*/
	@:overload public function setOptionalAttribute(value : Bool) : Void;
	
	/**
	* Tests if the optional attribute is set.
	*
	* @return True if optional is set and is true. False otherwise.
	*/
	@:overload public function isOptionalAttributeSet() : Bool;
	
	/**
	* Sets the ignorable attribute.
	*
	* @param value The value of the ignorable attribute.
	*/
	@:overload public function setIgnorableAttribute(value : Bool) : Void;
	
	/**
	* Tests if the ignorable attribute is set.
	*
	* @return True if ignorable is set and is true. False otherwise.
	*/
	@:overload public function isIgnorableAttributeSet() : Bool;
	
	@:overload public function toString() : String;
	
	/**
	* A helper method that appends indented string representation of this instance to the input string buffer.
	*
	* @param indentLevel indentation level to be used.
	* @param buffer buffer to be used for appending string representation of this instance
	* @return modified buffer containing new string representation of the instance
	*/
	@:overload public function toString(indentLevel : Int, buffer : java.lang.StringBuffer) : java.lang.StringBuffer;
	
	@:overload public function getNodeType() : com.sun.xml.internal.ws.policy.sourcemodel.ModelNode.ModelNode_Type;
	
	
}
