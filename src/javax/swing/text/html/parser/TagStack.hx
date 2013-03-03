package javax.swing.text.html.parser;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
* A stack of tags. Used while parsing an HTML document.
* It, together with the ContentModelStates, defines the
* complete state of the parser while reading a document.
* When a start tag is encountered an element is pushed onto
* the stack, when an end tag is enountered an element is popped
* of the stack.
*
* @see Parser
* @see DTD
* @see ContentModelState
* @author      Arthur van Hoff
*/
@:internal extern class TagStack implements javax.swing.text.html.parser.DTDConstants
{
	/**
	* Return the element that must come next in the
	* input stream.
	*/
	@:overload @:public public function first() : javax.swing.text.html.parser.Element;
	
	/**
	* Return the ContentModel that must be satisfied by
	* what comes next in the input stream.
	*/
	@:overload @:public public function contentModel() : javax.swing.text.html.parser.ContentModel;
	
	/**
	* Convert to a string.
	*/
	@:overload @:public public function toString() : String;
	
	
}
@:internal extern class NPrintWriter extends java.io.PrintWriter
{
	@:overload @:public public function new(numberOfLines : Int) : Void;
	
	@:overload @:public override public function println(array : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	
}
