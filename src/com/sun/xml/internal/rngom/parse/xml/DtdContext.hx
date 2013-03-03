package com.sun.xml.internal.rngom.parse.xml;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
/*
* Copyright (C) 2004-2011
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
* THE SOFTWARE.
*/
extern class DtdContext implements org.xml.sax.DTDHandler implements org.relaxng.datatype.ValidationContext
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(dc : com.sun.xml.internal.rngom.parse.xml.DtdContext) : Void;
	
	@:overload @:public public function notationDecl(name : String, publicId : String, systemId : String) : Void;
	
	@:overload @:public public function unparsedEntityDecl(name : String, publicId : String, systemId : String, notationName : String) : Void;
	
	@:overload @:public public function isNotation(notationName : String) : Bool;
	
	@:overload @:public public function isUnparsedEntity(entityName : String) : Bool;
	
	@:overload @:public public function clearDtdContext() : Void;
	
	/**
	* Resolves a namespace prefix to the corresponding namespace URI.
	*
	* This method is used for validating the QName type, for example.
	*
	* <p>
	* If the prefix is "" (empty string), it indicates
	* an unprefixed value. The callee
	* should resolve it as for an unprefixed
	* element, rather than for an unprefixed attribute.
	*
	* <p>
	* If the prefix is "xml", then the callee must resolve
	* this prefix into "http://www.w3.org/XML/1998/namespace",
	* as defined in the XML Namespaces Recommendation.
	*
	* @return
	*              namespace URI of this prefix.
	*              If the specified prefix is not declared,
	*              the implementation must return null.
	*/
	@:overload @:public public function resolveNamespacePrefix(prefix : String) : String;
	
	/**
	* Returns the base URI of the context.  The null string may be returned
	* if no base URI is known.
	*/
	@:overload @:public public function getBaseUri() : String;
	
	
}
