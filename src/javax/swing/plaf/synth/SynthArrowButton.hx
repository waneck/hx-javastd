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
@:internal extern class SynthArrowButton extends javax.swing.JButton implements javax.swing.SwingConstants implements javax.swing.plaf.UIResource
{
	@:overload public function new(direction : Int) : Void;
	
	@:overload public function getUIClassID() : String;
	
	@:overload public function updateUI() : Void;
	
	@:overload public function setDirection(dir : Int) : Void;
	
	@:overload public function getDirection() : Int;
	
	@:overload public function setFocusable(focusable : Bool) : Void;
	
	
}
@:native('javax$swing$plaf$synth$SynthArrowButton$SynthArrowButtonUI') @:internal extern class SynthArrowButton_SynthArrowButtonUI extends javax.swing.plaf.synth.SynthButtonUI
{
	@:overload override private function installDefaults(b : javax.swing.AbstractButton) : Void;
	
	@:overload override private function paint(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics) : Void;
	
	@:overload override public function paintBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function getMinimumSize() : java.awt.Dimension;
	
	@:overload public function getMaximumSize() : java.awt.Dimension;
	
	@:overload override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	
}
