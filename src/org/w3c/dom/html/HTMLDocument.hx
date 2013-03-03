package org.w3c.dom.html;
/*
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
* This file is available under and governed by the GNU General Public
* License version 2 only, as published by the Free Software Foundation.
* However, the following notice accompanied the original version of this
* file and, per its terms, should not be removed:
*
* Copyright (c) 2000 World Wide Web Consortium,
* (Massachusetts Institute of Technology, Institut National de
* Recherche en Informatique et en Automatique, Keio University). All
* Rights Reserved. This program is distributed under the W3C's Software
* Intellectual Property License. This program is distributed in the
* hope that it will be useful, but WITHOUT ANY WARRANTY; without even
* the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
* PURPOSE. See W3C License http://www.w3.org/Consortium/Legal/ for more
* details.
*/
extern interface HTMLDocument extends org.w3c.dom.Document
{
	/**
	*  The title of a document as specified by the <code>TITLE</code> element
	* in the head of the document.
	*/
	@:overload @:public public function getTitle() : String;
	
	@:overload @:public public function setTitle(title : String) : Void;
	
	/**
	*  Returns the URI  of the page that linked to this page. The value is an
	* empty string if the user navigated to the page directly (not through a
	* link, but, for example, via a bookmark).
	*/
	@:overload @:public public function getReferrer() : String;
	
	/**
	*  The domain name of the server that served the document, or
	* <code>null</code> if the server cannot be identified by a domain name.
	*/
	@:overload @:public public function getDomain() : String;
	
	/**
	*  The complete URI  of the document.
	*/
	@:overload @:public public function getURL() : String;
	
	/**
	*  The element that contains the content for the document. In documents
	* with <code>BODY</code> contents, returns the <code>BODY</code>
	* element. In frameset documents, this returns the outermost
	* <code>FRAMESET</code> element.
	*/
	@:overload @:public public function getBody() : org.w3c.dom.html.HTMLElement;
	
	@:overload @:public public function setBody(body : org.w3c.dom.html.HTMLElement) : Void;
	
	/**
	*  A collection of all the <code>IMG</code> elements in a document. The
	* behavior is limited to <code>IMG</code> elements for backwards
	* compatibility.
	*/
	@:overload @:public public function getImages() : org.w3c.dom.html.HTMLCollection;
	
	/**
	*  A collection of all the <code>OBJECT</code> elements that include
	* applets and <code>APPLET</code> ( deprecated ) elements in a document.
	*/
	@:overload @:public public function getApplets() : org.w3c.dom.html.HTMLCollection;
	
	/**
	*  A collection of all <code>AREA</code> elements and anchor (
	* <code>A</code> ) elements in a document with a value for the
	* <code>href</code> attribute.
	*/
	@:overload @:public public function getLinks() : org.w3c.dom.html.HTMLCollection;
	
	/**
	*  A collection of all the forms of a document.
	*/
	@:overload @:public public function getForms() : org.w3c.dom.html.HTMLCollection;
	
	/**
	*  A collection of all the anchor (<code>A</code> ) elements in a document
	*  with a value for the <code>name</code> attribute. Note. For reasons
	* of backwards compatibility, the returned set of anchors only contains
	* those anchors created with the <code>name</code>  attribute, not those
	* created with the <code>id</code> attribute.
	*/
	@:overload @:public public function getAnchors() : org.w3c.dom.html.HTMLCollection;
	
	/**
	*  The cookies associated with this document. If there are none, the
	* value is an empty string. Otherwise, the value is a string: a
	* semicolon-delimited list of "name, value" pairs for all the cookies
	* associated with the page. For example,
	* <code>name=value;expires=date</code> .
	*/
	@:overload @:public public function getCookie() : String;
	
	@:overload @:public public function setCookie(cookie : String) : Void;
	
	/**
	*  Note. This method and the ones following  allow a user to add to or
	* replace the structure model of a document using strings of unparsed
	* HTML. At the time of  writing alternate methods for providing similar
	* functionality for  both HTML and XML documents were being considered.
	* The following methods may be deprecated at some point in the future in
	* favor of a more general-purpose mechanism.
	* <br> Open a document stream for writing. If a document exists in the
	* target, this method clears it.
	*/
	@:overload @:public public function open() : Void;
	
	/**
	*  Closes a document stream opened by <code>open()</code> and forces
	* rendering.
	*/
	@:overload @:public public function close() : Void;
	
	/**
	*  Write a string of text to a document stream opened by
	* <code>open()</code> . The text is parsed into the document's structure
	* model.
	* @param text  The string to be parsed into some structure in the
	*   document structure model.
	*/
	@:overload @:public public function write(text : String) : Void;
	
	/**
	*  Write a string of text followed by a newline character to a document
	* stream opened by <code>open()</code> . The text is parsed into the
	* document's structure model.
	* @param text  The string to be parsed into some structure in the
	*   document structure model.
	*/
	@:overload @:public public function writeln(text : String) : Void;
	
	/**
	*  Returns the (possibly empty) collection of elements whose
	* <code>name</code> value is given by <code>elementName</code> .
	* @param elementName  The <code>name</code> attribute value for an
	*   element.
	* @return  The matching elements.
	*/
	@:overload @:public public function getElementsByName(elementName : String) : org.w3c.dom.NodeList;
	
	
}
