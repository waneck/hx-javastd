package javax.swing;
/*
* Copyright (c) 1998, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class DefaultListCellRenderer extends javax.swing.JLabel implements javax.swing.ListCellRenderer<Dynamic> implements java.io.Serializable
{
	private static var noFocusBorder : javax.swing.border.Border;
	
	/**
	* Constructs a default renderer object for an item
	* in a list.
	*/
	@:overload public function new() : Void;
	
	@:overload public function getListCellRendererComponent(list : javax.swing.JList<Dynamic>, value : Dynamic, index : Int, isSelected : Bool, cellHasFocus : Bool) : java.awt.Component;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*
	* @since 1.5
	* @return <code>true</code> if the background is completely opaque
	*         and differs from the JList's background;
	*         <code>false</code> otherwise
	*/
	@:require(java5) @:overload override public function isOpaque() : Bool;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload override public function validate() : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload override public function invalidate() : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload override public function repaint() : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload override public function revalidate() : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload override public function repaint(tm : haxe.Int64, x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload override public function repaint(r : java.awt.Rectangle) : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload override private function firePropertyChange(propertyName : String, oldValue : Dynamic, newValue : Dynamic) : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload override public function firePropertyChange(propertyName : String, oldValue : java.StdTypes.Int8, newValue : java.StdTypes.Int8) : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload override public function firePropertyChange(propertyName : String, oldValue : java.StdTypes.Char16, newValue : java.StdTypes.Char16) : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload override public function firePropertyChange(propertyName : String, oldValue : java.StdTypes.Int16, newValue : java.StdTypes.Int16) : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload override public function firePropertyChange(propertyName : String, oldValue : Int, newValue : Int) : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload override public function firePropertyChange(propertyName : String, oldValue : haxe.Int64, newValue : haxe.Int64) : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload override public function firePropertyChange(propertyName : String, oldValue : Single, newValue : Single) : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload override public function firePropertyChange(propertyName : String, oldValue : Float, newValue : Float) : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload override public function firePropertyChange(propertyName : String, oldValue : Bool, newValue : Bool) : Void;
	
	
}
/**
* A subclass of DefaultListCellRenderer that implements UIResource.
* DefaultListCellRenderer doesn't implement UIResource
* directly so that applications can safely override the
* cellRenderer property with DefaultListCellRenderer subclasses.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*/
@:native('javax$swing$DefaultListCellRenderer$UIResource') extern class DefaultListCellRenderer_UIResource extends DefaultListCellRenderer implements javax.swing.plaf.UIResource
{
	
}
