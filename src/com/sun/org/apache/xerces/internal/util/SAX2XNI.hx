package com.sun.org.apache.xerces.internal.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* The Apache Software License, Version 1.1
*
*
* Copyright (c) 2000-2002 The Apache Software Foundation.  All rights
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
* originally based on software copyright (c) 1999, International
* Business Machines, Inc., http://www.apache.org.  For more
* information on the Apache Software Foundation, please see
* <http://www.apache.org/>.
*/
extern class SAX2XNI implements org.xml.sax.ContentHandler implements com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource
{
	/**
	* Receves SAX {@link ContentHandler} events
	* and produces the equivalent {@link XMLDocumentHandler} events.
	*
	* @author
	*     Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
	*/
	@:overload @:public public function new(core : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler) : Void;
	
	@:overload @:public public function setDocumentHandler(handler : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler) : Void;
	
	@:overload @:public public function getDocumentHandler() : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
	
	@:overload @:public public function startDocument() : Void;
	
	@:overload @:public public function endDocument() : Void;
	
	@:overload @:public public function startElement(uri : String, local : String, qname : String, att : org.xml.sax.Attributes) : Void;
	
	@:overload @:public public function endElement(uri : String, local : String, qname : String) : Void;
	
	@:overload @:public public function characters(buf : java.NativeArray<java.StdTypes.Char16>, offset : Int, len : Int) : Void;
	
	@:overload @:public public function ignorableWhitespace(buf : java.NativeArray<java.StdTypes.Char16>, offset : Int, len : Int) : Void;
	
	@:overload @:public public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	@:overload @:public public function endPrefixMapping(prefix : String) : Void;
	
	@:overload @:public public function processingInstruction(target : String, data : String) : Void;
	
	@:overload @:public public function skippedEntity(name : String) : Void;
	
	@:overload @:public public function setDocumentLocator(_loc : org.xml.sax.Locator) : Void;
	
	
}
