package com.sun.xml.internal.messaging.saaj.soap.name;
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
extern class NameImpl implements javax.xml.soap.Name
{
	public static var XML_NAMESPACE_PREFIX(default, null) : String;
	
	public static var XML_SCHEMA_NAMESPACE_PREFIX(default, null) : String;
	
	public static var SOAP_ENVELOPE_PREFIX(default, null) : String;
	
	public static var XML_NAMESPACE(default, null) : String;
	
	public static var SOAP11_NAMESPACE(default, null) : String;
	
	public static var SOAP12_NAMESPACE(default, null) : String;
	
	public static var XML_SCHEMA_NAMESPACE(default, null) : String;
	
	private var uri : String;
	
	private var localName : String;
	
	private var prefix : String;
	
	private static var log(default, null) : java.util.logging.Logger;
	
	/**
	* XML Information Set REC
	* all namespace attributes (including those named xmlns,
	* whose [prefix] property has no value) have a namespace URI of http://www.w3.org/2000/xmlns/
	*/
	public static var XMLNS_URI(default, null) : String;
	
	@:overload private function new(name : String) : Void;
	
	@:overload private function new(name : String, prefix : String, uri : String) : Void;
	
	@:overload public static function convertToName(qname : javax.xml.namespace.QName) : javax.xml.soap.Name;
	
	@:overload public static function convertToQName(name : javax.xml.soap.Name) : javax.xml.namespace.QName;
	
	@:overload public static function createFromUnqualifiedName(name : String) : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	@:overload public static function createFromTagName(tagName : String) : javax.xml.soap.Name;
	
	@:overload public static function createFromQualifiedName(qualifiedName : String, uri : String) : javax.xml.soap.Name;
	
	@:overload private static function createFromTagAndUri(tagName : String, uri : String) : javax.xml.soap.Name;
	
	@:overload private static function getPrefixSeparatorIndex(qualifiedName : String) : Int;
	
	@:overload public static function getPrefixFromQualifiedName(qualifiedName : String) : String;
	
	@:overload public static function getLocalNameFromQualifiedName(qualifiedName : String) : String;
	
	@:overload public static function getPrefixFromTagName(tagName : String) : String;
	
	@:overload public static function getLocalNameFromTagName(tagName : String) : String;
	
	@:overload public static function isQualified(tagName : String) : Bool;
	
	@:overload public static function create(name : String, prefix : String, uri : String) : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	@:overload public static function createQName(prefix : String, localName : String) : String;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Get the local name part of this XML Name.
	*
	* @return a string for the local name.
	*/
	@:overload public function getLocalName() : String;
	
	/**
	* Returns the prefix associated with the namespace of the name.
	*
	* @return the prefix as a string.
	*/
	@:overload public function getPrefix() : String;
	
	/**
	* Returns the URI associated of the namespace.
	*
	* @return the uri as a string.
	*/
	@:overload public function getURI() : String;
	
	/**
	* Returns a String version of the name suitable for use in an XML document.
	*/
	@:overload public function getQualifiedName() : String;
	
	/**
	* Create a name object for a SOAP1.1 Envelope.
	*/
	@:overload public static function createEnvelope1_1Name(prefix : String) : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	/**
	* Create a name object for a SOAP1.2 Envelope.
	*/
	@:overload public static function createEnvelope1_2Name(prefix : String) : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	/**
	* Create a name object for a SOAP1.1 Header.
	*/
	@:overload public static function createHeader1_1Name(prefix : String) : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	/**
	* Create a name object for a SOAP1.2 Header.
	*/
	@:overload public static function createHeader1_2Name(prefix : String) : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	/**
	* Create a name object for a SOAP1.1 Body.
	*/
	@:overload public static function createBody1_1Name(prefix : String) : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	/**
	* Create a name object for a SOAP1.2 Body.
	*/
	@:overload public static function createBody1_2Name(prefix : String) : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	/**
	* Create a name object for a SOAP1.1 Fault.
	*/
	@:overload public static function createFault1_1Name(prefix : String) : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	/**
	* Create a name object for a SOAP1.2 NotUnderstood element.
	*/
	@:overload public static function createNotUnderstood1_2Name(prefix : String) : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	/**
	* Create a name object for a SOAP1.2 Upgrade element.
	*/
	@:overload public static function createUpgrade1_2Name(prefix : String) : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	/**
	* Create a name object for a SOAP1.2 SupportedEnvelope Upgrade element.
	*/
	@:overload public static function createSupportedEnvelope1_2Name(prefix : String) : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	/**
	* Create a name object for a SOAP1.2
	* Fault, Reason or Detail.
	*
	* @param localName Local Name of element
	*/
	@:overload public static function createFault1_2Name(localName : String, prefix : String) : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	/**
	* Create a name object for a SOAP1.2 Fault/Code or Subcode.
	*
	* @param localName Either "Code" or "Subcode"
	*/
	@:overload public static function createCodeSubcode1_2Name(prefix : String, localName : String) : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	/**
	* Create a name object for a SOAP1.1 Fault Detail.
	*/
	@:overload public static function createDetail1_1Name() : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	@:overload public static function createDetail1_1Name(prefix : String) : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	@:overload public static function createFaultElement1_1Name(localName : String) : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	@:overload public static function createFaultElement1_1Name(localName : String, prefix : String) : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	@:overload public static function createSOAP11Name(string : String) : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	@:overload public static function createSOAP12Name(string : String) : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	@:overload public static function createSOAP12Name(localName : String, prefix : String) : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	@:overload public static function createXmlName(localName : String) : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	@:overload public static function copyElementName(element : org.w3c.dom.Element) : javax.xml.soap.Name;
	
	
}
@:native('com$sun$xml$internal$messaging$saaj$soap$name$NameImpl$SOAP1_1Name') @:internal extern class NameImpl_SOAP1_1Name extends com.sun.xml.internal.messaging.saaj.soap.name.NameImpl
{
	
}
@:native('com$sun$xml$internal$messaging$saaj$soap$name$NameImpl$Envelope1_1Name') @:internal extern class NameImpl_Envelope1_1Name extends com.sun.xml.internal.messaging.saaj.soap.name.NameImpl.NameImpl_SOAP1_1Name
{
	
}
@:native('com$sun$xml$internal$messaging$saaj$soap$name$NameImpl$Header1_1Name') @:internal extern class NameImpl_Header1_1Name extends com.sun.xml.internal.messaging.saaj.soap.name.NameImpl.NameImpl_SOAP1_1Name
{
	
}
@:native('com$sun$xml$internal$messaging$saaj$soap$name$NameImpl$Body1_1Name') @:internal extern class NameImpl_Body1_1Name extends com.sun.xml.internal.messaging.saaj.soap.name.NameImpl.NameImpl_SOAP1_1Name
{
	
}
@:native('com$sun$xml$internal$messaging$saaj$soap$name$NameImpl$Fault1_1Name') @:internal extern class NameImpl_Fault1_1Name extends com.sun.xml.internal.messaging.saaj.soap.name.NameImpl
{
	
}
@:native('com$sun$xml$internal$messaging$saaj$soap$name$NameImpl$Detail1_1Name') @:internal extern class NameImpl_Detail1_1Name extends com.sun.xml.internal.messaging.saaj.soap.name.NameImpl
{
	
}
@:native('com$sun$xml$internal$messaging$saaj$soap$name$NameImpl$FaultElement1_1Name') @:internal extern class NameImpl_FaultElement1_1Name extends com.sun.xml.internal.messaging.saaj.soap.name.NameImpl
{
	
}
@:native('com$sun$xml$internal$messaging$saaj$soap$name$NameImpl$SOAP1_2Name') @:internal extern class NameImpl_SOAP1_2Name extends com.sun.xml.internal.messaging.saaj.soap.name.NameImpl
{
	
}
@:native('com$sun$xml$internal$messaging$saaj$soap$name$NameImpl$Envelope1_2Name') @:internal extern class NameImpl_Envelope1_2Name extends com.sun.xml.internal.messaging.saaj.soap.name.NameImpl.NameImpl_SOAP1_2Name
{
	
}
@:native('com$sun$xml$internal$messaging$saaj$soap$name$NameImpl$Header1_2Name') @:internal extern class NameImpl_Header1_2Name extends com.sun.xml.internal.messaging.saaj.soap.name.NameImpl.NameImpl_SOAP1_2Name
{
	
}
@:native('com$sun$xml$internal$messaging$saaj$soap$name$NameImpl$Body1_2Name') @:internal extern class NameImpl_Body1_2Name extends com.sun.xml.internal.messaging.saaj.soap.name.NameImpl.NameImpl_SOAP1_2Name
{
	
}
@:native('com$sun$xml$internal$messaging$saaj$soap$name$NameImpl$Fault1_2Name') @:internal extern class NameImpl_Fault1_2Name extends com.sun.xml.internal.messaging.saaj.soap.name.NameImpl
{
	
}
@:native('com$sun$xml$internal$messaging$saaj$soap$name$NameImpl$NotUnderstood1_2Name') @:internal extern class NameImpl_NotUnderstood1_2Name extends com.sun.xml.internal.messaging.saaj.soap.name.NameImpl
{
	
}
@:native('com$sun$xml$internal$messaging$saaj$soap$name$NameImpl$Upgrade1_2Name') @:internal extern class NameImpl_Upgrade1_2Name extends com.sun.xml.internal.messaging.saaj.soap.name.NameImpl
{
	
}
@:native('com$sun$xml$internal$messaging$saaj$soap$name$NameImpl$SupportedEnvelope1_2Name') @:internal extern class NameImpl_SupportedEnvelope1_2Name extends com.sun.xml.internal.messaging.saaj.soap.name.NameImpl
{
	
}
@:native('com$sun$xml$internal$messaging$saaj$soap$name$NameImpl$CodeSubcode1_2Name') @:internal extern class NameImpl_CodeSubcode1_2Name extends com.sun.xml.internal.messaging.saaj.soap.name.NameImpl.NameImpl_SOAP1_2Name
{
	
}
