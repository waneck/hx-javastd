package com.sun.java.swing.plaf.motif;
/*
* Copyright (c) 1997, 1998, Oracle and/or its affiliates. All rights reserved.
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
* Provides the look and feel features that are common across
* the Motif/CDE text LAF implementations.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases.  The current serialization support is appropriate
* for short term storage or RMI between applications running the same
* version of Swing.  A future release of Swing will provide support for
* long term persistence.
*
* @author  Timothy Prinzing
*/
extern class MotifTextUI
{
	/**
	* Creates the object to use for a caret for all of the Motif
	* text components.  The caret is rendered as an I-beam on Motif.
	*
	* @return the caret object
	*/
	@:overload public static function createCaret() : javax.swing.text.Caret;
	
	
}
/**
* The motif caret is rendered as an I beam.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases.  The current serialization support is appropriate
* for short term storage or RMI between applications running the same
* version of Swing.  A future release of Swing will provide support for
* long term persistence.
*/
@:native('com$sun$java$swing$plaf$motif$MotifTextUI$MotifCaret') extern class MotifTextUI_MotifCaret extends javax.swing.text.DefaultCaret implements javax.swing.plaf.UIResource
{
	/**
	* Called when the component containing the caret gains
	* focus.  This is implemented to repaint the component
	* so the focus rectangle will be re-rendered, as well
	* as providing the superclass behavior.
	*
	* @param e the focus event
	* @see FocusListener#focusGained
	*/
	@:overload override public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	/**
	* Called when the component containing the caret loses
	* focus.  This is implemented to set the caret to visibility
	* to false.
	*
	* @param e the focus event
	* @see FocusListener#focusLost
	*/
	@:overload override public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	/**
	* Damages the area surrounding the caret to cause
	* it to be repainted.  If paint() is reimplemented,
	* this method should also be reimplemented.
	*
	* @param r  the current location of the caret, does nothing if null
	* @see #paint
	*/
	@:overload override private function damage(r : java.awt.Rectangle) : Void;
	
	/**
	* Renders the caret as a vertical line.  If this is reimplemented
	* the damage method should also be reimplemented as it assumes the
	* shape of the caret is a vertical line.  Does nothing if isVisible()
	* is false.  The caret color is derived from getCaretColor() if
	* the component has focus, else from getDisabledTextColor().
	*
	* @param g the graphics context
	* @see #damage
	*/
	@:overload override public function paint(g : java.awt.Graphics) : Void;
	
	
}
