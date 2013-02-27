package javax.swing.text.html.parser;
/*
* Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class Parser implements javax.swing.text.html.parser.DTDConstants
{
	private var dtd : javax.swing.text.html.parser.DTD;
	
	/**
	* This flag determines whether or not the Parser will be strict
	* in enforcing SGML compatibility.  If false, it will be lenient
	* with certain common classes of erroneous HTML constructs.
	* Strict or not, in either case an error will be recorded.
	*
	*/
	private var strict : Bool;
	
	@:overload public function new(dtd : javax.swing.text.html.parser.DTD) : Void;
	
	/**
	* @return the line number of the line currently being parsed
	*/
	@:overload private function getCurrentLine() : Int;
	
	/**
	* Makes a TagElement.
	*/
	@:overload private function makeTag(elem : javax.swing.text.html.parser.Element, fictional : Bool) : javax.swing.text.html.parser.TagElement;
	
	@:overload private function makeTag(elem : javax.swing.text.html.parser.Element) : javax.swing.text.html.parser.TagElement;
	
	@:overload private function getAttributes() : javax.swing.text.SimpleAttributeSet;
	
	@:overload private function flushAttributes() : Void;
	
	/**
	* Called when PCDATA is encountered.
	*/
	@:overload private function handleText(text : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	* Called when an HTML title tag is encountered.
	*/
	@:overload private function handleTitle(text : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	* Called when an HTML comment is encountered.
	*/
	@:overload private function handleComment(text : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	@:overload private function handleEOFInComment() : Void;
	
	/**
	* Called when an empty tag is encountered.
	*/
	@:overload private function handleEmptyTag(tag : javax.swing.text.html.parser.TagElement) : Void;
	
	/**
	* Called when a start tag is encountered.
	*/
	@:overload private function handleStartTag(tag : javax.swing.text.html.parser.TagElement) : Void;
	
	/**
	* Called when an end tag is encountered.
	*/
	@:overload private function handleEndTag(tag : javax.swing.text.html.parser.TagElement) : Void;
	
	/**
	* An error has occurred.
	*/
	@:overload private function handleError(ln : Int, msg : String) : Void;
	
	/**
	* Invoke the error handler.
	*/
	@:overload private function error(err : String, arg1 : String, arg2 : String, arg3 : String) : Void;
	
	@:overload private function error(err : String, arg1 : String, arg2 : String) : Void;
	
	@:overload private function error(err : String, arg1 : String) : Void;
	
	@:overload private function error(err : String) : Void;
	
	/**
	* Handle a start tag. The new tag is pushed
	* onto the tag stack. The attribute list is
	* checked for required attributes.
	*/
	@:overload private function startTag(tag : javax.swing.text.html.parser.TagElement) : Void;
	
	/**
	* Handle an end tag. The end tag is popped
	* from the tag stack.
	*/
	@:overload private function endTag(omitted : Bool) : Void;
	
	/**
	* Marks the first time a tag has been seen in a document
	*/
	@:overload private function markFirstTime(elem : javax.swing.text.html.parser.Element) : Void;
	
	/**
	* Parses th Document Declaration Type markup declaration.
	* Currently ignores it.
	*/
	@:overload public function parseDTDMarkup() : String;
	
	/**
	* Parse markup declarations.
	* Currently only handles the Document Type Declaration markup.
	* Returns true if it is a markup declaration false otherwise.
	*/
	@:overload private function parseMarkupDeclarations(strBuff : java.lang.StringBuffer) : Bool;
	
	/**
	* Parse an HTML stream, given a DTD.
	*/
	@:overload @:synchronized public function parse(_in : java.io.Reader) : Void;
	
	@:overload private function getCurrentPos() : Int;
	
	
}
