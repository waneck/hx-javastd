package javax.xml.soap;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
* <code>SOAPElementFactory</code> is a factory for XML fragments that
* will eventually end up in the SOAP part. These fragments
* can be inserted as children of the <code>SOAPHeader</code> or
* <code>SOAPBody</code> or <code>SOAPEnvelope</code>.
*
* <p>Elements created using this factory do not have the properties
* of an element that lives inside a SOAP header document. These
* elements are copied into the XML document tree when they are
* inserted.
* @deprecated - Use <code>javax.xml.soap.SOAPFactory</code> for creating SOAPElements.
* @see javax.xml.soap.SOAPFactory
*/
extern class SOAPElementFactory
{
	/**
	* Create a <code>SOAPElement</code> object initialized with the
	* given <code>Name</code> object.
	*
	* @param name a <code>Name</code> object with the XML name for
	*             the new element
	*
	* @return the new <code>SOAPElement</code> object that was
	*         created
	*
	* @exception SOAPException if there is an error in creating the
	*            <code>SOAPElement</code> object
	*
	* @deprecated Use
	* javax.xml.soap.SOAPFactory.createElement(javax.xml.soap.Name)
	* instead
	*
	* @see javax.xml.soap.SOAPFactory#createElement(javax.xml.soap.Name)
	* @see javax.xml.soap.SOAPFactory#createElement(javax.xml.namespace.QName)
	*/
	@:overload @:public public function create(name : javax.xml.soap.Name) : javax.xml.soap.SOAPElement;
	
	/**
	* Create a <code>SOAPElement</code> object initialized with the
	* given local name.
	*
	* @param localName a <code>String</code> giving the local name for
	*             the new element
	*
	* @return the new <code>SOAPElement</code> object that was
	*         created
	*
	* @exception SOAPException if there is an error in creating the
	*            <code>SOAPElement</code> object
	*
	* @deprecated Use
	* javax.xml.soap.SOAPFactory.createElement(String localName) instead
	*
	* @see javax.xml.soap.SOAPFactory#createElement(java.lang.String)
	*/
	@:overload @:public public function create(localName : String) : javax.xml.soap.SOAPElement;
	
	/**
	* Create a new <code>SOAPElement</code> object with the given
	* local name, prefix and uri.
	*
	* @param localName a <code>String</code> giving the local name
	*                  for the new element
	* @param prefix the prefix for this <code>SOAPElement</code>
	* @param uri a <code>String</code> giving the URI of the
	*            namespace to which the new element belongs
	*
	* @exception SOAPException if there is an error in creating the
	*            <code>SOAPElement</code> object
	*
	* @deprecated Use
	* javax.xml.soap.SOAPFactory.createElement(String localName,
	*                      String prefix,
	*                      String uri)
	* instead
	*
	* @see javax.xml.soap.SOAPFactory#createElement(java.lang.String, java.lang.String, java.lang.String)
	*/
	@:overload @:public public function create(localName : String, prefix : String, uri : String) : javax.xml.soap.SOAPElement;
	
	/**
	* Creates a new instance of <code>SOAPElementFactory</code>.
	*
	* @return a new instance of a <code>SOAPElementFactory</code>
	*
	* @exception SOAPException if there was an error creating the
	*            default <code>SOAPElementFactory</code>
	*/
	@:overload @:public @:static public static function newInstance() : javax.xml.soap.SOAPElementFactory;
	
	
}
