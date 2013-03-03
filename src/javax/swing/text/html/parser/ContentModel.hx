package javax.swing.text.html.parser;
/*
* Copyright (c) 1998, 2004, Oracle and/or its affiliates. All rights reserved.
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
* A representation of a content model. A content model is
* basically a restricted BNF expression. It is restricted in
* the sense that it must be deterministic. This means that you
* don't have to represent it as a finite state automata.<p>
* See Annex H on page 556 of the SGML handbook for more information.
*
* @author   Arthur van Hoff
*
*/
extern class ContentModel implements java.io.Serializable
{
	/**
	* Type. Either '*', '?', '+', ',', '|', '&'.
	*/
	@:public public var type : Int;
	
	/**
	* The content. Either an Element or a ContentModel.
	*/
	@:public public var content : Dynamic;
	
	/**
	* The next content model (in a ',', '|' or '&' expression).
	*/
	@:public public var next : javax.swing.text.html.parser.ContentModel;
	
	@:overload @:public public function new() : Void;
	
	/**
	* Create a content model for an element.
	*/
	@:overload @:public public function new(content : javax.swing.text.html.parser.Element) : Void;
	
	/**
	* Create a content model of a particular type.
	*/
	@:overload @:public public function new(type : Int, content : javax.swing.text.html.parser.ContentModel) : Void;
	
	/**
	* Create a content model of a particular type.
	*/
	@:overload @:public public function new(type : Int, content : Dynamic, next : javax.swing.text.html.parser.ContentModel) : Void;
	
	/**
	* Return true if the content model could
	* match an empty input stream.
	*/
	@:overload @:public public function empty() : Bool;
	
	/**
	* Update elemVec with the list of elements that are
	* part of the this contentModel.
	*/
	@:overload @:public public function getElements(elemVec : java.util.Vector<javax.swing.text.html.parser.Element>) : Void;
	
	/**
	* Return true if the token could potentially be the
	* first token in the input stream.
	*/
	@:overload @:public public function first(token : Dynamic) : Bool;
	
	/**
	* Return the element that must be next.
	*/
	@:overload @:public public function first() : javax.swing.text.html.parser.Element;
	
	/**
	* Convert to a string.
	*/
	@:overload @:public public function toString() : String;
	
	
}
