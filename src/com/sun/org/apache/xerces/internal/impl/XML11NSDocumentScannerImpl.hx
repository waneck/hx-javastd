package com.sun.org.apache.xerces.internal.impl;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* The Apache Software License, Version 1.1
*
*
* Copyright (c) 1999-2003 The Apache Software Foundation.
* All rights reserved.
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
* originally based on software copyright (c) 2002, International
* Business Machines, Inc., http://www.apache.org.  For more
* information on the Apache Software Foundation, please see
* <http://www.apache.org/>.
*/
extern class XML11NSDocumentScannerImpl extends com.sun.org.apache.xerces.internal.impl.XML11DocumentScannerImpl
{
	/**
	* If is true, the dtd validator is no longer in the pipeline
	* and the scanner should bind namespaces
	*/
	@:protected private var fBindNamespaces : Bool;
	
	/**
	* If validating parser, make sure we report an error in the
	*  scanner if DTD grammar is missing.
	*/
	@:protected private var fPerformValidation : Bool;
	
	/**
	* The scanner is responsible for removing DTD validator
	* from the pipeline if it is not needed.
	*
	* @param validator the DTD validator from the pipeline
	*/
	@:overload @:public public function setDTDValidator(validator : com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDValidatorFilter) : Void;
	
	/**
	* Scans a start element. This method will handle the binding of
	* namespace information and notifying the handler of the start
	* of the element.
	* <p>
	* <pre>
	* [44] EmptyElemTag ::= '&lt;' Name (S Attribute)* S? '/>'
	* [40] STag ::= '&lt;' Name (S Attribute)* S? '>'
	* </pre>
	* <p>
	* <strong>Note:</strong> This method assumes that the leading
	* '&lt;' character has been consumed.
	* <p>
	* <strong>Note:</strong> This method uses the fElementQName and
	* fAttributes variables. The contents of these variables will be
	* destroyed. The caller should copy important information out of
	* these variables before calling this method.
	*
	* @return True if element is empty. (i.e. It matches
	*          production [44].
	*/
	@:overload @:protected override private function scanStartElement() : Bool;
	
	/**
	* Scans the name of an element in a start or empty tag.
	*
	* @see #scanStartElement()
	*/
	@:overload @:protected private function scanStartElementName() : Void;
	
	/**
	* Scans the remainder of a start or empty tag after the element name.
	*
	* @see #scanStartElement
	* @return True if element is empty.
	*/
	@:overload @:protected private function scanStartElementAfterName() : Bool;
	
	/**
	* Scans an attribute.
	* <p>
	* <pre>
	* [41] Attribute ::= Name Eq AttValue
	* </pre>
	* <p>
	* <strong>Note:</strong> This method assumes that the next
	* character on the stream is the first character of the attribute
	* name.
	* <p>
	* <strong>Note:</strong> This method uses the fAttributeQName and
	* fQName variables. The contents of these variables will be
	* destroyed.
	*
	* @param attributes The attributes list for the scanned attribute.
	*/
	@:overload @:protected private function scanAttribute(attributes : com.sun.org.apache.xerces.internal.util.XMLAttributesImpl) : Void;
	
	/**
	* Scans an end element.
	* <p>
	* <pre>
	* [42] ETag ::= '&lt;/' Name S? '>'
	* </pre>
	* <p>
	* <strong>Note:</strong> This method uses the fElementQName variable.
	* The contents of this variable will be destroyed. The caller should
	* copy the needed information out of this variable before calling
	* this method.
	*
	* @return The element depth.
	*/
	@:overload @:protected override private function scanEndElement() : Int;
	
	@:overload @:public override public function reset(componentManager : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
	/** Creates a content Driver. */
	@:overload @:protected override private function createContentDriver() : com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.XMLDocumentFragmentScannerImpl_Driver;
	
	/** return the next state on the input
	*
	* @return int
	*/
	@:overload @:public override public function next() : Int;
	
	
}
/**
* Driver to handle content scanning.
*/
@:native('com$sun$org$apache$xerces$internal$impl$XML11NSDocumentScannerImpl$NS11ContentDriver') extern class XML11NSDocumentScannerImpl_NS11ContentDriver extends com.sun.org.apache.xerces.internal.impl.XMLDocumentScannerImpl.XMLDocumentScannerImpl_ContentDriver
{
	/**
	* Scan for root element hook. This method is a hook for
	* subclasses to add code that handles scanning for the root
	* element. This method will also attempt to remove DTD validator
	* from the pipeline, if there is no DTD grammar. If DTD validator
	* is no longer in the pipeline bind namespaces in the scanner.
	*
	*
	* @return True if the caller should stop and return true which
	*          allows the scanner to switch to a new scanning
	*          Driver. A return value of false indicates that
	*          the content Driver should continue as normal.
	*/
	@:overload @:protected override private function scanRootElementHook() : Bool;
	
	
}
