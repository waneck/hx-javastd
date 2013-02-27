package sun.swing.plaf.synth;
/*
* Copyright (c) 2002, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class SynthFileChooserUI extends javax.swing.plaf.basic.BasicFileChooserUI implements javax.swing.plaf.synth.SynthUI
{
	@:native('createUI') @:overload public static function _createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload public function new(b : javax.swing.JFileChooser) : Void;
	
	@:overload public function getContext(c : javax.swing.JComponent) : javax.swing.plaf.synth.SynthContext;
	
	@:overload private function getContext(c : javax.swing.JComponent, state : Int) : javax.swing.plaf.synth.SynthContext;
	
	@:overload override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload override public function installComponents(fc : javax.swing.JFileChooser) : Void;
	
	@:overload override public function uninstallComponents(fc : javax.swing.JFileChooser) : Void;
	
	@:overload override private function installListeners(fc : javax.swing.JFileChooser) : Void;
	
	@:overload @:abstract override private function createActionMap() : javax.swing.ActionMap;
	
	@:overload override private function installDefaults(fc : javax.swing.JFileChooser) : Void;
	
	@:overload override private function uninstallDefaults(fc : javax.swing.JFileChooser) : Void;
	
	@:overload override private function installIcons(fc : javax.swing.JFileChooser) : Void;
	
	@:overload override public function update(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	@:overload public function paintBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	@:overload private function paint(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics) : Void;
	
	@:overload @:abstract override public function setFileName(fileName : String) : Void;
	
	@:overload @:abstract override public function getFileName() : String;
	
	@:overload private function doSelectedFileChanged(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload private function doSelectedFilesChanged(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload private function doDirectoryChanged(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload private function doAccessoryChanged(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload private function doFileSelectionModeChanged(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload private function doMultiSelectionChanged(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload private function doControlButtonsChanged(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload private function doAncestorChanged(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload override public function createPropertyChangeListener(fc : javax.swing.JFileChooser) : java.beans.PropertyChangeListener;
	
	@:overload public function getFileNameCompletionAction() : javax.swing.Action;
	
	@:overload override private function getApproveButton(fc : javax.swing.JFileChooser) : javax.swing.JButton;
	
	@:overload private function getCancelButton(fc : javax.swing.JFileChooser) : javax.swing.JButton;
	
	@:overload override public function clearIconCache() : Void;
	
	
}
@:native('sun$swing$plaf$synth$SynthFileChooserUI$DelayedSelectionUpdater') @:internal extern class SynthFileChooserUI_DelayedSelectionUpdater implements java.lang.Runnable
{
	@:overload public function run() : Void;
	
	
}
@:native('sun$swing$plaf$synth$SynthFileChooserUI$SynthFCPropertyChangeListener') @:internal extern class SynthFileChooserUI_SynthFCPropertyChangeListener implements java.beans.PropertyChangeListener
{
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* Responds to a File Name completion request (e.g. Tab)
*/
@:native('sun$swing$plaf$synth$SynthFileChooserUI$FileNameCompletionAction') @:internal extern class SynthFileChooserUI_FileNameCompletionAction extends javax.swing.AbstractAction
{
	@:overload private function new() : Void;
	
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/* A file filter which accepts file patterns containing
* the special wildcard '*' on windows, plus '?', and '[ ]' on Unix.
*/
@:native('sun$swing$plaf$synth$SynthFileChooserUI$GlobFilter') @:internal extern class SynthFileChooserUI_GlobFilter extends javax.swing.filechooser.FileFilter
{
	@:overload public function setPattern(globPattern : String) : Void;
	
	@:overload override public function accept(f : java.io.File) : Bool;
	
	@:overload override public function getDescription() : String;
	
	
}
@:native('sun$swing$plaf$synth$SynthFileChooserUI$UIBorder') @:internal extern class SynthFileChooserUI_UIBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource
{
	@:overload override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	@:overload override public function isBorderOpaque() : Bool;
	
	
}
