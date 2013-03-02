package javax.swing.plaf.synth;
/*
* Copyright (c) 2002, 2008, Oracle and/or its affiliates. All rights reserved.
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
* Calculates preferred size and layouts synth menu items.
*
* All JMenuItems (and JMenus) include enough space for the insets
* plus one or more elements.  When we say "label" below, we mean
* "icon and/or text."
*
* Cases to consider for SynthMenuItemUI (visualized here in a
* LTR orientation; the RTL case would be reversed):
*                   label
*      check icon + label
*      check icon + label + accelerator
*                   label + accelerator
*
* Cases to consider for SynthMenuUI (again visualized here in a
* LTR orientation):
*                   label + arrow
*
* Note that in the above scenarios, accelerator and arrow icon are
* mutually exclusive.  This means that if a popup menu contains a mix
* of JMenus and JMenuItems, we only need to allow enough space for
* max(maxAccelerator, maxArrow), and both accelerators and arrow icons
* can occupy the same "column" of space in the menu.
*/
@:internal extern class SynthMenuItemLayoutHelper extends sun.swing.MenuItemLayoutHelper
{
	public static var MAX_ACC_OR_ARROW_WIDTH(default, null) : sun.swing.StringUIClientPropertyKey;
	
	public static var LTR_ALIGNMENT_1(default, null) : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_ColumnAlignment;
	
	public static var LTR_ALIGNMENT_2(default, null) : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_ColumnAlignment;
	
	public static var RTL_ALIGNMENT_1(default, null) : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_ColumnAlignment;
	
	public static var RTL_ALIGNMENT_2(default, null) : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_ColumnAlignment;
	
	@:overload public function new(context : javax.swing.plaf.synth.SynthContext, accContext : javax.swing.plaf.synth.SynthContext, mi : javax.swing.JMenuItem, checkIcon : javax.swing.Icon, arrowIcon : javax.swing.Icon, viewRect : java.awt.Rectangle, gap : Int, accDelimiter : String, isLeftToRight : Bool, useCheckAndArrow : Bool, propertyPrefix : String) : Void;
	
	@:overload override private function calcWidthsAndHeights() : Void;
	
	@:overload override private function calcMaxWidths() : Void;
	
	@:overload public function getContext() : javax.swing.plaf.synth.SynthContext;
	
	@:overload public function getAccContext() : javax.swing.plaf.synth.SynthContext;
	
	@:overload public function getStyle() : javax.swing.plaf.synth.SynthStyle;
	
	@:overload public function getAccStyle() : javax.swing.plaf.synth.SynthStyle;
	
	@:overload public function getGraphicsUtils() : javax.swing.plaf.synth.SynthGraphicsUtils;
	
	@:overload public function getAccGraphicsUtils() : javax.swing.plaf.synth.SynthGraphicsUtils;
	
	@:overload public function alignAcceleratorText() : Bool;
	
	@:overload public function getMaxAccOrArrowWidth() : Int;
	
	@:overload override private function prepareForLayout(lr : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_LayoutResult) : Void;
	
	@:overload override public function getLTRColumnAlignment() : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_ColumnAlignment;
	
	@:overload override public function getRTLColumnAlignment() : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_ColumnAlignment;
	
	@:overload override private function layoutIconAndTextInLabelRect(lr : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_LayoutResult) : Void;
	
	
}
