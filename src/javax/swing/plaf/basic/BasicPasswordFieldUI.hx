package javax.swing.plaf.basic;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
* Provides the Windows look and feel for a password field.
* The only difference from the standard text field is that
* the view of the text is simply a string of the echo
* character as specified in JPasswordField, rather than the
* real text contained in the field.
*
* @author  Timothy Prinzing
*/
extern class BasicPasswordFieldUI extends javax.swing.plaf.basic.BasicTextFieldUI
{
	/**
	* Creates a UI for a JPasswordField.
	*
	* @param c the JPasswordField
	* @return the UI
	*/
	@:overload public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* Fetches the name used as a key to look up properties through the
	* UIManager.  This is used as a prefix to all the standard
	* text properties.
	*
	* @return the name ("PasswordField")
	*/
	@:overload override private function getPropertyPrefix() : String;
	
	/**
	* Installs the necessary properties on the JPasswordField.
	* @since 1.6
	*/
	@:require(java6) @:overload override private function installDefaults() : Void;
	
	/**
	* Creates a view (PasswordView) for an element.
	*
	* @param elem the element
	* @return the view
	*/
	@:overload override public function create(elem : javax.swing.text.Element) : javax.swing.text.View;
	
	
}
