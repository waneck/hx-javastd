package javax.swing;
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
extern class JDesktopPane extends javax.swing.JLayeredPane implements javax.accessibility.Accessible
{
	/**
	* Indicates that the entire contents of the item being dragged
	* should appear inside the desktop pane.
	*
	* @see #OUTLINE_DRAG_MODE
	* @see #setDragMode
	*/
	public static var LIVE_DRAG_MODE(default, null) : Int;
	
	/**
	* Indicates that an outline only of the item being dragged
	* should appear inside the desktop pane.
	*
	* @see #LIVE_DRAG_MODE
	* @see #setDragMode
	*/
	public static var OUTLINE_DRAG_MODE(default, null) : Int;
	
	/**
	* Creates a new <code>JDesktopPane</code>.
	*/
	@:overload public function new() : Void;
	
	/**
	* Returns the L&F object that renders this component.
	*
	* @return the <code>DesktopPaneUI</code> object that
	*   renders this component
	*/
	@:overload public function getUI() : javax.swing.plaf.DesktopPaneUI;
	
	/**
	* Sets the L&F object that renders this component.
	*
	* @param ui  the DesktopPaneUI L&F object
	* @see UIDefaults#getUI
	* @beaninfo
	*        bound: true
	*       hidden: true
	*    attribute: visualUpdate true
	*  description: The UI object that implements the Component's LookAndFeel.
	*/
	@:overload public function setUI(ui : javax.swing.plaf.DesktopPaneUI) : Void;
	
	/**
	* Sets the "dragging style" used by the desktop pane.
	* You may want to change to one mode or another for
	* performance or aesthetic reasons.
	*
	* @param dragMode the style of drag to use for items in the Desktop
	*
	* @see #LIVE_DRAG_MODE
	* @see #OUTLINE_DRAG_MODE
	*
	* @beaninfo
	*        bound: true
	*  description: Dragging style for internal frame children.
	*         enum: LIVE_DRAG_MODE JDesktopPane.LIVE_DRAG_MODE
	*               OUTLINE_DRAG_MODE JDesktopPane.OUTLINE_DRAG_MODE
	* @since 1.3
	*/
	@:require(java3) @:overload public function setDragMode(dragMode : Int) : Void;
	
	/**
	* Gets the current "dragging style" used by the desktop pane.
	* @return either <code>Live_DRAG_MODE</code> or
	*   <code>OUTLINE_DRAG_MODE</code>
	* @see #setDragMode
	* @since 1.3
	*/
	@:require(java3) @:overload public function getDragMode() : Int;
	
	/**
	* Returns the <code>DesktopManger</code> that handles
	* desktop-specific UI actions.
	*/
	@:overload public function getDesktopManager() : javax.swing.DesktopManager;
	
	/**
	* Sets the <code>DesktopManger</code> that will handle
	* desktop-specific UI actions. This may be overridden by
	* {@code LookAndFeel}.
	*
	* @param d the <code>DesktopManager</code> to use
	*
	* @beaninfo
	*        bound: true
	*  description: Desktop manager to handle the internal frames in the
	*               desktop pane.
	*/
	@:overload public function setDesktopManager(d : javax.swing.DesktopManager) : Void;
	
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
	* @return the string "DesktopPaneUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*/
	@:overload public function getUIClassID() : String;
	
	/**
	* Returns all <code>JInternalFrames</code> currently displayed in the
	* desktop. Returns iconified frames as well as expanded frames.
	*
	* @return an array of <code>JInternalFrame</code> objects
	*/
	@:overload public function getAllFrames() : java.NativeArray<javax.swing.JInternalFrame>;
	
	/** Returns the currently active <code>JInternalFrame</code>
	* in this <code>JDesktopPane</code>, or <code>null</code>
	* if no <code>JInternalFrame</code> is currently active.
	*
	* @return the currently active <code>JInternalFrame</code> or
	*   <code>null</code>
	* @since 1.3
	*/
	@:require(java3) @:overload public function getSelectedFrame() : javax.swing.JInternalFrame;
	
	/** Sets the currently active <code>JInternalFrame</code>
	*  in this <code>JDesktopPane</code>. This method is used to bridge
	*  the package gap between JDesktopPane and the platform implementation
	*  code and should not be called directly. To visually select the frame
	*  the client must call JInternalFrame.setSelected(true) to activate
	*  the frame.
	*  @see JInternalFrame#setSelected(boolean)
	*
	* @param f the internal frame that's currently selected
	* @since 1.3
	*/
	@:require(java3) @:overload public function setSelectedFrame(f : javax.swing.JInternalFrame) : Void;
	
	/**
	* Returns all <code>JInternalFrames</code> currently displayed in the
	* specified layer of the desktop. Returns iconified frames as well
	* expanded frames.
	*
	* @param layer  an int specifying the desktop layer
	* @return an array of <code>JInternalFrame</code> objects
	* @see JLayeredPane
	*/
	@:overload public function getAllFramesInLayer(layer : Int) : java.NativeArray<javax.swing.JInternalFrame>;
	
	/**
	* Selects the next <code>JInternalFrame</code> in this desktop pane.
	*
	* @param forward a boolean indicating which direction to select in;
	*        <code>true</code> for forward, <code>false</code> for
	*        backward
	* @return the JInternalFrame that was selected or <code>null</code>
	*         if nothing was selected
	* @since 1.6
	*/
	@:require(java6) @:overload public function selectFrame(forward : Bool) : javax.swing.JInternalFrame;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload override private function addImpl(comp : java.awt.Component, constraints : Dynamic, index : Int) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload override public function remove(index : Int) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload override public function removeAll() : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setComponentZOrder(comp : java.awt.Component, index : Int) : Void;
	
	/**
	* Returns a string representation of this <code>JDesktopPane</code>.
	* This method is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this <code>JDesktopPane</code>
	*/
	@:overload override private function paramString() : String;
	
	/**
	* Gets the <code>AccessibleContext</code> associated with this
	* <code>JDesktopPane</code>. For desktop panes, the
	* <code>AccessibleContext</code> takes the form of an
	* <code>AccessibleJDesktopPane</code>.
	* A new <code>AccessibleJDesktopPane</code> instance is created if necessary.
	*
	* @return an <code>AccessibleJDesktopPane</code> that serves as the
	*         <code>AccessibleContext</code> of this <code>JDesktopPane</code>
	*/
	@:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
@:native('javax$swing$JDesktopPane$ComponentPosition') @:internal extern class JDesktopPane_ComponentPosition implements java.lang.Comparable<javax.swing.JDesktopPane.JDesktopPane_ComponentPosition>
{
	@:overload public function compareTo(o : javax.swing.JDesktopPane.JDesktopPane_ComponentPosition) : Int;
	
	
}
/**
* This class implements accessibility support for the
* <code>JDesktopPane</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to desktop pane user-interface
* elements.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*/
@:native('javax$swing$JDesktopPane$AccessibleJDesktopPane') extern class JDesktopPane_AccessibleJDesktopPane extends javax.swing.JComponent.JComponent_AccessibleJComponent
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
