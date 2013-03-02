package com.sun.java.swing.plaf.gtk;
/*
* Copyright (c) 2002, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class GTKPainter extends javax.swing.plaf.synth.SynthPainter
{
	@:overload override public function paintCheckBoxBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintCheckBoxMenuItemBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintFormattedTextFieldBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintToolBarDragWindowBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintToolBarBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintToolBarContentBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintPasswordFieldBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintTextFieldBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintRadioButtonBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintRadioButtonMenuItemBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintLabelBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintInternalFrameBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintDesktopPaneBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintDesktopIconBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintButtonBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintArrowButtonForeground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, direction : Int) : Void;
	
	@:overload override public function paintArrowButtonBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintListBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintMenuBarBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintMenuBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintMenuItemBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintPopupMenuBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintProgressBarBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintProgressBarForeground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	@:overload override public function paintViewportBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintSeparatorBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	@:overload override public function paintSliderTrackBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintSliderThumbBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, dir : Int) : Void;
	
	@:overload override public function paintSpinnerBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintSplitPaneDividerBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintSplitPaneDragDivider(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, orientation : Int) : Void;
	
	@:overload override public function paintTabbedPaneContentBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintTabbedPaneTabBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, tabIndex : Int) : Void;
	
	@:overload override public function paintTextPaneBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintEditorPaneBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintTextAreaBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintRootPaneBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintToggleButtonBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintScrollBarBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintScrollBarThumbBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, dir : Int) : Void;
	
	@:overload override public function paintToolTipBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintTreeCellBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintTreeCellFocus(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintTreeBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paintViewportBackground(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function paintTreeExpandedIcon(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, state : Int, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function paintTreeCollapsedIcon(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, state : Int, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function paintCheckBoxIcon(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, state : Int, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function paintRadioButtonIcon(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, state : Int, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function paintMenuArrowIcon(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, state : Int, x : Int, y : Int, w : Int, h : Int, dir : com.sun.java.swing.plaf.gtk.GTKConstants.GTKConstants_ArrowType) : Void;
	
	@:overload public function paintCheckBoxMenuItemCheckIcon(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, state : Int, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function paintRadioButtonMenuItemCheckIcon(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, state : Int, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function paintToolBarHandleIcon(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, state : Int, x : Int, y : Int, w : Int, h : Int, orientation : com.sun.java.swing.plaf.gtk.GTKConstants.GTKConstants_Orientation) : Void;
	
	@:overload public function paintAscendingSortIcon(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, state : Int, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function paintDescendingSortIcon(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, state : Int, x : Int, y : Int, w : Int, h : Int) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$gtk$GTKPainter$ListTableFocusBorder') @:internal extern class GTKPainter_ListTableFocusBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource
{
	@:overload public static function getSelectedCellBorder() : com.sun.java.swing.plaf.gtk.GTKPainter.GTKPainter_ListTableFocusBorder;
	
	@:overload public static function getUnselectedCellBorder() : com.sun.java.swing.plaf.gtk.GTKPainter.GTKPainter_ListTableFocusBorder;
	
	@:overload public static function getNoFocusCellBorder() : com.sun.java.swing.plaf.gtk.GTKPainter.GTKPainter_ListTableFocusBorder;
	
	@:overload public function new(selectedCell : Bool, focusedCell : Bool) : Void;
	
	@:overload public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function getBorderInsets(c : java.awt.Component, i : java.awt.Insets) : java.awt.Insets;
	
	@:overload public function isBorderOpaque() : Bool;
	
	
}
@:native('com$sun$java$swing$plaf$gtk$GTKPainter$TitledBorder') @:internal extern class GTKPainter_TitledBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource
{
	@:overload public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function getBorderInsets(c : java.awt.Component, i : java.awt.Insets) : java.awt.Insets;
	
	@:overload public function isBorderOpaque() : Bool;
	
	
}
