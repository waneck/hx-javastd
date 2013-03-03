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
extern class XML11DTDScannerImpl extends com.sun.org.apache.xerces.internal.impl.XMLDTDScannerImpl
{
	/** Default constructor. */
	@:overload @:public public function new() : Void;
	
	/** Constructor for he use of non-XMLComponentManagers. */
	@:overload @:public public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, errorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter, entityManager : com.sun.org.apache.xerces.internal.impl.XMLEntityManager) : Void;
	
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
	@:overload @:protected override private function scanPubidLiteral(literal : com.sun.org.apache.xerces.internal.xni.XMLString) : Bool;
	
	/**
	* Normalize whitespace in an XMLString converting all whitespace
	* characters to space characters.
	*/
	@:overload @:protected override private function normalizeWhitespace(value : com.sun.org.apache.xerces.internal.xni.XMLString) : Void;
	
	/**
	* Normalize whitespace in an XMLString converting all whitespace
	* characters to space characters.
	*/
	@:overload @:protected private function normalizeWhitespace(value : com.sun.org.apache.xerces.internal.xni.XMLString, fromIndex : Int) : Void;
	
	/**
	* Checks whether this string would be unchanged by normalization.
	*
	* @return -1 if the value would be unchanged by normalization,
	* otherwise the index of the first whitespace character which
	* would be transformed.
	*/
	@:overload @:protected private function isUnchangedByNormalization(value : com.sun.org.apache.xerces.internal.xni.XMLString) : Int;
	
	@:overload @:protected override private function isInvalid(value : Int) : Bool;
	
	@:overload @:protected override private function isInvalidLiteral(value : Int) : Bool;
	
	@:overload @:protected override private function isValidNameChar(value : Int) : Bool;
	
	@:overload @:protected override private function isValidNameStartChar(value : Int) : Bool;
	
	@:overload @:protected override private function isValidNCName(value : Int) : Bool;
	
	@:overload @:protected private function isValidNameStartHighSurrogate(value : Int) : Bool;
	
	@:overload @:protected override private function versionSupported(version : String) : Bool;
	
	@:overload @:protected private function getVersionNotSupportedKey() : String;
	
	
}
