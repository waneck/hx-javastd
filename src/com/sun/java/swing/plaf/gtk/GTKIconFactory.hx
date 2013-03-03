package com.sun.java.swing.plaf.gtk;
/*
* Copyright (c) 2002, 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class GTKIconFactory
{
	@:overload @:public @:static public static function getAscendingSortIcon() : javax.swing.Icon;
	
	@:overload @:public @:static public static function getDescendingSortIcon() : javax.swing.Icon;
	
	@:overload @:public @:static public static function getTreeExpandedIcon() : sun.swing.plaf.synth.SynthIcon;
	
	@:overload @:public @:static public static function getTreeCollapsedIcon() : sun.swing.plaf.synth.SynthIcon;
	
	@:overload @:public @:static public static function getRadioButtonIcon() : sun.swing.plaf.synth.SynthIcon;
	
	@:overload @:public @:static public static function getCheckBoxIcon() : sun.swing.plaf.synth.SynthIcon;
	
	@:overload @:public @:static public static function getMenuArrowIcon() : sun.swing.plaf.synth.SynthIcon;
	
	@:overload @:public @:static public static function getCheckBoxMenuItemCheckIcon() : sun.swing.plaf.synth.SynthIcon;
	
	@:overload @:public @:static public static function getRadioButtonMenuItemCheckIcon() : sun.swing.plaf.synth.SynthIcon;
	
	@:overload @:public @:static public static function getToolBarHandleIcon() : sun.swing.plaf.synth.SynthIcon;
	
	
}
@:native('com$sun$java$swing$plaf$gtk$GTKIconFactory$DelegatingIcon') @:internal extern class GTKIconFactory_DelegatingIcon extends sun.swing.plaf.synth.SynthIcon implements javax.swing.plaf.UIResource
{
	@:overload @:public override public function paintIcon(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload @:public override public function getIconWidth(context : javax.swing.plaf.synth.SynthContext) : Int;
	
	@:overload @:public override public function getIconHeight(context : javax.swing.plaf.synth.SynthContext) : Int;
	
	@:overload @:protected private function getMethod() : java.lang.reflect.Method;
	
	@:overload @:protected private function getMethodParamTypes() : java.NativeArray<Class<Dynamic>>;
	
	
}
@:native('com$sun$java$swing$plaf$gtk$GTKIconFactory$SynthExpanderIcon') @:internal extern class GTKIconFactory_SynthExpanderIcon extends com.sun.java.swing.plaf.gtk.GTKIconFactory.GTKIconFactory_DelegatingIcon
{
	@:overload @:public override public function paintIcon(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$gtk$GTKIconFactory$ToolBarHandleIcon') @:internal extern class GTKIconFactory_ToolBarHandleIcon extends com.sun.java.swing.plaf.gtk.GTKIconFactory.GTKIconFactory_DelegatingIcon
{
	@:overload @:public public function new() : Void;
	
	@:overload @:protected override private function getMethodParamTypes() : java.NativeArray<Class<Dynamic>>;
	
	@:overload @:public override public function paintIcon(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload @:public override public function getIconWidth(context : javax.swing.plaf.synth.SynthContext) : Int;
	
	@:overload @:public override public function getIconHeight(context : javax.swing.plaf.synth.SynthContext) : Int;
	
	
}
@:native('com$sun$java$swing$plaf$gtk$GTKIconFactory$MenuArrowIcon') @:internal extern class GTKIconFactory_MenuArrowIcon extends com.sun.java.swing.plaf.gtk.GTKIconFactory.GTKIconFactory_DelegatingIcon
{
	@:overload @:public public function new() : Void;
	
	@:overload @:protected override private function getMethodParamTypes() : java.NativeArray<Class<Dynamic>>;
	
	@:overload @:public override public function paintIcon(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	
}
