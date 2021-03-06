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
* Provides the look and feel for a JEditorPane.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*
* @author  Timothy Prinzing
*/
extern class BasicEditorPaneUI extends javax.swing.plaf.basic.BasicTextUI
{
	/**
	* Creates a UI for the JTextPane.
	*
	* @param c the JTextPane component
	* @return the UI
	*/
	@:overload @:public @:static public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* Creates a new BasicEditorPaneUI.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Fetches the name used as a key to lookup properties through the
	* UIManager.  This is used as a prefix to all the standard
	* text properties.
	*
	* @return the name ("EditorPane")
	*/
	@:overload @:protected override private function getPropertyPrefix() : String;
	
	/**
	*{@inheritDoc}
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public override public function installUI(c : javax.swing.JComponent) : Void;
	
	/**
	*{@inheritDoc}
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	/**
	* Fetches the EditorKit for the UI.  This is whatever is
	* currently set in the associated JEditorPane.
	*
	* @return the editor capabilities
	* @see TextUI#getEditorKit
	*/
	@:overload @:public override public function getEditorKit(tc : javax.swing.text.JTextComponent) : javax.swing.text.EditorKit;
	
	/**
	* This method gets called when a bound property is changed
	* on the associated JTextComponent.  This is a hook
	* which UI implementations may change to reflect how the
	* UI displays bound properties of JTextComponent subclasses.
	* This is implemented to rebuild the ActionMap based upon an
	* EditorKit change.
	*
	* @param evt the property change event
	*/
	@:overload @:protected override private function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicEditorPaneUI$StyleSheetUIResource') @:internal extern class BasicEditorPaneUI_StyleSheetUIResource extends javax.swing.text.html.StyleSheet implements javax.swing.plaf.UIResource
{
	
}
