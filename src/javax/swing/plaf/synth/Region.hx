package javax.swing.plaf.synth;
/*
* Copyright (c) 2002, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class Region
{
	/**
	* ArrowButton's are special types of buttons that also render a
	* directional indicator, typically an arrow. ArrowButtons are used by
	* composite components, for example ScrollBar's contain ArrowButtons.
	* To bind a style to this <code>Region</code> use the name
	* <code>ArrowButton</code>.
	*/
	public static var ARROW_BUTTON(default, null) : Region;
	
	/**
	* Button region. To bind a style to this <code>Region</code> use the name
	* <code>Button</code>.
	*/
	public static var BUTTON(default, null) : Region;
	
	/**
	* CheckBox region. To bind a style to this <code>Region</code> use the name
	* <code>CheckBox</code>.
	*/
	public static var CHECK_BOX(default, null) : Region;
	
	/**
	* CheckBoxMenuItem region. To bind a style to this <code>Region</code> use
	* the name <code>CheckBoxMenuItem</code>.
	*/
	public static var CHECK_BOX_MENU_ITEM(default, null) : Region;
	
	/**
	* ColorChooser region. To bind a style to this <code>Region</code> use
	* the name <code>ColorChooser</code>.
	*/
	public static var COLOR_CHOOSER(default, null) : Region;
	
	/**
	* ComboBox region. To bind a style to this <code>Region</code> use
	* the name <code>ComboBox</code>.
	*/
	public static var COMBO_BOX(default, null) : Region;
	
	/**
	* DesktopPane region. To bind a style to this <code>Region</code> use
	* the name <code>DesktopPane</code>.
	*/
	public static var DESKTOP_PANE(default, null) : Region;
	
	/**
	* DesktopIcon region. To bind a style to this <code>Region</code> use
	* the name <code>DesktopIcon</code>.
	*/
	public static var DESKTOP_ICON(default, null) : Region;
	
	/**
	* EditorPane region. To bind a style to this <code>Region</code> use
	* the name <code>EditorPane</code>.
	*/
	public static var EDITOR_PANE(default, null) : Region;
	
	/**
	* FileChooser region. To bind a style to this <code>Region</code> use
	* the name <code>FileChooser</code>.
	*/
	public static var FILE_CHOOSER(default, null) : Region;
	
	/**
	* FormattedTextField region. To bind a style to this <code>Region</code> use
	* the name <code>FormattedTextField</code>.
	*/
	public static var FORMATTED_TEXT_FIELD(default, null) : Region;
	
	/**
	* InternalFrame region. To bind a style to this <code>Region</code> use
	* the name <code>InternalFrame</code>.
	*/
	public static var INTERNAL_FRAME(default, null) : Region;
	
	/**
	* TitlePane of an InternalFrame. The TitlePane typically
	* shows a menu, title, widgets to manipulate the internal frame.
	* To bind a style to this <code>Region</code> use the name
	* <code>InternalFrameTitlePane</code>.
	*/
	public static var INTERNAL_FRAME_TITLE_PANE(default, null) : Region;
	
	/**
	* Label region. To bind a style to this <code>Region</code> use the name
	* <code>Label</code>.
	*/
	public static var LABEL(default, null) : Region;
	
	/**
	* List region. To bind a style to this <code>Region</code> use the name
	* <code>List</code>.
	*/
	public static var LIST(default, null) : Region;
	
	/**
	* Menu region. To bind a style to this <code>Region</code> use the name
	* <code>Menu</code>.
	*/
	public static var MENU(default, null) : Region;
	
	/**
	* MenuBar region. To bind a style to this <code>Region</code> use the name
	* <code>MenuBar</code>.
	*/
	public static var MENU_BAR(default, null) : Region;
	
	/**
	* MenuItem region. To bind a style to this <code>Region</code> use the name
	* <code>MenuItem</code>.
	*/
	public static var MENU_ITEM(default, null) : Region;
	
	/**
	* Accelerator region of a MenuItem. To bind a style to this
	* <code>Region</code> use the name <code>MenuItemAccelerator</code>.
	*/
	public static var MENU_ITEM_ACCELERATOR(default, null) : Region;
	
	/**
	* OptionPane region. To bind a style to this <code>Region</code> use
	* the name <code>OptionPane</code>.
	*/
	public static var OPTION_PANE(default, null) : Region;
	
	/**
	* Panel region. To bind a style to this <code>Region</code> use the name
	* <code>Panel</code>.
	*/
	public static var PANEL(default, null) : Region;
	
	/**
	* PasswordField region. To bind a style to this <code>Region</code> use
	* the name <code>PasswordField</code>.
	*/
	public static var PASSWORD_FIELD(default, null) : Region;
	
	/**
	* PopupMenu region. To bind a style to this <code>Region</code> use
	* the name <code>PopupMenu</code>.
	*/
	public static var POPUP_MENU(default, null) : Region;
	
	/**
	* PopupMenuSeparator region. To bind a style to this <code>Region</code>
	* use the name <code>PopupMenuSeparator</code>.
	*/
	public static var POPUP_MENU_SEPARATOR(default, null) : Region;
	
	/**
	* ProgressBar region. To bind a style to this <code>Region</code>
	* use the name <code>ProgressBar</code>.
	*/
	public static var PROGRESS_BAR(default, null) : Region;
	
	/**
	* RadioButton region. To bind a style to this <code>Region</code>
	* use the name <code>RadioButton</code>.
	*/
	public static var RADIO_BUTTON(default, null) : Region;
	
	/**
	* RegionButtonMenuItem region. To bind a style to this <code>Region</code>
	* use the name <code>RadioButtonMenuItem</code>.
	*/
	public static var RADIO_BUTTON_MENU_ITEM(default, null) : Region;
	
	/**
	* RootPane region. To bind a style to this <code>Region</code> use
	* the name <code>RootPane</code>.
	*/
	public static var ROOT_PANE(default, null) : Region;
	
	/**
	* ScrollBar region. To bind a style to this <code>Region</code> use
	* the name <code>ScrollBar</code>.
	*/
	public static var SCROLL_BAR(default, null) : Region;
	
	/**
	* Track of the ScrollBar. To bind a style to this <code>Region</code> use
	* the name <code>ScrollBarTrack</code>.
	*/
	public static var SCROLL_BAR_TRACK(default, null) : Region;
	
	/**
	* Thumb of the ScrollBar. The thumb is the region of the ScrollBar
	* that gives a graphical depiction of what percentage of the View is
	* currently visible. To bind a style to this <code>Region</code> use
	* the name <code>ScrollBarThumb</code>.
	*/
	public static var SCROLL_BAR_THUMB(default, null) : Region;
	
	/**
	* ScrollPane region. To bind a style to this <code>Region</code> use
	* the name <code>ScrollPane</code>.
	*/
	public static var SCROLL_PANE(default, null) : Region;
	
	/**
	* Separator region. To bind a style to this <code>Region</code> use
	* the name <code>Separator</code>.
	*/
	public static var SEPARATOR(default, null) : Region;
	
	/**
	* Slider region. To bind a style to this <code>Region</code> use
	* the name <code>Slider</code>.
	*/
	public static var SLIDER(default, null) : Region;
	
	/**
	* Track of the Slider. To bind a style to this <code>Region</code> use
	* the name <code>SliderTrack</code>.
	*/
	public static var SLIDER_TRACK(default, null) : Region;
	
	/**
	* Thumb of the Slider. The thumb of the Slider identifies the current
	* value. To bind a style to this <code>Region</code> use the name
	* <code>SliderThumb</code>.
	*/
	public static var SLIDER_THUMB(default, null) : Region;
	
	/**
	* Spinner region. To bind a style to this <code>Region</code> use the name
	* <code>Spinner</code>.
	*/
	public static var SPINNER(default, null) : Region;
	
	/**
	* SplitPane region. To bind a style to this <code>Region</code> use the name
	* <code>SplitPane</code>.
	*/
	public static var SPLIT_PANE(default, null) : Region;
	
	/**
	* Divider of the SplitPane. To bind a style to this <code>Region</code>
	* use the name <code>SplitPaneDivider</code>.
	*/
	public static var SPLIT_PANE_DIVIDER(default, null) : Region;
	
	/**
	* TabbedPane region. To bind a style to this <code>Region</code> use
	* the name <code>TabbedPane</code>.
	*/
	public static var TABBED_PANE(default, null) : Region;
	
	/**
	* Region of a TabbedPane for one tab. To bind a style to this
	* <code>Region</code> use the name <code>TabbedPaneTab</code>.
	*/
	public static var TABBED_PANE_TAB(default, null) : Region;
	
	/**
	* Region of a TabbedPane containing the tabs. To bind a style to this
	* <code>Region</code> use the name <code>TabbedPaneTabArea</code>.
	*/
	public static var TABBED_PANE_TAB_AREA(default, null) : Region;
	
	/**
	* Region of a TabbedPane containing the content. To bind a style to this
	* <code>Region</code> use the name <code>TabbedPaneContent</code>.
	*/
	public static var TABBED_PANE_CONTENT(default, null) : Region;
	
	/**
	* Table region. To bind a style to this <code>Region</code> use
	* the name <code>Table</code>.
	*/
	public static var TABLE(default, null) : Region;
	
	/**
	* TableHeader region. To bind a style to this <code>Region</code> use
	* the name <code>TableHeader</code>.
	*/
	public static var TABLE_HEADER(default, null) : Region;
	
	/**
	* TextArea region. To bind a style to this <code>Region</code> use
	* the name <code>TextArea</code>.
	*/
	public static var TEXT_AREA(default, null) : Region;
	
	/**
	* TextField region. To bind a style to this <code>Region</code> use
	* the name <code>TextField</code>.
	*/
	public static var TEXT_FIELD(default, null) : Region;
	
	/**
	* TextPane region. To bind a style to this <code>Region</code> use
	* the name <code>TextPane</code>.
	*/
	public static var TEXT_PANE(default, null) : Region;
	
	/**
	* ToggleButton region. To bind a style to this <code>Region</code> use
	* the name <code>ToggleButton</code>.
	*/
	public static var TOGGLE_BUTTON(default, null) : Region;
	
	/**
	* ToolBar region. To bind a style to this <code>Region</code> use
	* the name <code>ToolBar</code>.
	*/
	public static var TOOL_BAR(default, null) : Region;
	
	/**
	* Region of the ToolBar containing the content. To bind a style to this
	* <code>Region</code> use the name <code>ToolBarContent</code>.
	*/
	public static var TOOL_BAR_CONTENT(default, null) : Region;
	
	/**
	* Region for the Window containing the ToolBar. To bind a style to this
	* <code>Region</code> use the name <code>ToolBarDragWindow</code>.
	*/
	public static var TOOL_BAR_DRAG_WINDOW(default, null) : Region;
	
	/**
	* ToolTip region. To bind a style to this <code>Region</code> use
	* the name <code>ToolTip</code>.
	*/
	public static var TOOL_TIP(default, null) : Region;
	
	/**
	* ToolBar separator region. To bind a style to this <code>Region</code> use
	* the name <code>ToolBarSeparator</code>.
	*/
	public static var TOOL_BAR_SEPARATOR(default, null) : Region;
	
	/**
	* Tree region. To bind a style to this <code>Region</code> use the name
	* <code>Tree</code>.
	*/
	public static var TREE(default, null) : Region;
	
	/**
	* Region of the Tree for one cell. To bind a style to this
	* <code>Region</code> use the name <code>TreeCell</code>.
	*/
	public static var TREE_CELL(default, null) : Region;
	
	/**
	* Viewport region. To bind a style to this <code>Region</code> use
	* the name <code>Viewport</code>.
	*/
	public static var VIEWPORT(default, null) : Region;
	
	/**
	* Creates a Region with the specified name. This should only be
	* used if you are creating your own <code>JComponent</code> subclass
	* with a custom <code>ComponentUI</code> class.
	*
	* @param name Name of the region
	* @param ui String that will be returned from
	*           <code>component.getUIClassID</code>. This will be null
	*           if this is a subregion.
	* @param subregion Whether or not this is a subregion.
	*/
	@:overload private function new(name : String, ui : String, subregion : Bool) : Void;
	
	/**
	* Returns true if the Region is a subregion of a Component, otherwise
	* false. For example, <code>Region.BUTTON</code> corresponds do a
	* <code>Component</code> so that <code>Region.BUTTON.isSubregion()</code>
	* returns false.
	*
	* @return true if the Region is a subregion of a Component.
	*/
	@:overload public function isSubregion() : Bool;
	
	/**
	* Returns the name of the region.
	*
	* @return name of the Region.
	*/
	@:overload public function getName() : String;
	
	/**
	* Returns the name of the Region.
	*
	* @return name of the Region.
	*/
	@:overload public function toString() : String;
	
	
}
