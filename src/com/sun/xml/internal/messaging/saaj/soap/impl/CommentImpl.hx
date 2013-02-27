package com.sun.xml.internal.messaging.saaj.soap.impl;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class CommentImpl extends com.sun.org.apache.xerces.internal.dom.CommentImpl implements javax.xml.soap.Text implements org.w3c.dom.Comment
{
	private static var log(default, null) : java.util.logging.Logger;
	
	private static var rb : java.util.ResourceBundle;
	
	@:overload public function new(ownerDoc : com.sun.xml.internal.messaging.saaj.soap.SOAPDocumentImpl, text : String) : Void;
	
	@:overload public function getValue() : String;
	
	@:overload public function setValue(text : String) : Void;
	
	@:overload public function setParentElement(element : javax.xml.soap.SOAPElement) : Void;
	
	@:overload public function getParentElement() : javax.xml.soap.SOAPElement;
	
	@:overload public function detachNode() : Void;
	
	@:overload public function recycleNode() : Void;
	
	@:overload public function isComment() : Bool;
	
	@:overload public function splitText(offset : Int) : org.w3c.dom.Text;
	
	@:overload public function replaceWholeText(content : String) : org.w3c.dom.Text;
	
	@:overload public function getWholeText() : String;
	
	@:overload public function isElementContentWhitespace() : Bool;
	
	
}
