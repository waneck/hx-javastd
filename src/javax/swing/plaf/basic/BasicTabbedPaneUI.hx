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
extern class BasicTabbedPaneUI extends javax.swing.plaf.TabbedPaneUI implements javax.swing.SwingConstants
{
	/**
	* A Basic L&F implementation of TabbedPaneUI.
	*
	* @author Amy Fowler
	* @author Philip Milne
	* @author Steve Wilson
	* @author Tom Santos
	* @author Dave Moore
	*/
	@:protected private var tabPane : javax.swing.JTabbedPane;
	
	@:protected private var highlight : java.awt.Color;
	
	@:protected private var lightHighlight : java.awt.Color;
	
	@:protected private var shadow : java.awt.Color;
	
	@:protected private var darkShadow : java.awt.Color;
	
	@:protected private var focus : java.awt.Color;
	
	@:protected private var textIconGap : Int;
	
	@:protected private var tabRunOverlay : Int;
	
	@:protected private var tabInsets : java.awt.Insets;
	
	@:protected private var selectedTabPadInsets : java.awt.Insets;
	
	@:protected private var tabAreaInsets : java.awt.Insets;
	
	@:protected private var contentBorderInsets : java.awt.Insets;
	
	/**
	* As of Java 2 platform v1.3 this previously undocumented field is no
	* longer used.
	* Key bindings are now defined by the LookAndFeel, please refer to
	* the key bindings specification for further details.
	*
	* @deprecated As of Java 2 platform v1.3.
	*/
	@:protected private var upKey : javax.swing.KeyStroke;
	
	/**
	* As of Java 2 platform v1.3 this previously undocumented field is no
	* longer used.
	* Key bindings are now defined by the LookAndFeel, please refer to
	* the key bindings specification for further details.
	*
	* @deprecated As of Java 2 platform v1.3.
	*/
	@:protected private var downKey : javax.swing.KeyStroke;
	
	/**
	* As of Java 2 platform v1.3 this previously undocumented field is no
	* longer used.
	* Key bindings are now defined by the LookAndFeel, please refer to
	* the key bindings specification for further details.
	*
	* @deprecated As of Java 2 platform v1.3.
	*/
	@:protected private var leftKey : javax.swing.KeyStroke;
	
	/**
	* As of Java 2 platform v1.3 this previously undocumented field is no
	* longer used.
	* Key bindings are now defined by the LookAndFeel, please refer to
	* the key bindings specification for further details.
	*
	* @deprecated As of Java 2 platform v1.3.
	*/
	@:protected private var rightKey : javax.swing.KeyStroke;
	
	@:protected private var tabRuns : java.NativeArray<Int>;
	
	@:protected private var runCount : Int;
	
	@:protected private var selectedRun : Int;
	
	@:protected private var rects : java.NativeArray<java.awt.Rectangle>;
	
	@:protected private var maxTabHeight : Int;
	
	@:protected private var maxTabWidth : Int;
	
	@:protected private var tabChangeListener : javax.swing.event.ChangeListener;
	
	@:protected private var propertyChangeListener : java.beans.PropertyChangeListener;
	
	@:protected private var mouseListener : java.awt.event.MouseListener;
	
	@:protected private var focusListener : java.awt.event.FocusListener;
	
	/**
	* A rectangle used for general layout calculations in order
	* to avoid constructing many new Rectangles on the fly.
	*/
	@:protected @:transient private var calcRect : java.awt.Rectangle;
	
	@:overload @:public @:static public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload @:public override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:public override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	/**
	* Invoked by <code>installUI</code> to create
	* a layout manager object to manage
	* the <code>JTabbedPane</code>.
	*
	* @return a layout manager object
	*
	* @see TabbedPaneLayout
	* @see javax.swing.JTabbedPane#getTabLayoutPolicy
	*/
	@:overload @:protected private function createLayoutManager() : java.awt.LayoutManager;
	
	/**
	* Creates and installs any required subcomponents for the JTabbedPane.
	* Invoked by installUI.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function installComponents() : Void;
	
	/**
	* Creates and returns a JButton that will provide the user
	* with a way to scroll the tabs in a particular direction. The
	* returned JButton must be instance of UIResource.
	*
	* @param direction One of the SwingConstants constants:
	* SOUTH, NORTH, EAST or WEST
	* @return Widget for user to
	* @see javax.swing.JTabbedPane#setTabPlacement
	* @see javax.swing.SwingConstants
	* @throws IllegalArgumentException if direction is not one of
	*         NORTH, SOUTH, EAST or WEST
	* @since 1.5
	*/
	@:require(java5) @:overload @:protected private function createScrollButton(direction : Int) : javax.swing.JButton;
	
	/**
	* Removes any installed subcomponents from the JTabbedPane.
	* Invoked by uninstallUI.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function uninstallComponents() : Void;
	
	@:overload @:protected private function installDefaults() : Void;
	
	@:overload @:protected private function uninstallDefaults() : Void;
	
	@:overload @:protected private function installListeners() : Void;
	
	@:overload @:protected private function uninstallListeners() : Void;
	
	@:overload @:protected private function createMouseListener() : java.awt.event.MouseListener;
	
	@:overload @:protected private function createFocusListener() : java.awt.event.FocusListener;
	
	@:overload @:protected private function createChangeListener() : javax.swing.event.ChangeListener;
	
	@:overload @:protected private function createPropertyChangeListener() : java.beans.PropertyChangeListener;
	
	@:overload @:protected private function installKeyboardActions() : Void;
	
	@:overload @:protected private function uninstallKeyboardActions() : Void;
	
	/**
	* Sets the tab the mouse is currently over to <code>index</code>.
	* <code>index</code> will be -1 if the mouse is no longer over any
	* tab. No checking is done to ensure the passed in index identifies a
	* valid tab.
	*
	* @param index Index of the tab the mouse is over.
	* @since 1.5
	*/
	@:require(java5) @:overload @:protected private function setRolloverTab(index : Int) : Void;
	
	/**
	* Returns the tab the mouse is currently over, or {@code -1} if the mouse is no
	* longer over any tab.
	*
	* @return the tab the mouse is currently over, or {@code -1} if the mouse is no
	* longer over any tab
	* @since 1.5
	*/
	@:require(java5) @:overload @:protected private function getRolloverTab() : Int;
	
	@:overload @:public override public function getMinimumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload @:public override public function getMaximumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Returns the baseline.
	*
	* @throws NullPointerException {@inheritDoc}
	* @throws IllegalArgumentException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload @:public override public function getBaseline(c : javax.swing.JComponent, width : Int, height : Int) : Int;
	
	/**
	* Returns an enum indicating how the baseline of the component
	* changes as the size changes.
	*
	* @throws NullPointerException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload @:public override public function getBaselineResizeBehavior(c : javax.swing.JComponent) : java.awt.Component.Component_BaselineResizeBehavior;
	
	/**
	* Returns the baseline for the specified tab.
	*
	* @param tab index of tab to get baseline for
	* @exception IndexOutOfBoundsException if index is out of range
	*            (index < 0 || index >= tab count)
	* @return baseline or a value &lt; 0 indicating there is no reasonable
	*                  baseline
	* @since 1.6
	*/
	@:require(java6) @:overload @:protected private function getBaseline(tab : Int) : Int;
	
	/**
	* Returns the amount the baseline is offset by.  This is typically
	* the same as <code>getTabLabelShiftY</code>.
	*
	* @return amount to offset the baseline by
	* @since 1.6
	*/
	@:require(java6) @:overload @:protected private function getBaselineOffset() : Int;
	
	@:overload @:public override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	/**
	* Paints the tabs in the tab area.
	* Invoked by paint().
	* The graphics parameter must be a valid <code>Graphics</code>
	* object.  Tab placement may be either:
	* <code>JTabbedPane.TOP</code>, <code>JTabbedPane.BOTTOM</code>,
	* <code>JTabbedPane.LEFT</code>, or <code>JTabbedPane.RIGHT</code>.
	* The selected index must be a valid tabbed pane tab index (0 to
	* tab count - 1, inclusive) or -1 if no tab is currently selected.
	* The handling of invalid parameters is unspecified.
	*
	* @param g the graphics object to use for rendering
	* @param tabPlacement the placement for the tabs within the JTabbedPane
	* @param selectedIndex the tab index of the selected component
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function paintTabArea(g : java.awt.Graphics, tabPlacement : Int, selectedIndex : Int) : Void;
	
	@:overload @:protected private function paintTab(g : java.awt.Graphics, tabPlacement : Int, rects : java.NativeArray<java.awt.Rectangle>, tabIndex : Int, iconRect : java.awt.Rectangle, textRect : java.awt.Rectangle) : Void;
	
	@:overload @:protected private function layoutLabel(tabPlacement : Int, metrics : java.awt.FontMetrics, tabIndex : Int, title : String, icon : javax.swing.Icon, tabRect : java.awt.Rectangle, iconRect : java.awt.Rectangle, textRect : java.awt.Rectangle, isSelected : Bool) : Void;
	
	@:overload @:protected private function paintIcon(g : java.awt.Graphics, tabPlacement : Int, tabIndex : Int, icon : javax.swing.Icon, iconRect : java.awt.Rectangle, isSelected : Bool) : Void;
	
	@:overload @:protected private function paintText(g : java.awt.Graphics, tabPlacement : Int, font : java.awt.Font, metrics : java.awt.FontMetrics, tabIndex : Int, title : String, textRect : java.awt.Rectangle, isSelected : Bool) : Void;
	
	@:overload @:protected private function getTabLabelShiftX(tabPlacement : Int, tabIndex : Int, isSelected : Bool) : Int;
	
	@:overload @:protected private function getTabLabelShiftY(tabPlacement : Int, tabIndex : Int, isSelected : Bool) : Int;
	
	@:overload @:protected private function paintFocusIndicator(g : java.awt.Graphics, tabPlacement : Int, rects : java.NativeArray<java.awt.Rectangle>, tabIndex : Int, iconRect : java.awt.Rectangle, textRect : java.awt.Rectangle, isSelected : Bool) : Void;
	
	/**
	* this function draws the border around each tab
	* note that this function does now draw the background of the tab.
	* that is done elsewhere
	*/
	@:overload @:protected private function paintTabBorder(g : java.awt.Graphics, tabPlacement : Int, tabIndex : Int, x : Int, y : Int, w : Int, h : Int, isSelected : Bool) : Void;
	
	@:overload @:protected private function paintTabBackground(g : java.awt.Graphics, tabPlacement : Int, tabIndex : Int, x : Int, y : Int, w : Int, h : Int, isSelected : Bool) : Void;
	
	@:overload @:protected private function paintContentBorder(g : java.awt.Graphics, tabPlacement : Int, selectedIndex : Int) : Void;
	
	@:overload @:protected private function paintContentBorderTopEdge(g : java.awt.Graphics, tabPlacement : Int, selectedIndex : Int, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload @:protected private function paintContentBorderLeftEdge(g : java.awt.Graphics, tabPlacement : Int, selectedIndex : Int, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload @:protected private function paintContentBorderBottomEdge(g : java.awt.Graphics, tabPlacement : Int, selectedIndex : Int, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload @:protected private function paintContentBorderRightEdge(g : java.awt.Graphics, tabPlacement : Int, selectedIndex : Int, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Returns the bounds of the specified tab index.  The bounds are
	* with respect to the JTabbedPane's coordinate space.
	*/
	@:overload @:public override public function getTabBounds(pane : javax.swing.JTabbedPane, i : Int) : java.awt.Rectangle;
	
	@:overload @:public override public function getTabRunCount(pane : javax.swing.JTabbedPane) : Int;
	
	/**
	* Returns the tab index which intersects the specified point
	* in the JTabbedPane's coordinate space.
	*/
	@:overload @:public override public function tabForCoordinate(pane : javax.swing.JTabbedPane, x : Int, y : Int) : Int;
	
	/**
	* Returns the bounds of the specified tab in the coordinate space
	* of the JTabbedPane component.  This is required because the tab rects
	* are by default defined in the coordinate space of the component where
	* they are rendered, which could be the JTabbedPane
	* (for WRAP_TAB_LAYOUT) or a ScrollableTabPanel (SCROLL_TAB_LAYOUT).
	* This method should be used whenever the tab rectangle must be relative
	* to the JTabbedPane itself and the result should be placed in a
	* designated Rectangle object (rather than instantiating and returning
	* a new Rectangle each time). The tab index parameter must be a valid
	* tabbed pane tab index (0 to tab count - 1, inclusive).  The destination
	* rectangle parameter must be a valid <code>Rectangle</code> instance.
	* The handling of invalid parameters is unspecified.
	*
	* @param tabIndex the index of the tab
	* @param dest the rectangle where the result should be placed
	* @return the resulting rectangle
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function getTabBounds(tabIndex : Int, dest : java.awt.Rectangle) : java.awt.Rectangle;
	
	@:overload @:protected private function getVisibleComponent() : java.awt.Component;
	
	@:overload @:protected private function setVisibleComponent(component : java.awt.Component) : Void;
	
	@:overload @:protected private function assureRectsCreated(tabCount : Int) : Void;
	
	@:overload @:protected private function expandTabRunsArray() : Void;
	
	@:overload @:protected private function getRunForTab(tabCount : Int, tabIndex : Int) : Int;
	
	@:overload @:protected private function lastTabInRun(tabCount : Int, run : Int) : Int;
	
	@:overload @:protected private function getTabRunOverlay(tabPlacement : Int) : Int;
	
	@:overload @:protected private function getTabRunIndent(tabPlacement : Int, run : Int) : Int;
	
	@:overload @:protected private function shouldPadTabRun(tabPlacement : Int, run : Int) : Bool;
	
	@:overload @:protected private function shouldRotateTabRuns(tabPlacement : Int) : Bool;
	
	@:overload @:protected private function getIconForTab(tabIndex : Int) : javax.swing.Icon;
	
	/**
	* Returns the text View object required to render stylized text (HTML) for
	* the specified tab or null if no specialized text rendering is needed
	* for this tab. This is provided to support html rendering inside tabs.
	*
	* @param tabIndex the index of the tab
	* @return the text view to render the tab's text or null if no
	*         specialized rendering is required
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function getTextViewForTab(tabIndex : Int) : javax.swing.text.View;
	
	@:overload @:protected private function calculateTabHeight(tabPlacement : Int, tabIndex : Int, fontHeight : Int) : Int;
	
	@:overload @:protected private function calculateMaxTabHeight(tabPlacement : Int) : Int;
	
	@:overload @:protected private function calculateTabWidth(tabPlacement : Int, tabIndex : Int, metrics : java.awt.FontMetrics) : Int;
	
	@:overload @:protected private function calculateMaxTabWidth(tabPlacement : Int) : Int;
	
	@:overload @:protected private function calculateTabAreaHeight(tabPlacement : Int, horizRunCount : Int, maxTabHeight : Int) : Int;
	
	@:overload @:protected private function calculateTabAreaWidth(tabPlacement : Int, vertRunCount : Int, maxTabWidth : Int) : Int;
	
	@:overload @:protected private function getTabInsets(tabPlacement : Int, tabIndex : Int) : java.awt.Insets;
	
	@:overload @:protected private function getSelectedTabPadInsets(tabPlacement : Int) : java.awt.Insets;
	
	@:overload @:protected private function getTabAreaInsets(tabPlacement : Int) : java.awt.Insets;
	
	@:overload @:protected private function getContentBorderInsets(tabPlacement : Int) : java.awt.Insets;
	
	@:overload @:protected private function getFontMetrics() : java.awt.FontMetrics;
	
	@:overload @:protected private function navigateSelectedTab(direction : Int) : Void;
	
	@:overload @:protected private function selectNextTabInRun(current : Int) : Void;
	
	@:overload @:protected private function selectPreviousTabInRun(current : Int) : Void;
	
	@:overload @:protected private function selectNextTab(current : Int) : Void;
	
	@:overload @:protected private function selectPreviousTab(current : Int) : Void;
	
	@:overload @:protected private function selectAdjacentRunTab(tabPlacement : Int, tabIndex : Int, offset : Int) : Void;
	
	/**
	* Returns the index of the tab that has focus.
	*
	* @return index of tab that has focus
	* @since 1.5
	*/
	@:require(java5) @:overload @:protected private function getFocusIndex() : Int;
	
	@:overload @:protected private function getTabRunOffset(tabPlacement : Int, tabCount : Int, tabIndex : Int, forward : Bool) : Int;
	
	@:overload @:protected private function getPreviousTabIndex(base : Int) : Int;
	
	@:overload @:protected private function getNextTabIndex(base : Int) : Int;
	
	@:overload @:protected private function getNextTabIndexInRun(tabCount : Int, base : Int) : Int;
	
	@:overload @:protected private function getPreviousTabIndexInRun(tabCount : Int, base : Int) : Int;
	
	@:overload @:protected private function getPreviousTabRun(baseRun : Int) : Int;
	
	@:overload @:protected private function getNextTabRun(baseRun : Int) : Int;
	
	@:overload @:protected @:static private static function rotateInsets(topInsets : java.awt.Insets, targetInsets : java.awt.Insets, targetPlacement : Int) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicTabbedPaneUI$Actions') @:internal extern class BasicTabbedPaneUI_Actions extends sun.swing.UIAction
{
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of BasicTabbedPaneUI.
*/
@:native('javax$swing$plaf$basic$BasicTabbedPaneUI$TabbedPaneLayout') extern class BasicTabbedPaneUI_TabbedPaneLayout implements java.awt.LayoutManager
{
	@:overload @:public public function addLayoutComponent(name : String, comp : java.awt.Component) : Void;
	
	@:overload @:public public function removeLayoutComponent(comp : java.awt.Component) : Void;
	
	@:overload @:public public function preferredLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function minimumLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:protected private function calculateSize(minimum : Bool) : java.awt.Dimension;
	
	@:overload @:protected private function preferredTabAreaHeight(tabPlacement : Int, width : Int) : Int;
	
	@:overload @:protected private function preferredTabAreaWidth(tabPlacement : Int, height : Int) : Int;
	
	@:overload @:public public function layoutContainer(parent : java.awt.Container) : Void;
	
	@:overload @:public public function calculateLayoutInfo() : Void;
	
	@:overload @:protected private function calculateTabRects(tabPlacement : Int, tabCount : Int) : Void;
	
	/*
	* Rotates the run-index array so that the selected run is run[0]
	*/
	@:overload @:protected private function rotateTabRuns(tabPlacement : Int, selectedRun : Int) : Void;
	
	@:overload @:protected private function normalizeTabRuns(tabPlacement : Int, tabCount : Int, start : Int, max : Int) : Void;
	
	@:overload @:protected private function padTabRun(tabPlacement : Int, start : Int, end : Int, max : Int) : Void;
	
	@:overload @:protected private function padSelectedTab(tabPlacement : Int, selectedIndex : Int) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicTabbedPaneUI$TabbedPaneScrollLayout') @:internal extern class BasicTabbedPaneUI_TabbedPaneScrollLayout extends javax.swing.plaf.basic.BasicTabbedPaneUI.BasicTabbedPaneUI_TabbedPaneLayout
{
	@:overload @:protected override private function preferredTabAreaHeight(tabPlacement : Int, width : Int) : Int;
	
	@:overload @:protected override private function preferredTabAreaWidth(tabPlacement : Int, height : Int) : Int;
	
	@:overload @:public override public function layoutContainer(parent : java.awt.Container) : Void;
	
	@:overload @:protected override private function calculateTabRects(tabPlacement : Int, tabCount : Int) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicTabbedPaneUI$ScrollableTabSupport') @:internal extern class BasicTabbedPaneUI_ScrollableTabSupport implements java.awt.event.ActionListener implements javax.swing.event.ChangeListener
{
	@:public public var viewport : javax.swing.plaf.basic.BasicTabbedPaneUI.BasicTabbedPaneUI_ScrollableTabViewport;
	
	@:public public var tabPanel : javax.swing.plaf.basic.BasicTabbedPaneUI.BasicTabbedPaneUI_ScrollableTabPanel;
	
	@:public public var scrollForwardButton : javax.swing.JButton;
	
	@:public public var scrollBackwardButton : javax.swing.JButton;
	
	@:public public var croppedEdge : javax.swing.plaf.basic.BasicTabbedPaneUI.BasicTabbedPaneUI_CroppedEdge;
	
	@:public public var leadingTabIndex : Int;
	
	@:overload @:public public function scrollForward(tabPlacement : Int) : Void;
	
	@:overload @:public public function scrollBackward(tabPlacement : Int) : Void;
	
	@:overload @:public public function setLeadingTabIndex(tabPlacement : Int, index : Int) : Void;
	
	@:overload @:public public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	/**
	* ActionListener for the scroll buttons.
	*/
	@:overload @:public public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload @:public public function toString() : String;
	
	
}
@:native('javax$swing$plaf$basic$BasicTabbedPaneUI$ScrollableTabViewport') @:internal extern class BasicTabbedPaneUI_ScrollableTabViewport extends javax.swing.JViewport implements javax.swing.plaf.UIResource
{
	@:overload @:public public function new() : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicTabbedPaneUI$ScrollableTabPanel') @:internal extern class BasicTabbedPaneUI_ScrollableTabPanel extends javax.swing.JPanel implements javax.swing.plaf.UIResource
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function paintComponent(g : java.awt.Graphics) : Void;
	
	@:overload @:public override public function doLayout() : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicTabbedPaneUI$ScrollableTabButton') @:internal extern class BasicTabbedPaneUI_ScrollableTabButton extends javax.swing.plaf.basic.BasicArrowButton implements javax.swing.plaf.UIResource implements javax.swing.SwingConstants
{
	@:overload @:public public function new(direction : Int) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicTabbedPaneUI$Handler') @:internal extern class BasicTabbedPaneUI_Handler implements javax.swing.event.ChangeListener implements java.awt.event.ContainerListener implements java.awt.event.FocusListener implements java.awt.event.MouseListener implements java.awt.event.MouseMotionListener implements java.beans.PropertyChangeListener
{
	@:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload @:public public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	@:overload @:public public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload @:public public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	/* GES 2/3/99:
	The container listener code was added to support HTML
	rendering of tab titles.

	Ideally, we would be able to listen for property changes
	when a tab is added or its text modified.  At the moment
	there are no such events because the Beans spec doesn't
	allow 'indexed' property changes (i.e. tab 2's text changed
	from A to B).

	In order to get around this, we listen for tabs to be added
	or removed by listening for the container events.  we then
	queue up a runnable (so the component has a chance to complete
	the add) which checks the tab title of the new component to see
	if it requires HTML rendering.

	The Views (one per tab title requiring HTML rendering) are
	stored in the htmlViews Vector, which is only allocated after
	the first time we run into an HTML tab.  Note that this vector
	is kept in step with the number of pages, and nulls are added
	for those pages whose tab title do not require HTML rendering.

	This makes it easy for the paint and layout code to tell
	whether to invoke the HTML engine without having to check
	the string during time-sensitive operations.

	When we have added a way to listen for tab additions and
	changes to tab text, this code should be removed and
	replaced by something which uses that.  */
	@:overload @:public public function componentAdded(e : java.awt.event.ContainerEvent) : Void;
	
	@:overload @:public public function componentRemoved(e : java.awt.event.ContainerEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of BasicTabbedPaneUI.
*/
@:native('javax$swing$plaf$basic$BasicTabbedPaneUI$PropertyChangeHandler') extern class BasicTabbedPaneUI_PropertyChangeHandler implements java.beans.PropertyChangeListener
{
	@:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of BasicTabbedPaneUI.
*/
@:native('javax$swing$plaf$basic$BasicTabbedPaneUI$TabSelectionHandler') extern class BasicTabbedPaneUI_TabSelectionHandler implements javax.swing.event.ChangeListener
{
	@:overload @:public public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of BasicTabbedPaneUI.
*/
@:native('javax$swing$plaf$basic$BasicTabbedPaneUI$MouseHandler') extern class BasicTabbedPaneUI_MouseHandler extends java.awt.event.MouseAdapter
{
	@:overload @:public override public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of BasicTabbedPaneUI.
*/
@:native('javax$swing$plaf$basic$BasicTabbedPaneUI$FocusHandler') extern class BasicTabbedPaneUI_FocusHandler extends java.awt.event.FocusAdapter
{
	@:overload @:public override public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload @:public override public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicTabbedPaneUI$TabContainer') @:internal extern class BasicTabbedPaneUI_TabContainer extends javax.swing.JPanel implements javax.swing.plaf.UIResource
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function remove(comp : java.awt.Component) : Void;
	
	@:overload @:public override public function isOptimizedDrawingEnabled() : Bool;
	
	@:overload @:public override public function doLayout() : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicTabbedPaneUI$CroppedEdge') @:internal extern class BasicTabbedPaneUI_CroppedEdge extends javax.swing.JPanel implements javax.swing.plaf.UIResource
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function setParams(tabIndex : Int, cropline : Int, cropx : Int, cropy : Int) : Void;
	
	@:overload @:public public function resetParams() : Void;
	
	@:overload @:public public function isParamsSet() : Bool;
	
	@:overload @:public public function getTabIndex() : Int;
	
	@:overload @:public public function getCropline() : Int;
	
	@:overload @:public public function getCroppedSideWidth() : Int;
	
	@:overload @:protected override private function paintComponent(g : java.awt.Graphics) : Void;
	
	
}
