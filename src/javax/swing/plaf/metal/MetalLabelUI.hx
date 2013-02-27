package javax.swing.plaf.metal;
/*
* Copyright (c) 1998, 2005, Oracle and/or its affiliates. All rights reserved.
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
* A Windows L&F implementation of LabelUI.  This implementation
* is completely static, i.e. there's only one UIView implementation
* that's shared by all JLabel objects.
*
* @author Hans Muller
*/
extern class MetalLabelUI extends javax.swing.plaf.basic.BasicLabelUI
{
	/**
	* The default <code>MetalLabelUI</code> instance. This field might
	* not be used. To change the default instance use a subclass which
	* overrides the <code>createUI</code> method, and place that class
	* name in defaults table under the key "LabelUI".
	*/
	private static var metalLabelUI : MetalLabelUI;
	
	@:native('createUI') @:overload public static function _createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* Just paint the text gray (Label.disabledForeground) rather than
	* in the labels foreground color.
	*
	* @see #paint
	* @see #paintEnabledText
	*/
	@:overload override private function paintDisabledText(l : javax.swing.JLabel, g : java.awt.Graphics, s : String, textX : Int, textY : Int) : Void;
	
	
}
