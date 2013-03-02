package com.sun.java.swing.plaf.motif;
/*
* Copyright (c) 1997, 2004, Oracle and/or its affiliates. All rights reserved.
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
* A Motif L&F implementation of InternalFrame.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases.  The current serialization support is appropriate
* for short term storage or RMI between applications running the same
* version of Swing.  A future release of Swing will provide support for
* long term persistence.
*
* @author Tom Ball
*/
extern class MotifInternalFrameUI extends javax.swing.plaf.basic.BasicInternalFrameUI
{
	/**
	* As of Java 2 platform v1.3 this previously undocumented field is no
	* longer used.
	* Key bindings are now defined by the LookAndFeel, please refer to
	* the key bindings specification for further details.
	*
	* @deprecated As of Java 2 platform v1.3.
	*/
	private var closeMenuKey : javax.swing.KeyStroke;
	
	@:overload public static function createUI(w : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload public function new(w : javax.swing.JInternalFrame) : Void;
	
	@:overload public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload private function installDefaults() : Void;
	
	@:overload private function installKeyboardActions() : Void;
	
	@:overload private function uninstallDefaults() : Void;
	
	@:overload public function createNorthPane(w : javax.swing.JInternalFrame) : javax.swing.JComponent;
	
	@:overload public function getMaximumSize(x : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload private function uninstallKeyboardActions() : Void;
	
	@:overload private function setupMenuOpenKey() : Void;
	
	@:overload private function setupMenuCloseKey() : Void;
	
	/** This method is called when the frame becomes selected.
	*/
	@:overload private function activateFrame(f : javax.swing.JInternalFrame) : Void;
	
	/** This method is called when the frame is no longer selected.
	*/
	@:overload private function deactivateFrame(f : javax.swing.JInternalFrame) : Void;
	
	
}
