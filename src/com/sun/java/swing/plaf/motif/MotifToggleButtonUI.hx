package com.sun.java.swing.plaf.motif;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
* BasicToggleButton implementation
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases.  The current serialization support is appropriate
* for short term storage or RMI between applications running the same
* version of Swing.  A future release of Swing will provide support for
* long term persistence.
*
* @author Rich Schiavi
*/
extern class MotifToggleButtonUI extends javax.swing.plaf.basic.BasicToggleButtonUI
{
	@:protected private var selectColor : java.awt.Color;
	
	@:overload @:public @:static public static function createUI(b : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload @:public override public function installDefaults(b : javax.swing.AbstractButton) : Void;
	
	@:overload @:protected override private function uninstallDefaults(b : javax.swing.AbstractButton) : Void;
	
	@:overload @:protected private function getSelectColor() : java.awt.Color;
	
	@:overload @:protected override private function paintButtonPressed(g : java.awt.Graphics, b : javax.swing.AbstractButton) : Void;
	
	@:overload @:public public function getInsets(c : javax.swing.JComponent) : java.awt.Insets;
	
	
}
