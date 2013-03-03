package javax.swing.text.html.parser;
/*
* Copyright (c) 1998, 2000, Oracle and/or its affiliates. All rights reserved.
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
* A content model state. This is basically a list of pointers to
* the BNF expression representing the model (the ContentModel).
* Each element in a DTD has a content model which describes the
* elements that may occur inside, and the order in which they can
* occur.
* <p>
* Each time a token is reduced a new state is created.
* <p>
* See Annex H on page 556 of the SGML handbook for more information.
*
* @see Parser
* @see DTD
* @see Element
* @see ContentModel
* @author Arthur van Hoff
*/
@:internal extern class ContentModelState
{
	/**
	* Create a content model state for a content model.
	*/
	@:overload @:public public function new(model : javax.swing.text.html.parser.ContentModel) : Void;
	
	/**
	* Return the content model that is relevant to the current state.
	*/
	@:overload @:public public function getModel() : javax.swing.text.html.parser.ContentModel;
	
	/**
	* Check if the state can be terminated. That is there are no more
	* tokens required in the input stream.
	* @return true if the model can terminate without further input
	*/
	@:overload @:public public function terminate() : Bool;
	
	/**
	* Check if the state can be terminated. That is there are no more
	* tokens required in the input stream.
	* @return the only possible element that can occur next
	*/
	@:overload @:public public function first() : javax.swing.text.html.parser.Element;
	
	/**
	* Advance this state to a new state. An exception is thrown if the
	* token is illegal at this point in the content model.
	* @return next state after reducing a token
	*/
	@:overload @:public public function advance(token : Dynamic) : javax.swing.text.html.parser.ContentModelState;
	
	
}
