package com.sun.java.swing.plaf.gtk;
/*
* Copyright (c) 2002, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class GTKLookAndFeel extends javax.swing.plaf.synth.SynthLookAndFeel
{
	@:overload @:public override public function getDefaults() : javax.swing.UIDefaults;
	
	@:overload @:protected override private function initComponentDefaults(table : javax.swing.UIDefaults) : Void;
	
	@:overload @:protected override private function initSystemColorDefaults(table : javax.swing.UIDefaults) : Void;
	
	/**
	* Creates the GTK look and feel class for the passed in Component.
	*/
	@:overload @:public @:static public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload @:public override public function initialize() : Void;
	
	@:overload @:public override public function isSupportedLookAndFeel() : Bool;
	
	@:overload @:public override public function isNativeLookAndFeel() : Bool;
	
	@:overload @:public override public function getDescription() : String;
	
	@:overload @:public override public function getName() : String;
	
	@:overload @:public override public function getID() : String;
	
	@:overload @:protected override private function loadSystemColors(table : javax.swing.UIDefaults, systemColors : java.NativeArray<String>, useNative : Bool) : Void;
	
	/**
	* Returns whether or not the UIs should update their
	* <code>SynthStyles</code> from the <code>SynthStyleFactory</code>
	* when the ancestor of the Component changes.
	*
	* @return whether or not the UIs should update their
	* <code>SynthStyles</code> from the <code>SynthStyleFactory</code>
	* when the ancestor changed.
	*/
	@:overload @:public override public function shouldUpdateStyleOnAncestorChanged() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function getLayoutStyle() : javax.swing.LayoutStyle;
	
	
}
@:native('com$sun$java$swing$plaf$gtk$GTKLookAndFeel$WeakPCL') @:internal extern class GTKLookAndFeel_WeakPCL extends java.lang.ref.WeakReference<com.sun.java.swing.plaf.gtk.GTKLookAndFeel> implements java.beans.PropertyChangeListener
{
	@:overload @:public public function getKey() : String;
	
	@:overload @:public public function propertyChange(pce : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* Gnome layout style.  From:
* http://developer.gnome.org/projects/gup/hig/2.0/design-window.html#window-layout-spacing
* You'll notice this doesn't do the radiobutton/checkbox border
* adjustments that windows/metal do.  This is because gtk doesn't
* provide margins/insets for checkbox/radiobuttons.
*/
@:native('com$sun$java$swing$plaf$gtk$GTKLookAndFeel$GnomeLayoutStyle') @:internal extern class GTKLookAndFeel_GnomeLayoutStyle extends sun.swing.DefaultLayoutStyle
{
	@:overload @:public override public function getPreferredGap(component1 : javax.swing.JComponent, component2 : javax.swing.JComponent, type : javax.swing.LayoutStyle.LayoutStyle_ComponentPlacement, position : Int, parent : java.awt.Container) : Int;
	
	@:overload @:public override public function getContainerGap(component : javax.swing.JComponent, position : Int, parent : java.awt.Container) : Int;
	
	
}
