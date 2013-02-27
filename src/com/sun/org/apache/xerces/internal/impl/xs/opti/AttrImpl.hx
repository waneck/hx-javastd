package com.sun.org.apache.xerces.internal.impl.xs.opti;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* The Apache Software License, Version 1.1
*
*
* Copyright (c) 2001, 2002 The Apache Software Foundation.  All rights
* reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions
* are met:
*
* 1. Redistributions of source code must retain the above copyright
*    notice, this list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright
*    notice, this list of conditions and the following disclaimer in
*    the documentation and/or other materials provided with the
*    distribution.
*
* 3. The end-user documentation included with the redistribution,
*    if any, must include the following acknowledgment:
*       "This product includes software developed by the
*        Apache Software Foundation (http://www.apache.org/)."
*    Alternately, this acknowledgment may appear in the software itself,
*    if and wherever such third-party acknowledgments normally appear.
*
* 4. The names "Xerces" and "Apache Software Foundation" must
*    not be used to endorse or promote products derived from this
*    software without prior written permission. For written
*    permission, please contact apache@apache.org.
*
* 5. Products derived from this software may not be called "Apache",
*    nor may "Apache" appear in their name, without prior written
*    permission of the Apache Software Foundation.
*
* THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESSED OR IMPLIED
* WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
* OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED.  IN NO EVENT SHALL THE APACHE SOFTWARE FOUNDATION OR
* ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
* SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
* LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
* USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
* ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
* OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
* SUCH DAMAGE.
* ====================================================================
*
* This software consists of voluntary contributions made by many
* individuals on behalf of the Apache Software Foundation and was
* originally based on software copyright (c) 2001, International
* Business Machines, Inc., http://www.apache.org.  For more
* information on the Apache Software Foundation, please see
* <http://www.apache.org/>.
*/
extern class AttrImpl extends com.sun.org.apache.xerces.internal.impl.xs.opti.NodeImpl implements org.w3c.dom.Attr
{
	/** Default Constructor */
	@:overload public function new() : Void;
	
	/**
	* Constructs an attribute.
	*
	* @param element Element which owns this attribute
	* @param prefix The QName prefix.
	* @param localpart The QName localpart.
	* @param rawname The QName rawname.
	* @param uri The uri binding for the associated prefix.
	* @param value The value of the attribute.
	*/
	@:overload public function new(element : org.w3c.dom.Element, prefix : String, localpart : String, rawname : String, uri : String, value : String) : Void;
	
	@:overload public function getName() : String;
	
	@:overload public function getSpecified() : Bool;
	
	@:overload public function getValue() : String;
	
	@:overload override public function getNodeValue() : String;
	
	@:overload public function getOwnerElement() : org.w3c.dom.Element;
	
	@:overload override public function getOwnerDocument() : org.w3c.dom.Document;
	
	@:overload public function setValue(value : String) : Void;
	
	/**
	* @since DOM Level 3
	*/
	@:overload public function isId() : Bool;
	
	/**
	* Method getSchemaTypeInfo.
	* @return TypeInfo
	*/
	@:overload public function getSchemaTypeInfo() : org.w3c.dom.TypeInfo;
	
	/** NON-DOM method for debugging convenience */
	@:overload public function toString() : String;
	
	
}
