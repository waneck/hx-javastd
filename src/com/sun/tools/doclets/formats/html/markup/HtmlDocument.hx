package com.sun.tools.doclets.formats.html.markup;
/*
* Copyright (c) 2010, Oracle and/or its affiliates. All rights reserved.
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
/**
* Class for generating an HTML document for javadoc output.
*
* @author Bhavesh Patel
*/
extern class HtmlDocument extends com.sun.tools.doclets.internal.toolkit.Content
{
	/**
	* Constructor to construct an HTML document.
	*
	* @param docType document type for the HTML document
	* @param docComment comment for the document
	* @param htmlTree HTML tree of the document
	*/
	@:overload @:public public function new(docType : com.sun.tools.doclets.internal.toolkit.Content, docComment : com.sun.tools.doclets.internal.toolkit.Content, htmlTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Constructor to construct an HTML document.
	*
	* @param docType document type for the HTML document
	* @param htmlTree HTML tree of the document
	*/
	@:overload @:public public function new(docType : com.sun.tools.doclets.internal.toolkit.Content, htmlTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Adds content for the HTML document.
	*
	* @param htmlContent html content to be added
	*/
	@:overload @:public override public function addContent(htmlContent : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* This method is not supported by the class.
	*
	* @param stringContent string content that needs to be added
	* @throws DocletAbortException this method will always throw a
	*                              DocletAbortException because it
	*                              is not supported.
	*/
	@:overload @:public override public function addContent(stringContent : String) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function isEmpty() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function write(contentBuilder : java.lang.StringBuilder) : Void;
	
	
}
