package com.sun.xml.internal.dtdparser;
/*
* Copyright (c) 1998, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class InputEntity
{
	@:overload public static function getInputEntity(h : com.sun.xml.internal.dtdparser.DTDEventListener, l : java.util.Locale) : com.sun.xml.internal.dtdparser.InputEntity;
	
	@:overload public function isInternal() : Bool;
	
	@:overload public function isDocument() : Bool;
	
	@:overload public function isParameterEntity() : Bool;
	
	@:overload public function getName() : String;
	
	@:overload public function init(_in : org.xml.sax.InputSource, name : String, stack : com.sun.xml.internal.dtdparser.InputEntity, isPE : Bool) : Void;
	
	@:overload public function init(b : java.NativeArray<java.StdTypes.Char16>, name : String, stack : com.sun.xml.internal.dtdparser.InputEntity, isPE : Bool) : Void;
	
	@:overload public function pop() : com.sun.xml.internal.dtdparser.InputEntity;
	
	/**
	* returns true iff there's no more data to consume ...
	*/
	@:overload public function isEOF() : Bool;
	
	/**
	* Returns the name of the encoding in use, else null; the name
	* returned is in as standard a form as we can get.
	*/
	@:overload public function getEncoding() : String;
	
	/**
	* returns the next name char, or NUL ... faster than getc(),
	* and the common "name or nmtoken must be next" case won't
	* need ungetc().
	*/
	@:overload public function getNameChar() : java.StdTypes.Char16;
	
	/**
	* gets the next Java character -- might be part of an XML
	* text character represented by a surrogate pair, or be
	* the end of the entity.
	*/
	@:overload public function getc() : java.StdTypes.Char16;
	
	/**
	* lookahead one character
	*/
	@:overload public function peekc(c : java.StdTypes.Char16) : Bool;
	
	/**
	* two character pushback is guaranteed
	*/
	@:overload public function ungetc() : Void;
	
	/**
	* optional grammatical whitespace (discarded)
	*/
	@:overload public function maybeWhitespace() : Bool;
	
	/**
	* normal content; whitespace in markup may be handled
	* specially if the parser uses the content model.
	* <p/>
	* <P> content terminates with markup delimiter characters,
	* namely ampersand (&amp;amp;) and left angle bracket (&amp;lt;).
	* <p/>
	* <P> the document handler's characters() method is called
	* on all the content found
	*/
	@:overload public function parsedContent(docHandler : com.sun.xml.internal.dtdparser.DTDEventListener) : Bool;
	
	/**
	* CDATA -- character data, terminated by "]]>" and optionally
	* including unescaped markup delimiters (ampersand and left angle
	* bracket).  This should otherwise be exactly like character data,
	* modulo differences in error report details.
	* <p/>
	* <P> The document handler's characters() or ignorableWhitespace()
	* methods are invoked on all the character data found
	*
	* @param docHandler               gets callbacks for character data
	* @param ignorableWhitespace      if true, whitespace characters will
	*                                 be reported using docHandler.ignorableWhitespace(); implicitly,
	*                                 non-whitespace characters will cause validation errors
	* @param whitespaceInvalidMessage if true, ignorable whitespace
	*                                 causes a validity error report as well as a callback
	*/
	@:overload public function unparsedContent(docHandler : com.sun.xml.internal.dtdparser.DTDEventListener, ignorableWhitespace : Bool, whitespaceInvalidMessage : String) : Bool;
	
	/**
	* whitespace in markup (flagged to app, discardable)
	* <p/>
	* <P> the document handler's ignorableWhitespace() method
	* is called on all the whitespace found
	*/
	@:overload public function ignorableWhitespace(handler : com.sun.xml.internal.dtdparser.DTDEventListener) : Bool;
	
	/**
	* returns false iff 'next' string isn't as provided,
	* else skips that text and returns true.
	* <p/>
	* <P> NOTE:  two alternative string representations are
	* both passed in, since one is faster.
	*/
	@:overload public function peek(next : String, chars : java.NativeArray<java.StdTypes.Char16>) : Bool;
	
	@:overload public function startRemembering() : Void;
	
	@:overload public function rememberText() : String;
	
	/**
	* Returns the public ID of this input source, if known
	*/
	@:overload public function getPublicId() : String;
	
	/**
	* Returns the system ID of this input source, if known
	*/
	@:overload public function getSystemId() : String;
	
	/**
	* Returns the current line number in this input source
	*/
	@:overload public function getLineNumber() : Int;
	
	/**
	* returns -1; maintaining column numbers hurts performance
	*/
	@:overload public function getColumnNumber() : Int;
	
	@:overload public function close() : Void;
	
	
}
