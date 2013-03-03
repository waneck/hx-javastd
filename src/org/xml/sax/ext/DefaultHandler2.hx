package org.xml.sax.ext;
/*
* Copyright (c) 2004, 2005, Oracle and/or its affiliates. All rights reserved.
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
//// DefaultHandler2.java - extended DefaultHandler
//// http://www.saxproject.org
//// Public Domain: no warranty.
//// $Id: DefaultHandler2.java,v 1.2 2004/11/03 22:49:08 jsuttor Exp $
extern class DefaultHandler2 extends org.xml.sax.helpers.DefaultHandler implements org.xml.sax.ext.LexicalHandler implements org.xml.sax.ext.DeclHandler implements org.xml.sax.ext.EntityResolver2
{
	/** Constructs a handler which ignores all parsing events. */
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function startCDATA() : Void;
	
	@:overload @:public public function endCDATA() : Void;
	
	@:overload @:public public function startDTD(name : String, publicId : String, systemId : String) : Void;
	
	@:overload @:public public function endDTD() : Void;
	
	@:overload @:public public function startEntity(name : String) : Void;
	
	@:overload @:public public function endEntity(name : String) : Void;
	
	@:overload @:public public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:public public function attributeDecl(eName : String, aName : String, type : String, mode : String, value : String) : Void;
	
	@:overload @:public public function elementDecl(name : String, model : String) : Void;
	
	@:overload @:public public function externalEntityDecl(name : String, publicId : String, systemId : String) : Void;
	
	@:overload @:public public function internalEntityDecl(name : String, value : String) : Void;
	
	/**
	* Tells the parser that if no external subset has been declared
	* in the document text, none should be used.
	*/
	@:overload @:public public function getExternalSubset(name : String, baseURI : String) : org.xml.sax.InputSource;
	
	/**
	* Tells the parser to resolve the systemId against the baseURI
	* and read the entity text from that resulting absolute URI.
	* Note that because the older
	* {@link DefaultHandler#resolveEntity DefaultHandler.resolveEntity()},
	* method is overridden to call this one, this method may sometimes
	* be invoked with null <em>name</em> and <em>baseURI</em>, and
	* with the <em>systemId</em> already absolutized.
	*/
	@:overload @:public public function resolveEntity(name : String, publicId : String, baseURI : String, systemId : String) : org.xml.sax.InputSource;
	
	/**
	* Invokes
	* {@link EntityResolver2#resolveEntity EntityResolver2.resolveEntity()}
	* with null entity name and base URI.
	* You only need to override that method to use this class.
	*/
	@:overload @:public override public function resolveEntity(publicId : String, systemId : String) : org.xml.sax.InputSource;
	
	
}
