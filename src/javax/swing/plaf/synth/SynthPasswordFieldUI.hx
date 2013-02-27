package javax.swing.plaf.synth;
/*
* Copyright (c) 2002, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class SynthPasswordFieldUI extends javax.swing.plaf.synth.SynthTextFieldUI
{
	/**
	* Creates a UI for a JPasswordField.
	*
	* @param c the JPasswordField
	* @return the UI
	*/
	@:native('createUI') @:overload public static function _createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* Fetches the name used as a key to look up properties through the
	* UIManager.  This is used as a prefix to all the standard
	* text properties.
	*
	* @return the name ("PasswordField")
	*/
	@:overload override private function getPropertyPrefix() : String;
	
	/**
	* Creates a view (PasswordView) for an element.
	*
	* @param elem the element
	* @return the view
	*/
	@:overload override public function create(elem : javax.swing.text.Element) : javax.swing.text.View;
	
	/**
	* @inheritDoc
	*/
	@:overload override public function paintBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function installKeyboardActions() : Void;
	
	
}
