package javax.swing.plaf.synth;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class SynthSplitPaneDivider extends javax.swing.plaf.basic.BasicSplitPaneDivider
{
	/**
	* Synth's SplitPaneDivider.
	*
	* @author Scott Violet
	*/
	@:overload @:public public function new(ui : javax.swing.plaf.basic.BasicSplitPaneUI) : Void;
	
	@:overload @:protected override private function setMouseOver(mouseOver : Bool) : Void;
	
	@:overload @:public override public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload @:public override public function paint(g : java.awt.Graphics) : Void;
	
	/**
	* Creates and return an instance of JButton that can be used to
	* collapse the left component in the split pane.
	*/
	@:overload @:protected override private function createLeftOneTouchButton() : javax.swing.JButton;
	
	/**
	* Creates and return an instance of JButton that can be used to
	* collapse the right component in the split pane.
	*/
	@:overload @:protected override private function createRightOneTouchButton() : javax.swing.JButton;
	
	
}
