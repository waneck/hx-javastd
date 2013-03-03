package javax.swing.plaf.metal;
/*
* Copyright (c) 1998, 2009, Oracle and/or its affiliates. All rights reserved.
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
* Metal implementation of JInternalFrame.
* <p>
*
* @author Steve Wilson
*/
extern class MetalInternalFrameUI extends javax.swing.plaf.basic.BasicInternalFrameUI
{
	@:protected @:static private static var IS_PALETTE : String;
	
	@:overload @:public public function new(b : javax.swing.JInternalFrame) : Void;
	
	@:overload @:public @:static public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload @:public override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:public override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:protected override private function installListeners() : Void;
	
	@:overload @:protected override private function uninstallListeners() : Void;
	
	@:overload @:protected override private function installKeyboardActions() : Void;
	
	@:overload @:protected override private function uninstallKeyboardActions() : Void;
	
	@:overload @:protected override private function uninstallComponents() : Void;
	
	@:overload @:protected override private function createNorthPane(w : javax.swing.JInternalFrame) : javax.swing.JComponent;
	
	@:overload @:public public function setPalette(isPalette : Bool) : Void;
	
	/**
	* Returns the <code>MouseInputAdapter</code> that will be installed
	* on the TitlePane.
	*
	* @param w the <code>JInternalFrame</code>
	* @return the <code>MouseInputAdapter</code> that will be installed
	* on the TitlePane.
	* @since 1.6
	*/
	@:require(java6) @:overload @:protected override private function createBorderListener(w : javax.swing.JInternalFrame) : javax.swing.event.MouseInputAdapter;
	
	
}
@:native('javax$swing$plaf$metal$MetalInternalFrameUI$MetalPropertyChangeHandler') @:internal extern class MetalInternalFrameUI_MetalPropertyChangeHandler implements java.beans.PropertyChangeListener
{
	@:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
@:native('javax$swing$plaf$metal$MetalInternalFrameUI$BorderListener1') @:internal extern class MetalInternalFrameUI_BorderListener1 extends javax.swing.plaf.basic.BasicInternalFrameUI.BasicInternalFrameUI_BorderListener implements javax.swing.SwingConstants
{
	@:overload @:public override public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	
}
