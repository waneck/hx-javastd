package javax.swing.plaf.synth;
/*
* Copyright (c) 2002, 2011, Oracle and/or its affiliates. All rights reserved.
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
* Provides the look and feel for a styled text editor in the
* Synth look and feel.
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
* @author  Shannon Hickey
* @since 1.7
*/
@:require(java7) extern class SynthTextPaneUI extends javax.swing.plaf.synth.SynthEditorPaneUI
{
	/**
	* Creates a UI for the JTextPane.
	*
	* @param c the JTextPane object
	* @return the UI object
	*/
	@:overload @:public @:static public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* Fetches the name used as a key to lookup properties through the
	* UIManager.  This is used as a prefix to all the standard
	* text properties.
	*
	* @return the name ("TextPane")
	*/
	@:overload @:protected override private function getPropertyPrefix() : String;
	
	/**
	* Installs the UI for a component.  This does the following
	* things.
	* <ol>
	* <li>
	* Sets opaqueness of the associated component according to its style,
	* if the opaque property has not already been set by the client program.
	* <li>
	* Installs the default caret and highlighter into the
	* associated component. These properties are only set if their
	* current value is either {@code null} or an instance of
	* {@link UIResource}.
	* <li>
	* Attaches to the editor and model.  If there is no
	* model, a default one is created.
	* <li>
	* Creates the view factory and the view hierarchy used
	* to represent the model.
	* </ol>
	*
	* @param c the editor component
	* @see javax.swing.plaf.basic.BasicTextUI#installUI
	* @see ComponentUI#installUI
	*/
	@:overload @:public override public function installUI(c : javax.swing.JComponent) : Void;
	
	/**
	* This method gets called when a bound property is changed
	* on the associated JTextComponent.  This is a hook
	* which UI implementations may change to reflect how the
	* UI displays bound properties of JTextComponent subclasses.
	* If the font, foreground or document has changed, the
	* the appropriate property is set in the default style of
	* the document.
	*
	* @param evt the property change event
	*/
	@:overload @:protected override private function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:public override public function paintBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	
}
