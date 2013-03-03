package javax.swing.border;
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
extern class CompoundBorder extends javax.swing.border.AbstractBorder
{
	/**
	* A composite Border class used to compose two Border objects
	* into a single border by nesting an inside Border object within
	* the insets of an outside Border object.
	*
	* For example, this class may be used to add blank margin space
	* to a component with an existing decorative border:
	* <p>
	* <code><pre>
	*    Border border = comp.getBorder();
	*    Border margin = new EmptyBorder(10,10,10,10);
	*    comp.setBorder(new CompoundBorder(border, margin));
	* </pre></code>
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
	* @author David Kloba
	*/
	@:protected private var outsideBorder : javax.swing.border.Border;
	
	@:protected private var insideBorder : javax.swing.border.Border;
	
	/**
	* Creates a compound border with null outside and inside borders.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a compound border with the specified outside and
	* inside borders.  Either border may be null.
	* @param outsideBorder the outside border
	* @param insideBorder the inside border to be nested
	*/
	@:overload @:public public function new(outsideBorder : javax.swing.border.Border, insideBorder : javax.swing.border.Border) : Void;
	
	/**
	* Returns whether or not the compound border is opaque.
	*
	* @return {@code true} if the inside and outside borders
	*         are each either {@code null} or opaque;
	*         or {@code false} otherwise
	*/
	@:overload @:public override public function isBorderOpaque() : Bool;
	
	/**
	* Paints the compound border by painting the outside border
	* with the specified position and size and then painting the
	* inside border at the specified position and size offset by
	* the insets of the outside border.
	* @param c the component for which this border is being painted
	* @param g the paint graphics
	* @param x the x position of the painted border
	* @param y the y position of the painted border
	* @param width the width of the painted border
	* @param height the height of the painted border
	*/
	@:overload @:public override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Reinitialize the insets parameter with this Border's current Insets.
	* @param c the component for which this border insets value applies
	* @param insets the object to be reinitialized
	*/
	@:overload @:public override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	/**
	* Returns the outside border object.
	*/
	@:overload @:public public function getOutsideBorder() : javax.swing.border.Border;
	
	/**
	* Returns the inside border object.
	*/
	@:overload @:public public function getInsideBorder() : javax.swing.border.Border;
	
	
}
