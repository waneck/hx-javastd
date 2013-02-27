package com.sun.org.apache.xerces.internal.impl;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
*/
/*
* Copyright 2005 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class XMLNSDocumentScannerImpl extends com.sun.org.apache.xerces.internal.impl.XMLDocumentScannerImpl
{
	/**
	* If is true, the dtd validator is no longer in the pipeline
	* and the scanner should bind namespaces
	*/
	private var fBindNamespaces : Bool;
	
	/** If validating parser, make sure we report an error in the
	*   scanner if DTD grammar is missing.*/
	private var fPerformValidation : Bool;
	
	/** Default value of this feature is false, when in Stax mode this should be true */
	private var fNotAddNSDeclAsAttribute : Bool;
	
	/** Resets the fields of this scanner.
	*/
	@:overload override public function reset(propertyManager : com.sun.org.apache.xerces.internal.impl.PropertyManager) : Void;
	
	@:overload override public function reset(componentManager : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
	/** return the next state on the input
	*
	* @return int
	*/
	@:overload override public function next() : Int;
	
	/**
	* The scanner is responsible for removing DTD validator
	* from the pipeline if it is not needed.
	*
	* @param previous The filter component before DTDValidator
	* @param dtdValidator
	*                 The DTDValidator
	* @param next     The documentHandler after the DTDValidator
	*/
	@:overload public function setDTDValidator(dtd : com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDValidatorFilter) : Void;
	
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
	@:overload override private function scanStartElement() : Bool;
	
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
	@:overload private function scanAttribute(attributes : com.sun.org.apache.xerces.internal.util.XMLAttributesImpl) : Void;
	
	/** Creates a content driver. */
	@:overload override private function createContentDriver() : Driver;
	
	
}
/**
* Driver to handle content scanning.
*/
@:native('com$sun$org$apache$xerces$internal$impl$XMLNSDocumentScannerImpl$NSContentDriver') extern class XMLNSDocumentScannerImpl_NSContentDriver extends ContentDriver
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
	*          driver. A return value of false indicates that
	*          the content driver should continue as normal.
	*/
	@:overload private function scanRootElementHook() : Bool;
	
	
}
