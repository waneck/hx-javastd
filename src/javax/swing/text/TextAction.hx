package javax.swing.text;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class TextAction extends javax.swing.AbstractAction
{
	/**
	* Creates a new JTextAction object.
	*
	* @param name the name of the action
	*/
	@:overload public function new(name : String) : Void;
	
	/**
	* Determines the component to use for the action.
	* This if fetched from the source of the ActionEvent
	* if it's not null and can be narrowed.  Otherwise,
	* the last focused component is used.
	*
	* @param e the ActionEvent
	* @return the component
	*/
	@:overload @:final private function getTextComponent(e : java.awt.event.ActionEvent) : javax.swing.text.JTextComponent;
	
	/**
	* Takes one list of
	* commands and augments it with another list
	* of commands.  The second list takes precedence
	* over the first list; that is, when both lists
	* contain a command with the same name, the command
	* from the second list is used.
	*
	* @param list1 the first list, may be empty but not
	*              <code>null</code>
	* @param list2 the second list, may be empty but not
	*              <code>null</code>
	* @return the augmented list
	*/
	@:overload @:final public static function augmentList(list1 : java.NativeArray<javax.swing.Action>, list2 : java.NativeArray<javax.swing.Action>) : java.NativeArray<javax.swing.Action>;
	
	/**
	* Fetches the text component that currently has focus.
	* This allows actions to be shared across text components
	* which is useful for key-bindings where a large set of
	* actions are defined, but generally used the same way
	* across many different components.
	*
	* @return the component
	*/
	@:overload @:final private function getFocusedComponent() : javax.swing.text.JTextComponent;
	
	
}
