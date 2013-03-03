package javax.swing.plaf.basic;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class BasicColorChooserUI extends javax.swing.plaf.ColorChooserUI
{
	/**
	* JColorChooser this BasicColorChooserUI is installed on.
	*
	* @since 1.5
	*/
	@:require(java5) @:protected private var chooser : javax.swing.JColorChooser;
	
	@:protected private var defaultChoosers : java.NativeArray<javax.swing.colorchooser.AbstractColorChooserPanel>;
	
	@:protected private var previewListener : javax.swing.event.ChangeListener;
	
	@:protected private var propertyChangeListener : java.beans.PropertyChangeListener;
	
	@:overload @:public @:static public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload @:protected private function createDefaultChoosers() : java.NativeArray<javax.swing.colorchooser.AbstractColorChooserPanel>;
	
	@:overload @:protected private function uninstallDefaultChoosers() : Void;
	
	@:overload @:public override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:public override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:protected private function installPreviewPanel() : Void;
	
	/**
	* Removes installed preview panel from the UI delegate.
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:protected private function uninstallPreviewPanel() : Void;
	
	@:overload @:protected private function installDefaults() : Void;
	
	@:overload @:protected private function uninstallDefaults() : Void;
	
	@:overload @:protected private function installListeners() : Void;
	
	@:overload @:protected private function createPropertyChangeListener() : java.beans.PropertyChangeListener;
	
	@:overload @:protected private function uninstallListeners() : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicColorChooserUI$Handler') @:internal extern class BasicColorChooserUI_Handler implements javax.swing.event.ChangeListener implements java.awt.event.MouseListener implements java.beans.PropertyChangeListener
{
	@:overload @:public public function stateChanged(evt : javax.swing.event.ChangeEvent) : Void;
	
	@:overload @:public public function mousePressed(evt : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseReleased(evt : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseClicked(evt : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseEntered(evt : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseExited(evt : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of {@code BasicColorChooserUI}.
*/
@:native('javax$swing$plaf$basic$BasicColorChooserUI$PropertyHandler') extern class BasicColorChooserUI_PropertyHandler implements java.beans.PropertyChangeListener
{
	@:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicColorChooserUI$ColorTransferHandler') @:internal extern class BasicColorChooserUI_ColorTransferHandler extends javax.swing.TransferHandler implements javax.swing.plaf.UIResource
{
	
}
