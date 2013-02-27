package sun.print;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class ServiceDialog extends javax.swing.JDialog implements java.awt.event.ActionListener
{
	/**
	* Waiting print status (user response pending).
	*/
	public static var WAITING(default, null) : Int;
	
	/**
	* Approve print status (user activated "Print" or "OK").
	*/
	public static var APPROVE(default, null) : Int;
	
	/**
	* Cancel print status (user activated "Cancel");
	*/
	public static var CANCEL(default, null) : Int;
	
	/**
	* Constructor for the "standard" print dialog (containing all relevant
	* tabs)
	*/
	@:overload public function new(gc : java.awt.GraphicsConfiguration, x : Int, y : Int, services : java.NativeArray<javax.print.PrintService>, defaultServiceIndex : Int, flavor : javax.print.DocFlavor, attributes : javax.print.attribute.PrintRequestAttributeSet, dialog : java.awt.Dialog) : Void;
	
	/**
	* Constructor for the "standard" print dialog (containing all relevant
	* tabs)
	*/
	@:overload public function new(gc : java.awt.GraphicsConfiguration, x : Int, y : Int, services : java.NativeArray<javax.print.PrintService>, defaultServiceIndex : Int, flavor : javax.print.DocFlavor, attributes : javax.print.attribute.PrintRequestAttributeSet, frame : java.awt.Frame) : Void;
	
	/**
	* Constructor for the solitary "page setup" dialog
	*/
	@:overload public function new(gc : java.awt.GraphicsConfiguration, x : Int, y : Int, ps : javax.print.PrintService, flavor : javax.print.DocFlavor, attributes : javax.print.attribute.PrintRequestAttributeSet, dialog : java.awt.Dialog) : Void;
	
	/**
	* Constructor for the solitary "page setup" dialog
	*/
	@:overload public function new(gc : java.awt.GraphicsConfiguration, x : Int, y : Int, ps : javax.print.PrintService, flavor : javax.print.DocFlavor, attributes : javax.print.attribute.PrintRequestAttributeSet, frame : java.awt.Frame) : Void;
	
	/**
	* Returns the current status of the dialog (whether the user has selected
	* the "Print" or "Cancel" button)
	*/
	@:overload public function getStatus() : Int;
	
	/**
	* Returns an AttributeSet based on whether or not the user cancelled the
	* dialog.  If the user selected "Print" we return their new selections,
	* otherwise we return the attributes that were passed in initially.
	*/
	@:overload public function getAttributes() : javax.print.attribute.PrintRequestAttributeSet;
	
	/**
	* Returns a PrintService based on whether or not the user cancelled the
	* dialog.  If the user selected "Print" we return the user's selection
	* for the PrintService, otherwise we return null.
	*/
	@:overload public function getPrintService() : javax.print.PrintService;
	
	/**
	* Sets the current status flag for the dialog and disposes it (thus
	* returning control of the parent frame back to the user)
	*/
	@:overload public function dispose(status : Int) : Void;
	
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	/**
	* Initialize ResourceBundle
	*/
	@:overload public static function initResource() : Void;
	
	/**
	* Returns message string from resource
	*/
	@:overload public static function getMsg(key : String) : String;
	
	/**
	* Creates a  pop-up dialog for "no print service"
	*/
	@:overload public static function showNoPrintService(gc : java.awt.GraphicsConfiguration) : Void;
	
	
}
/**
* The "General" tab.  Includes the controls for PrintService,
* PageRange, and Copies/Collate.
*/
@:native('sun$print$ServiceDialog$GeneralPanel') @:internal extern class ServiceDialog_GeneralPanel extends javax.swing.JPanel
{
	@:overload public function new() : Void;
	
	@:overload public function isPrintToFileRequested() : Bool;
	
	@:overload public function updateInfo() : Void;
	
	
}
@:native('sun$print$ServiceDialog$PrintServicePanel') @:internal extern class ServiceDialog_PrintServicePanel extends javax.swing.JPanel implements java.awt.event.ActionListener implements java.awt.event.ItemListener implements javax.swing.event.PopupMenuListener
{
	@:overload public function new() : Void;
	
	@:overload public function isPrintToFileSelected() : Bool;
	
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload public function itemStateChanged(e : java.awt.event.ItemEvent) : Void;
	
	@:overload public function popupMenuWillBecomeVisible(e : javax.swing.event.PopupMenuEvent) : Void;
	
	@:overload public function popupMenuWillBecomeInvisible(e : javax.swing.event.PopupMenuEvent) : Void;
	
	@:overload public function popupMenuCanceled(e : javax.swing.event.PopupMenuEvent) : Void;
	
	@:overload public function updateInfo() : Void;
	
	
}
@:native('sun$print$ServiceDialog$PrintRangePanel') @:internal extern class ServiceDialog_PrintRangePanel extends javax.swing.JPanel implements java.awt.event.ActionListener implements java.awt.event.FocusListener
{
	@:overload public function new() : Void;
	
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	@:overload public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload public function updateInfo() : Void;
	
	
}
@:native('sun$print$ServiceDialog$CopiesPanel') @:internal extern class ServiceDialog_CopiesPanel extends javax.swing.JPanel implements java.awt.event.ActionListener implements javax.swing.event.ChangeListener
{
	@:overload public function new() : Void;
	
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	@:overload public function updateInfo() : Void;
	
	
}
/**
* The "Page Setup" tab.  Includes the controls for MediaSource/MediaTray,
* OrientationRequested, and Sides.
*/
@:native('sun$print$ServiceDialog$PageSetupPanel') @:internal extern class ServiceDialog_PageSetupPanel extends javax.swing.JPanel
{
	@:overload public function new() : Void;
	
	@:overload public function updateInfo() : Void;
	
	
}
@:native('sun$print$ServiceDialog$MarginsPanel') @:internal extern class ServiceDialog_MarginsPanel extends javax.swing.JPanel implements java.awt.event.ActionListener implements java.awt.event.FocusListener
{
	@:overload public function new() : Void;
	
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	@:overload public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	/* Get the numbers, use to create a MPA.
	* If its valid, accept it and update the attribute set.
	* If its not valid, then reject it and call updateInfo()
	* to re-establish the previous entries.
	*/
	@:overload public function updateMargins(source : Dynamic) : Void;
	
	/* This is complex as a MediaPrintableArea is valid only within
	* a particular context of media size.
	* So we need a MediaSize as well as a MediaPrintableArea.
	* MediaSize can be obtained from MediaSizeName.
	* If the application specifies a MediaPrintableArea, we accept it
	* to the extent its valid for the Media they specify. If they
	* don't specify a Media, then the default is assumed.
	*
	* If an application doesn't define a MediaPrintableArea, we need to
	* create a suitable one, this is created using the specified (or
	* default) Media and default 1 inch margins. This is validated
	* against the paper in case this is too large for tiny media.
	*/
	@:overload public function updateInfo() : Void;
	
	
}
@:native('sun$print$ServiceDialog$MediaPanel') @:internal extern class ServiceDialog_MediaPanel extends javax.swing.JPanel implements java.awt.event.ItemListener
{
	@:overload public function new() : Void;
	
	@:overload public function itemStateChanged(e : java.awt.event.ItemEvent) : Void;
	
	/* this is ad hoc to keep things simple */
	@:overload public function addMediaListener(pnl : ServiceDialog_MarginsPanel) : Void;
	
	@:overload public function updateInfo() : Void;
	
	
}
@:native('sun$print$ServiceDialog$OrientationPanel') @:internal extern class ServiceDialog_OrientationPanel extends javax.swing.JPanel implements java.awt.event.ActionListener
{
	@:overload public function new() : Void;
	
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload public function updateInfo() : Void;
	
	
}
/**
* The "Appearance" tab.  Includes the controls for Chromaticity,
* PrintQuality, JobPriority, JobName, and other related job attributes.
*/
@:native('sun$print$ServiceDialog$AppearancePanel') @:internal extern class ServiceDialog_AppearancePanel extends javax.swing.JPanel
{
	@:overload public function new() : Void;
	
	@:overload public function updateInfo() : Void;
	
	
}
@:native('sun$print$ServiceDialog$ChromaticityPanel') @:internal extern class ServiceDialog_ChromaticityPanel extends javax.swing.JPanel implements java.awt.event.ActionListener
{
	@:overload public function new() : Void;
	
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload public function updateInfo() : Void;
	
	
}
@:native('sun$print$ServiceDialog$QualityPanel') @:internal extern class ServiceDialog_QualityPanel extends javax.swing.JPanel implements java.awt.event.ActionListener
{
	@:overload public function new() : Void;
	
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload public function updateInfo() : Void;
	
	
}
@:native('sun$print$ServiceDialog$SidesPanel') @:internal extern class ServiceDialog_SidesPanel extends javax.swing.JPanel implements java.awt.event.ActionListener
{
	@:overload public function new() : Void;
	
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload public function updateInfo() : Void;
	
	
}
@:native('sun$print$ServiceDialog$JobAttributesPanel') @:internal extern class ServiceDialog_JobAttributesPanel extends javax.swing.JPanel implements java.awt.event.ActionListener implements javax.swing.event.ChangeListener implements java.awt.event.FocusListener
{
	@:overload public function new() : Void;
	
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	@:overload public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	@:overload public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload public function updateInfo() : Void;
	
	
}
/**
* A special widget that groups a JRadioButton with an associated icon,
* placed to the left of the radio button.
*/
@:native('sun$print$ServiceDialog$IconRadioButton') @:internal extern class ServiceDialog_IconRadioButton extends javax.swing.JPanel
{
	@:overload public function new(key : String, img : String, selected : Bool, bg : javax.swing.ButtonGroup, al : java.awt.event.ActionListener) : Void;
	
	@:overload public function addActionListener(al : java.awt.event.ActionListener) : Void;
	
	@:overload public function isSameAs(source : Dynamic) : Bool;
	
	@:overload override public function setEnabled(enabled : Bool) : Void;
	
	@:overload public function isSelected() : Bool;
	
	@:overload public function setSelected(selected : Bool) : Void;
	
	
}
/**
* Similar in functionality to the default JFileChooser, except this
* chooser will pop up a "Do you want to overwrite..." dialog if the
* user selects a file that already exists.
*/
@:native('sun$print$ServiceDialog$ValidatingFileChooser') @:internal extern class ServiceDialog_ValidatingFileChooser extends javax.swing.JFileChooser
{
	@:overload override public function approveSelection() : Void;
	
	
}
