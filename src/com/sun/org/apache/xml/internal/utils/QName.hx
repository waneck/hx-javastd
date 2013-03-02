package com.sun.org.apache.xml.internal.utils;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: QName.java,v 1.2.4.1 2005/09/15 08:15:52 suresh_emailid Exp $
*/
extern class QName implements java.io.Serializable
{
	/**
	* The local name.
	* @serial
	*/
	private var _localName : String;
	
	/**
	* The namespace URI.
	* @serial
	*/
	private var _namespaceURI : String;
	
	/**
	* The namespace prefix.
	* @serial
	*/
	private var _prefix : String;
	
	/**
	* The XML namespace.
	*/
	public static var S_XMLNAMESPACEURI(default, null) : String;
	
	/**
	* Constructs an empty QName.
	* 20001019: Try making this public, to support Serializable? -- JKESS
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a new QName with the specified namespace URI and
	* local name.
	*
	* @param namespaceURI The namespace URI if known, or null
	* @param localName The local name
	*/
	@:overload public function new(namespaceURI : String, localName : String) : Void;
	
	/**
	* Constructs a new QName with the specified namespace URI and
	* local name.
	*
	* @param namespaceURI The namespace URI if known, or null
	* @param localName The local name
	* @param validate If true the new QName will be validated and an IllegalArgumentException will
	*                 be thrown if it is invalid.
	*/
	@:overload public function new(namespaceURI : String, localName : String, validate : Bool) : Void;
	
	/**
	* Constructs a new QName with the specified namespace URI, prefix
	* and local name.
	*
	* @param namespaceURI The namespace URI if known, or null
	* @param prefix The namespace prefix is known, or null
	* @param localName The local name
	*
	*/
	@:overload public function new(namespaceURI : String, prefix : String, localName : String) : Void;
	
	/**
	* Constructs a new QName with the specified namespace URI, prefix
	* and local name.
	*
	* @param namespaceURI The namespace URI if known, or null
	* @param prefix The namespace prefix is known, or null
	* @param localName The local name
	* @param validate If true the new QName will be validated and an IllegalArgumentException will
	*                 be thrown if it is invalid.
	*/
	@:overload public function new(namespaceURI : String, prefix : String, localName : String, validate : Bool) : Void;
	
	/**
	* Construct a QName from a string, without namespace resolution.  Good
	* for a few odd cases.
	*
	* @param localName Local part of qualified name
	*
	*/
	@:overload public function new(localName : String) : Void;
	
	/**
	* Construct a QName from a string, without namespace resolution.  Good
	* for a few odd cases.
	*
	* @param localName Local part of qualified name
	* @param validate If true the new QName will be validated and an IllegalArgumentException will
	*                 be thrown if it is invalid.
	*/
	@:overload public function new(localName : String, validate : Bool) : Void;
	
	/**
	* Construct a QName from a string, resolving the prefix
	* using the given namespace stack. The default namespace is
	* not resolved.
	*
	* @param qname Qualified name to resolve
	* @param namespaces Namespace stack to use to resolve namespace
	*/
	@:overload public function new(qname : String, namespaces : java.util.Stack<Dynamic>) : Void;
	
	/**
	* Construct a QName from a string, resolving the prefix
	* using the given namespace stack. The default namespace is
	* not resolved.
	*
	* @param qname Qualified name to resolve
	* @param namespaces Namespace stack to use to resolve namespace
	* @param validate If true the new QName will be validated and an IllegalArgumentException will
	*                 be thrown if it is invalid.
	*/
	@:overload public function new(qname : String, namespaces : java.util.Stack<Dynamic>, validate : Bool) : Void;
	
	/**
	* Construct a QName from a string, resolving the prefix
	* using the given namespace context and prefix resolver.
	* The default namespace is not resolved.
	*
	* @param qname Qualified name to resolve
	* @param namespaceContext Namespace Context to use
	* @param resolver Prefix resolver for this context
	*/
	@:overload public function new(qname : String, namespaceContext : org.w3c.dom.Element, resolver : com.sun.org.apache.xml.internal.utils.PrefixResolver) : Void;
	
	/**
	* Construct a QName from a string, resolving the prefix
	* using the given namespace context and prefix resolver.
	* The default namespace is not resolved.
	*
	* @param qname Qualified name to resolve
	* @param namespaceContext Namespace Context to use
	* @param resolver Prefix resolver for this context
	* @param validate If true the new QName will be validated and an IllegalArgumentException will
	*                 be thrown if it is invalid.
	*/
	@:overload public function new(qname : String, namespaceContext : org.w3c.dom.Element, resolver : com.sun.org.apache.xml.internal.utils.PrefixResolver, validate : Bool) : Void;
	
	/**
	* Construct a QName from a string, resolving the prefix
	* using the given namespace stack. The default namespace is
	* not resolved.
	*
	* @param qname Qualified name to resolve
	* @param resolver Prefix resolver for this context
	*/
	@:overload public function new(qname : String, resolver : com.sun.org.apache.xml.internal.utils.PrefixResolver) : Void;
	
	/**
	* Construct a QName from a string, resolving the prefix
	* using the given namespace stack. The default namespace is
	* not resolved.
	*
	* @param qname Qualified name to resolve
	* @param resolver Prefix resolver for this context
	* @param validate If true the new QName will be validated and an IllegalArgumentException will
	*                 be thrown if it is invalid.
	*/
	@:overload public function new(qname : String, resolver : com.sun.org.apache.xml.internal.utils.PrefixResolver, validate : Bool) : Void;
	
	/**
	* Returns the namespace URI. Returns null if the namespace URI
	* is not known.
	*
	* @return The namespace URI, or null
	*/
	@:overload public function getNamespaceURI() : String;
	
	/**
	* Returns the namespace prefix. Returns null if the namespace
	* prefix is not known.
	*
	* @return The namespace prefix, or null
	*/
	@:overload public function getPrefix() : String;
	
	/**
	* Returns the local part of the qualified name.
	*
	* @return The local part of the qualified name
	*/
	@:overload public function getLocalName() : String;
	
	/**
	* Return the string representation of the qualified name, using the
	* prefix if available, or the '{ns}foo' notation if not. Performs
	* string concatenation, so beware of performance issues.
	*
	* @return the string representation of the namespace
	*/
	@:overload public function toString() : String;
	
	/**
	* Return the string representation of the qualified name using the
	* the '{ns}foo' notation. Performs
	* string concatenation, so beware of performance issues.
	*
	* @return the string representation of the namespace
	*/
	@:overload public function toNamespacedString() : String;
	
	/**
	* Get the namespace of the qualified name.
	*
	* @return the namespace URI of the qualified name
	*/
	@:overload public function getNamespace() : String;
	
	/**
	* Get the local part of the qualified name.
	*
	* @return the local part of the qualified name
	*/
	@:overload public function getLocalPart() : String;
	
	/**
	* Return the cached hashcode of the qualified name.
	*
	* @return the cached hashcode of the qualified name
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Override equals and agree that we're equal if
	* the passed object is a string and it matches
	* the name of the arg.
	*
	* @param ns Namespace URI to compare to
	* @param localPart Local part of qualified name to compare to
	*
	* @return True if the local name and uri match
	*/
	@:overload public function equals(ns : String, localPart : String) : Bool;
	
	/**
	* Override equals and agree that we're equal if
	* the passed object is a QName and it matches
	* the name of the arg.
	*
	* @return True if the qualified names are equal
	*/
	@:overload public function equals(object : Dynamic) : Bool;
	
	/**
	* Given a string, create and return a QName object
	*
	*
	* @param name String to use to create QName
	*
	* @return a QName object
	*/
	@:overload public static function getQNameFromString(name : String) : com.sun.org.apache.xml.internal.utils.QName;
	
	/**
	* This function tells if a raw attribute name is a
	* xmlns attribute.
	*
	* @param attRawName Raw name of attribute
	*
	* @return True if the attribute starts with or is equal to xmlns
	*/
	@:overload public static function isXMLNSDecl(attRawName : String) : Bool;
	
	/**
	* This function tells if a raw attribute name is a
	* xmlns attribute.
	*
	* @param attRawName Raw name of attribute
	*
	* @return Prefix of attribute
	*/
	@:overload public static function getPrefixFromXMLNSDecl(attRawName : String) : String;
	
	/**
	* Returns the local name of the given node.
	*
	* @param qname Input name
	*
	* @return Local part of the name if prefixed, or the given name if not
	*/
	@:native('getLocalPart') @:overload public static function _getLocalPart(qname : String) : String;
	
	/**
	* Returns the local name of the given node.
	*
	* @param qname Input name
	*
	* @return Prefix of name or empty string if none there
	*/
	@:overload public static function getPrefixPart(qname : String) : String;
	
	
}
