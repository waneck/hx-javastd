package javax.swing.text.html;
/*
* Copyright (c) 1998, 2004, Oracle and/or its affiliates. All rights reserved.
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
* CommentView subclasses HiddenTagView to contain a JTextArea showing
* a comment. When the textarea is edited the comment is
* reset. As this inherits from EditableView if the JTextComponent is
* not editable, the textarea will not be visible.
*
* @author  Scott Violet
*/
@:internal extern class CommentView extends javax.swing.text.html.HiddenTagView
{
	@:overload @:protected override private function createComponent() : java.awt.Component;
	
	
}
@:native('javax$swing$text$html$CommentView$CommentBorder') @:internal extern class CommentView_CommentBorder extends javax.swing.border.LineBorder
{
	@:overload @:public override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload @:public override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	@:overload @:public override public function isBorderOpaque() : Bool;
	
	
}
