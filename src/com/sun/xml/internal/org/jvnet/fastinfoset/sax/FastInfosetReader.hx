package com.sun.xml.internal.org.jvnet.fastinfoset.sax;
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
*
* THIS FILE WAS MODIFIED BY SUN MICROSYSTEMS, INC.
*/
extern interface FastInfosetReader extends org.xml.sax.XMLReader extends com.sun.xml.internal.org.jvnet.fastinfoset.FastInfosetParser
{
	/**
	* Parse a fast infoset document from an InputStream.
	*
	* <p>The application can use this method to instruct the Fast Infoset
	* reader to begin parsing a fast infoset document from a byte stream.</p>
	*
	* <p>Applications may not invoke this method while a parse is in progress
	* (they should create a new XMLReader instead for each nested XML document).
	* Once a parse is complete, an application may reuse the same
	* FastInfosetReader object, possibly with a different byte stream.</p>
	*
	* <p>During the parse, the FastInfosetReader will provide information about
	* the fast infoset document through the registered event handlers.<p>
	*
	* <p> This method is synchronous: it will not return until parsing has ended.
	* If a client application wants to terminate parsing early, it should throw
	* an exception.<p>
	*
	* @param s The byte stream to parse from.
	*/
	@:overload @:public public function parse(s : java.io.InputStream) : Void;
	
	/**
	* Allow an application to register a lexical handler.
	*
	* <p>Applications may register a new or different handler in the
	* middle of a parse, and the SAX parser must begin using the new
	* handler immediately.</p>
	*
	* @param handler The lexical handler.
	* @see #getLexicalHandler
	*/
	@:overload @:public public function setLexicalHandler(handler : org.xml.sax.ext.LexicalHandler) : Void;
	
	/**
	* Return the current lexical handler.
	*
	* @return The current lexical handler, or null if none
	*         has been registered.
	* @see #setLexicalHandler
	*/
	@:overload @:public public function getLexicalHandler() : org.xml.sax.ext.LexicalHandler;
	
	/**
	* Allow an application to register a DTD declaration handler.
	*
	* <p>Applications may register a new or different handler in the
	* middle of a parse, and the SAX parser must begin using the new
	* handler immediately.</p>
	*
	* @param handler The DTD declaration handler.
	* @see #getLexicalHandler
	*/
	@:overload @:public public function setDeclHandler(handler : org.xml.sax.ext.DeclHandler) : Void;
	
	/**
	* Return the current DTD declaration handler.
	*
	* @return The current DTD declaration handler, or null if none
	*         has been registered.
	* @see #setLexicalHandler
	*/
	@:overload @:public public function getDeclHandler() : org.xml.sax.ext.DeclHandler;
	
	/**
	* Allow an application to register an encoding algorithm handler.
	*
	* <p>Applications may register a new or different handler in the
	* middle of a parse, and the SAX parser must begin using the new
	* handler immediately.</p>
	*
	* @param handler The encoding algorithm handler.
	* @see #getEncodingAlgorithmContentHandler
	*/
	@:overload @:public public function setEncodingAlgorithmContentHandler(handler : com.sun.xml.internal.org.jvnet.fastinfoset.sax.EncodingAlgorithmContentHandler) : Void;
	
	/**
	* Return the current encoding algorithm handler.
	*
	* @return The current encoding algorithm handler, or null if none
	*         has been registered.
	* @see #setEncodingAlgorithmContentHandler
	*/
	@:overload @:public public function getEncodingAlgorithmContentHandler() : com.sun.xml.internal.org.jvnet.fastinfoset.sax.EncodingAlgorithmContentHandler;
	
	/**
	* Allow an application to register a primitive type handler.
	*
	* <p>Applications may register a new or different handler in the
	* middle of a parse, and the SAX parser must begin using the new
	* handler immediately.</p>
	*
	* @param handler The primitive type handler.
	* @see #getPrimitiveTypeContentHandler
	*/
	@:overload @:public public function setPrimitiveTypeContentHandler(handler : com.sun.xml.internal.org.jvnet.fastinfoset.sax.PrimitiveTypeContentHandler) : Void;
	
	/**
	* Return the current primitive type handler.
	*
	* @return The current primitive type handler, or null if none
	*         has been registered.
	* @see #setPrimitiveTypeContentHandler
	*/
	@:overload @:public public function getPrimitiveTypeContentHandler() : com.sun.xml.internal.org.jvnet.fastinfoset.sax.PrimitiveTypeContentHandler;
	
	
}
