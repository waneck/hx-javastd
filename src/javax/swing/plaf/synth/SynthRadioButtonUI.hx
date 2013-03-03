package javax.swing.plaf.synth;
/*
* Copyright (c) 2002, 2004, Oracle and/or its affiliates. All rights reserved.
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
* Provides the Synth L&F UI delegate for
* {@link javax.swing.JRadioButton}.
*
* @author Jeff Dinkins
* @since 1.7
*/
@:require(java7) extern class SynthRadioButtonUI extends javax.swing.plaf.synth.SynthToggleButtonUI
{
	/**
	* Creates a new UI object for the given component.
	*
	* @param b component to create UI object for
	* @return the UI object
	*/
	@:overload @:public @:static public static function createUI(b : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function getPropertyPrefix() : String;
	
	/**
	* Returns the Icon used in calculating the
	* preferred/minimum/maximum size.
	*/
	@:overload @:protected override private function getSizingIcon(b : javax.swing.AbstractButton) : javax.swing.Icon;
	
	/**
	* @inheritDoc
	*/
	@:overload @:public override public function paintBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	
}
