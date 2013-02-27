package javax.swing.text.html;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
* HiddenTagView subclasses EditableView to contain a JTextField showing
* the element name. When the textfield is edited the element name is
* reset. As this inherits from EditableView if the JTextComponent is
* not editable, the textfield will not be visible.
*
* @author  Scott Violet
*/
@:internal extern class HiddenTagView extends javax.swing.text.html.EditableView implements javax.swing.event.DocumentListener
{
	@:overload override private function createComponent() : java.awt.Component;
	
	@:overload override public function getAlignment(axis : Int) : Single;
	
	@:overload override public function getMinimumSpan(axis : Int) : Single;
	
	@:overload override public function getPreferredSpan(axis : Int) : Single;
	
	@:overload override public function getMaximumSpan(axis : Int) : Single;
	
	@:overload public function insertUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	@:overload public function removeUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	@:overload public function changedUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	@:overload override public function changedUpdate(e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	
}
@:native('javax$swing$text$html$HiddenTagView$StartTagBorder') @:internal extern class HiddenTagView_StartTagBorder implements javax.swing.border.Border implements java.io.Serializable
{
	@:overload public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function getBorderInsets(c : java.awt.Component) : java.awt.Insets;
	
	@:overload public function isBorderOpaque() : Bool;
	
	
}
@:native('javax$swing$text$html$HiddenTagView$EndTagBorder') @:internal extern class HiddenTagView_EndTagBorder implements javax.swing.border.Border implements java.io.Serializable
{
	@:overload public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function getBorderInsets(c : java.awt.Component) : java.awt.Insets;
	
	@:overload public function isBorderOpaque() : Bool;
	
	
}
