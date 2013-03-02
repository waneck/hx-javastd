package com.sun.org.apache.xerces.internal.impl;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* The Apache Software License, Version 1.1
*
*
* Copyright (c) 1999-2004 The Apache Software Foundation.
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
* originally based on software copyright (c) 1999, International
* Business Machines, Inc., http://www.apache.org.  For more
* information on the Apache Software Foundation, please see
* <http://www.apache.org/>.
*/
extern class XML11DocumentScannerImpl extends com.sun.org.apache.xerces.internal.impl.XMLDocumentScannerImpl
{
	/** Default constructor. */
	@:overload public function new() : Void;
	
	/**
	* Scans element content.
	*
	* @return Returns the next character on the stream.
	*/
	@:overload private function scanContent(content : com.sun.org.apache.xerces.internal.util.XMLStringBuffer) : Int;
	
	/**
	* Scans an attribute value and normalizes whitespace converting all
	* whitespace characters to space characters.
	*
	* [10] AttValue ::= '"' ([^<&"] | Reference)* '"' | "'" ([^<&'] | Reference)* "'"
	*
	* @param value The XMLString to fill in with the value.
	* @param nonNormalizedValue The XMLString to fill in with the
	*                           non-normalized value.
	* @param atName The name of the attribute being parsed (for error msgs).
	* @param checkEntities true if undeclared entities should be reported as VC violation,
	*                      false if undeclared entities should be reported as WFC violation.
	* @param eleName The name of element to which this attribute belongs.
	*
	* @return true if the non-normalized and normalized value are the same
	*
	* <strong>Note:</strong> This method uses fStringBuffer2, anything in it
	* at the time of calling is lost.
	**/
	@:overload private function scanAttributeValue(value : com.sun.org.apache.xerces.internal.xni.XMLString, nonNormalizedValue : com.sun.org.apache.xerces.internal.xni.XMLString, atName : String, checkEntities : Bool, eleName : String) : Bool;
	
	/**
	* Scans public ID literal.
	*
	* [12] PubidLiteral ::= '"' PubidChar* '"' | "'" (PubidChar - "'")* "'"
	* [13] PubidChar::= #x20 | #xD | #xA | [a-zA-Z0-9] | [-'()+,./:=?;!*#@$_%]
	*
	* The returned string is normalized according to the following rule,
	* from http://www.w3.org/TR/REC-xml#dt-pubid:
	*
	* Before a match is attempted, all strings of white space in the public
	* identifier must be normalized to single space characters (#x20), and
	* leading and trailing white space must be removed.
	*
	* @param literal The string to fill in with the public ID literal.
	* @return True on success.
	*
	* <strong>Note:</strong> This method uses fStringBuffer, anything in it at
	* the time of calling is lost.
	*/
	@:overload override private function scanPubidLiteral(literal : com.sun.org.apache.xerces.internal.xni.XMLString) : Bool;
	
	/**
	* Normalize whitespace in an XMLString converting all whitespace
	* characters to space characters.
	*/
	@:overload override private function normalizeWhitespace(value : com.sun.org.apache.xerces.internal.xni.XMLString) : Void;
	
	/**
	* Normalize whitespace in an XMLString converting all whitespace
	* characters to space characters.
	*/
	@:overload private function normalizeWhitespace(value : com.sun.org.apache.xerces.internal.xni.XMLString, fromIndex : Int) : Void;
	
	/**
	* Checks whether this string would be unchanged by normalization.
	*
	* @return -1 if the value would be unchanged by normalization,
	* otherwise the index of the first whitespace character which
	* would be transformed.
	*/
	@:overload private function isUnchangedByNormalization(value : com.sun.org.apache.xerces.internal.xni.XMLString) : Int;
	
	@:overload override private function isInvalid(value : Int) : Bool;
	
	@:overload override private function isInvalidLiteral(value : Int) : Bool;
	
	@:overload override private function isValidNameChar(value : Int) : Bool;
	
	@:overload override private function isValidNameStartChar(value : Int) : Bool;
	
	@:overload override private function isValidNCName(value : Int) : Bool;
	
	@:overload private function isValidNameStartHighSurrogate(value : Int) : Bool;
	
	@:overload override private function versionSupported(version : String) : Bool;
	
	@:overload private function getVersionNotSupportedKey() : String;
	
	
}
