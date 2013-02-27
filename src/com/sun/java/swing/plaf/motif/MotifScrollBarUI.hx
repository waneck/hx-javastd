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
extern class MotifScrollBarUI extends javax.swing.plaf.basic.BasicScrollBarUI
{
	/**
	* Implementation of ScrollBarUI for the Motif Look and Feel
	* <p>
	* <strong>Warning:</strong>
	* Serialized objects of this class will not be compatible with
	* future Swing releases.  The current serialization support is appropriate
	* for short term storage or RMI between applications running the same
	* version of Swing.  A future release of Swing will provide support for
	* long term persistence.
	*
	* @author Rich Schiavi
	* @author Hans Muller
	*/
	@:native('createUI') @:overload public static function _createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload override private function createDecreaseButton(orientation : Int) : javax.swing.JButton;
	
	@:overload override private function createIncreaseButton(orientation : Int) : javax.swing.JButton;
	
	@:overload override public function paintTrack(g : java.awt.Graphics, c : javax.swing.JComponent, trackBounds : java.awt.Rectangle) : Void;
	
	@:overload override public function paintThumb(g : java.awt.Graphics, c : javax.swing.JComponent, thumbBounds : java.awt.Rectangle) : Void;
	
	
}
