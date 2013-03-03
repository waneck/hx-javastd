package javax.swing.colorchooser;
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
* This is the abstract superclass for color choosers.  If you want to add
* a new color chooser panel into a <code>JColorChooser</code>, subclass
* this class.
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
* @author Tom Santos
* @author Steve Wilson
*/
extern class AbstractColorChooserPanel extends javax.swing.JPanel
{
	/**
	* Invoked automatically when the model's state changes.
	* It is also called by <code>installChooserPanel</code> to allow
	* you to set up the initial state of your chooser.
	* Override this method to update your <code>ChooserPanel</code>.
	*/
	@:overload @:public @:abstract public function updateChooser() : Void;
	
	/**
	* Builds a new chooser panel.
	*/
	@:overload @:protected @:abstract private function buildChooser() : Void;
	
	/**
	* Returns a string containing the display name of the panel.
	* @return the name of the display panel
	*/
	@:overload @:public @:abstract public function getDisplayName() : String;
	
	/**
	* Provides a hint to the look and feel as to the
	* <code>KeyEvent.VK</code> constant that can be used as a mnemonic to
	* access the panel. A return value <= 0 indicates there is no mnemonic.
	* <p>
	* The return value here is a hint, it is ultimately up to the look
	* and feel to honor the return value in some meaningful way.
	* <p>
	* This implementation returns 0, indicating the
	* <code>AbstractColorChooserPanel</code> does not support a mnemonic,
	* subclasses wishing a mnemonic will need to override this.
	*
	* @return KeyEvent.VK constant identifying the mnemonic; <= 0 for no
	*         mnemonic
	* @see #getDisplayedMnemonicIndex
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getMnemonic() : Int;
	
	/**
	* Provides a hint to the look and feel as to the index of the character in
	* <code>getDisplayName</code> that should be visually identified as the
	* mnemonic. The look and feel should only use this if
	* <code>getMnemonic</code> returns a value > 0.
	* <p>
	* The return value here is a hint, it is ultimately up to the look
	* and feel to honor the return value in some meaningful way. For example,
	* a look and feel may wish to render each
	* <code>AbstractColorChooserPanel</code> in a <code>JTabbedPane</code>,
	* and further use this return value to underline a character in
	* the <code>getDisplayName</code>.
	* <p>
	* This implementation returns -1, indicating the
	* <code>AbstractColorChooserPanel</code> does not support a mnemonic,
	* subclasses wishing a mnemonic will need to override this.
	*
	* @return Character index to render mnemonic for; -1 to provide no
	*                   visual identifier for this panel.
	* @see #getMnemonic
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getDisplayedMnemonicIndex() : Int;
	
	/**
	* Returns the small display icon for the panel.
	* @return the small display icon
	*/
	@:overload @:public @:abstract public function getSmallDisplayIcon() : javax.swing.Icon;
	
	/**
	* Returns the large display icon for the panel.
	* @return the large display icon
	*/
	@:overload @:public @:abstract public function getLargeDisplayIcon() : javax.swing.Icon;
	
	/**
	* Invoked when the panel is added to the chooser.
	* If you override this, be sure to call <code>super</code>.
	* @param enclosingChooser  the panel to be added
	* @exception RuntimeException  if the chooser panel has already been
	*                          installed
	*/
	@:overload @:public public function installChooserPanel(enclosingChooser : javax.swing.JColorChooser) : Void;
	
	/**
	* Invoked when the panel is removed from the chooser.
	* If override this, be sure to call <code>super</code>.
	*/
	@:overload @:public public function uninstallChooserPanel(enclosingChooser : javax.swing.JColorChooser) : Void;
	
	/**
	* Returns the model that the chooser panel is editing.
	* @return the <code>ColorSelectionModel</code> model this panel
	*         is editing
	*/
	@:overload @:public public function getColorSelectionModel() : javax.swing.colorchooser.ColorSelectionModel;
	
	/**
	* Returns the color that is currently selected.
	* @return the <code>Color</code> that is selected
	*/
	@:overload @:protected private function getColorFromModel() : java.awt.Color;
	
	/**
	* Draws the panel.
	* @param g  the <code>Graphics</code> object
	*/
	@:overload @:public override public function paint(g : java.awt.Graphics) : Void;
	
	
}
