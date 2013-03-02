package javax.swing;
/*
* Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class JColorChooser extends javax.swing.JComponent implements javax.accessibility.Accessible
{
	/**
	* The selection model property name.
	*/
	public static var SELECTION_MODEL_PROPERTY(default, null) : String;
	
	/**
	* The preview panel property name.
	*/
	public static var PREVIEW_PANEL_PROPERTY(default, null) : String;
	
	/**
	* The chooserPanel array property name.
	*/
	public static var CHOOSER_PANELS_PROPERTY(default, null) : String;
	
	/**
	* Shows a modal color-chooser dialog and blocks until the
	* dialog is hidden.  If the user presses the "OK" button, then
	* this method hides/disposes the dialog and returns the selected color.
	* If the user presses the "Cancel" button or closes the dialog without
	* pressing "OK", then this method hides/disposes the dialog and returns
	* <code>null</code>.
	*
	* @param component    the parent <code>Component</code> for the dialog
	* @param title        the String containing the dialog's title
	* @param initialColor the initial Color set when the color-chooser is shown
	* @return the selected color or <code>null</code> if the user opted out
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public static function showDialog(component : java.awt.Component, title : String, initialColor : java.awt.Color) : java.awt.Color;
	
	/**
	* Creates and returns a new dialog containing the specified
	* <code>ColorChooser</code> pane along with "OK", "Cancel", and "Reset"
	* buttons. If the "OK" or "Cancel" buttons are pressed, the dialog is
	* automatically hidden (but not disposed).  If the "Reset"
	* button is pressed, the color-chooser's color will be reset to the
	* color which was set the last time <code>show</code> was invoked on the
	* dialog and the dialog will remain showing.
	*
	* @param c              the parent component for the dialog
	* @param title          the title for the dialog
	* @param modal          a boolean. When true, the remainder of the program
	*                       is inactive until the dialog is closed.
	* @param chooserPane    the color-chooser to be placed inside the dialog
	* @param okListener     the ActionListener invoked when "OK" is pressed
	* @param cancelListener the ActionListener invoked when "Cancel" is pressed
	* @return a new dialog containing the color-chooser pane
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public static function createDialog(c : java.awt.Component, title : String, modal : Bool, chooserPane : javax.swing.JColorChooser, okListener : java.awt.event.ActionListener, cancelListener : java.awt.event.ActionListener) : javax.swing.JDialog;
	
	/**
	* Creates a color chooser pane with an initial color of white.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a color chooser pane with the specified initial color.
	*
	* @param initialColor the initial color set in the chooser
	*/
	@:overload public function new(initialColor : java.awt.Color) : Void;
	
	/**
	* Creates a color chooser pane with the specified
	* <code>ColorSelectionModel</code>.
	*
	* @param model the <code>ColorSelectionModel</code> to be used
	*/
	@:overload public function new(model : javax.swing.colorchooser.ColorSelectionModel) : Void;
	
	/**
	* Returns the L&F object that renders this component.
	*
	* @return the <code>ColorChooserUI</code> object that renders
	*          this component
	*/
	@:overload public function getUI() : javax.swing.plaf.ColorChooserUI;
	
	/**
	* Sets the L&F object that renders this component.
	*
	* @param ui  the <code>ColorChooserUI</code> L&F object
	* @see UIDefaults#getUI
	*
	* @beaninfo
	*       bound: true
	*      hidden: true
	* description: The UI object that implements the color chooser's LookAndFeel.
	*/
	@:overload public function setUI(ui : javax.swing.plaf.ColorChooserUI) : Void;
	
	/**
	* Notification from the <code>UIManager</code> that the L&F has changed.
	* Replaces the current UI object with the latest version from the
	* <code>UIManager</code>.
	*
	* @see JComponent#updateUI
	*/
	@:overload public function updateUI() : Void;
	
	/**
	* Returns the name of the L&F class that renders this component.
	*
	* @return the string "ColorChooserUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*/
	@:overload public function getUIClassID() : String;
	
	/**
	* Gets the current color value from the color chooser.
	* By default, this delegates to the model.
	*
	* @return the current color value of the color chooser
	*/
	@:overload public function getColor() : java.awt.Color;
	
	/**
	* Sets the current color of the color chooser to the specified color.
	* The <code>ColorSelectionModel</code> will fire a <code>ChangeEvent</code>
	* @param color the color to be set in the color chooser
	* @see JComponent#addPropertyChangeListener
	*
	* @beaninfo
	*       bound: false
	*      hidden: false
	* description: The current color the chooser is to display.
	*/
	@:overload public function setColor(color : java.awt.Color) : Void;
	
	/**
	* Sets the current color of the color chooser to the
	* specified RGB color.  Note that the values of red, green,
	* and blue should be between the numbers 0 and 255, inclusive.
	*
	* @param r   an int specifying the amount of Red
	* @param g   an int specifying the amount of Green
	* @param b   an int specifying the amount of Blue
	* @exception IllegalArgumentException if r,g,b values are out of range
	* @see java.awt.Color
	*/
	@:overload public function setColor(r : Int, g : Int, b : Int) : Void;
	
	/**
	* Sets the current color of the color chooser to the
	* specified color.
	*
	* @param c an integer value that sets the current color in the chooser
	*          where the low-order 8 bits specify the Blue value,
	*          the next 8 bits specify the Green value, and the 8 bits
	*          above that specify the Red value.
	*/
	@:overload public function setColor(c : Int) : Void;
	
	/**
	* Sets the <code>dragEnabled</code> property,
	* which must be <code>true</code> to enable
	* automatic drag handling (the first part of drag and drop)
	* on this component.
	* The <code>transferHandler</code> property needs to be set
	* to a non-<code>null</code> value for the drag to do
	* anything.  The default value of the <code>dragEnabled</code>
	* property
	* is <code>false</code>.
	*
	* <p>
	*
	* When automatic drag handling is enabled,
	* most look and feels begin a drag-and-drop operation
	* when the user presses the mouse button over the preview panel.
	* Some look and feels might not support automatic drag and drop;
	* they will ignore this property.  You can work around such
	* look and feels by modifying the component
	* to directly call the <code>exportAsDrag</code> method of a
	* <code>TransferHandler</code>.
	*
	* @param b the value to set the <code>dragEnabled</code> property to
	* @exception HeadlessException if
	*            <code>b</code> is <code>true</code> and
	*            <code>GraphicsEnvironment.isHeadless()</code>
	*            returns <code>true</code>
	*
	* @since 1.4
	*
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @see #getDragEnabled
	* @see #setTransferHandler
	* @see TransferHandler
	*
	* @beaninfo
	*  description: Determines whether automatic drag handling is enabled.
	*        bound: false
	*/
	@:require(java4) @:overload public function setDragEnabled(b : Bool) : Void;
	
	/**
	* Gets the value of the <code>dragEnabled</code> property.
	*
	* @return  the value of the <code>dragEnabled</code> property
	* @see #setDragEnabled
	* @since 1.4
	*/
	@:require(java4) @:overload public function getDragEnabled() : Bool;
	
	/**
	* Sets the current preview panel.
	* This will fire a <code>PropertyChangeEvent</code> for the property
	* named "previewPanel".
	*
	* @param preview the <code>JComponent</code> which displays the current color
	* @see JComponent#addPropertyChangeListener
	*
	* @beaninfo
	*       bound: true
	*      hidden: true
	* description: The UI component which displays the current color.
	*/
	@:overload public function setPreviewPanel(preview : javax.swing.JComponent) : Void;
	
	/**
	* Returns the preview panel that shows a chosen color.
	*
	* @return a <code>JComponent</code> object -- the preview panel
	*/
	@:overload public function getPreviewPanel() : javax.swing.JComponent;
	
	/**
	* Adds a color chooser panel to the color chooser.
	*
	* @param panel the <code>AbstractColorChooserPanel</code> to be added
	*/
	@:overload public function addChooserPanel(panel : javax.swing.colorchooser.AbstractColorChooserPanel) : Void;
	
	/**
	* Removes the Color Panel specified.
	*
	* @param panel   a string that specifies the panel to be removed
	* @return the color panel
	* @exception IllegalArgumentException if panel is not in list of
	*                  known chooser panels
	*/
	@:overload public function removeChooserPanel(panel : javax.swing.colorchooser.AbstractColorChooserPanel) : javax.swing.colorchooser.AbstractColorChooserPanel;
	
	/**
	* Specifies the Color Panels used to choose a color value.
	*
	* @param panels  an array of <code>AbstractColorChooserPanel</code>
	*          objects
	*
	* @beaninfo
	*       bound: true
	*      hidden: true
	* description: An array of different chooser types.
	*/
	@:overload public function setChooserPanels(panels : java.NativeArray<javax.swing.colorchooser.AbstractColorChooserPanel>) : Void;
	
	/**
	* Returns the specified color panels.
	*
	* @return an array of <code>AbstractColorChooserPanel</code> objects
	*/
	@:overload public function getChooserPanels() : java.NativeArray<javax.swing.colorchooser.AbstractColorChooserPanel>;
	
	/**
	* Returns the data model that handles color selections.
	*
	* @return a <code>ColorSelectionModel</code> object
	*/
	@:overload public function getSelectionModel() : javax.swing.colorchooser.ColorSelectionModel;
	
	/**
	* Sets the model containing the selected color.
	*
	* @param newModel   the new <code>ColorSelectionModel</code> object
	*
	* @beaninfo
	*       bound: true
	*      hidden: true
	* description: The model which contains the currently selected color.
	*/
	@:overload public function setSelectionModel(newModel : javax.swing.colorchooser.ColorSelectionModel) : Void;
	
	/**
	* Returns a string representation of this <code>JColorChooser</code>.
	* This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this <code>JColorChooser</code>
	*/
	@:overload override private function paramString() : String;
	
	private var accessibleContext : javax.accessibility.AccessibleContext;
	
	/**
	* Gets the AccessibleContext associated with this JColorChooser.
	* For color choosers, the AccessibleContext takes the form of an
	* AccessibleJColorChooser.
	* A new AccessibleJColorChooser instance is created if necessary.
	*
	* @return an AccessibleJColorChooser that serves as the
	*         AccessibleContext of this JColorChooser
	*/
	@:overload public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* This class implements accessibility support for the
* <code>JColorChooser</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to color chooser user-interface
* elements.
*/
@:native('javax$swing$JColorChooser$AccessibleJColorChooser') extern class JColorChooser_AccessibleJColorChooser extends javax.swing.JComponent.JComponent_AccessibleJComponent
{
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	* @see AccessibleRole
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	
}
@:internal extern class ColorChooserDialog extends javax.swing.JDialog
{
	@:overload public function new(owner : java.awt.Dialog, title : String, modal : Bool, c : java.awt.Component, chooserPane : javax.swing.JColorChooser, okListener : java.awt.event.ActionListener, cancelListener : java.awt.event.ActionListener) : Void;
	
	@:overload public function new(owner : java.awt.Frame, title : String, modal : Bool, c : java.awt.Component, chooserPane : javax.swing.JColorChooser, okListener : java.awt.event.ActionListener, cancelListener : java.awt.event.ActionListener) : Void;
	
	@:overload private function initColorChooserDialog(c : java.awt.Component, chooserPane : javax.swing.JColorChooser, okListener : java.awt.event.ActionListener, cancelListener : java.awt.event.ActionListener) : Void;
	
	@:overload override public function show() : Void;
	
	@:overload public function reset() : Void;
	
	
}
@:native('javax$swing$ColorChooserDialog$Closer') @:internal extern class ColorChooserDialog_Closer extends java.awt.event.WindowAdapter implements java.io.Serializable
{
	@:overload public function windowClosing(e : java.awt.event.WindowEvent) : Void;
	
	
}
@:native('javax$swing$ColorChooserDialog$DisposeOnClose') @:internal extern class ColorChooserDialog_DisposeOnClose extends java.awt.event.ComponentAdapter implements java.io.Serializable
{
	@:overload override public function componentHidden(e : java.awt.event.ComponentEvent) : Void;
	
	
}
@:internal extern class ColorTracker implements java.awt.event.ActionListener implements java.io.Serializable
{
	@:overload public function new(c : javax.swing.JColorChooser) : Void;
	
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload public function getColor() : java.awt.Color;
	
	
}
