package sun.tools.jconsole.inspector;
/*
* Copyright (c) 2004, 2008, Oracle and/or its affiliates. All rights reserved.
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
* This list implements the drag and drop functionality.
*/
extern class XTextField extends javax.swing.JPanel implements javax.swing.event.DocumentListener implements java.awt.event.ActionListener
{
	private var textField : javax.swing.JTextField;
	
	private static var COMPATIBLE_VALUE(default, null) : Int;
	
	private static var CURRENT_VALUE(default, null) : Int;
	
	private static var NULL_VALUE(default, null) : Int;
	
	@:overload public function new() : Void;
	
	@:overload public function new(value : Dynamic) : Void;
	
	@:overload public function new(value : Dynamic, colWidth : Int) : Void;
	
	@:overload public function new(value : Dynamic, expectedClass : Class<Dynamic>, colWidth : Int, isCallable : Bool, button : javax.swing.JButton, operation : sun.tools.jconsole.inspector.XOperations) : Void;
	
	@:overload public static function setNullSelectionAllowed(allowNullSelection : Bool) : Void;
	
	@:overload public static function getNullSelectionAllowed() : Bool;
	
	@:overload private function init(value : Dynamic, expectedClass : Class<Dynamic>) : Void;
	
	@:overload public function setHorizontalAlignment(h : Int) : Void;
	
	@:overload private function buildJMenuItem(xobject : sun.tools.jconsole.inspector.XObject, valueType : Int) : javax.swing.JMenuItem;
	
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	/**
	* This method returns either the user inputted String, or an XObject
	* if one was dropped on the input field.
	*/
	@:overload public function getValue() : Dynamic;
	
	@:overload public function changedUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	@:overload public function removeUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	@:overload public function insertUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	
}
