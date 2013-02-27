package javax.swing.border;
/*
* Copyright (c) 1997, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class EmptyBorder extends javax.swing.border.AbstractBorder implements java.io.Serializable
{
	/**
	* A class which provides an empty, transparent border which
	* takes up space but does no drawing.
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
	private var left : Int;
	
	/**
	* Creates an empty border with the specified insets.
	* @param top the top inset of the border
	* @param left the left inset of the border
	* @param bottom the bottom inset of the border
	* @param right the right inset of the border
	*/
	@:overload public function new(top : Int, left : Int, bottom : Int, right : Int) : Void;
	
	/**
	* Creates an empty border with the specified insets.
	* @param borderInsets the insets of the border
	*/
	@:overload public function new(borderInsets : java.awt.Insets) : Void;
	
	/**
	* Does no drawing by default.
	*/
	@:overload override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Reinitialize the insets parameter with this Border's current Insets.
	* @param c the component for which this border insets value applies
	* @param insets the object to be reinitialized
	*/
	@:overload override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	/**
	* Returns the insets of the border.
	* @since 1.3
	*/
	@:require(java3) @:overload public function getBorderInsets() : java.awt.Insets;
	
	/**
	* Returns whether or not the border is opaque.
	* Returns false by default.
	*/
	@:overload override public function isBorderOpaque() : Bool;
	
	
}
