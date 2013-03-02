package sun.swing;
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
extern class SwingUtilities2
{
	/**
	* The <code>AppContext</code> key for our one <code>LAFState</code>
	* instance.
	*/
	public static var LAF_STATE_KEY(default, null) : Dynamic;
	
	public static var DEFAULT_FRC(default, null) : java.awt.font.FontRenderContext;
	
	/**
	* A JComponent client property is used to determine text aa settings.
	* To avoid having this property persist between look and feels changes
	* the value of the property is set to null in JComponent.setUI
	*/
	public static var AA_TEXT_PROPERTY_KEY(default, null) : Dynamic;
	
	/**
	* Attribute key for the content elements.  If it is set on an element, the
	* element is considered to be a line break.
	*/
	public static var IMPLIED_CR(default, null) : String;
	
	/**
	* Key used in client properties used to indicate that the
	* <code>ComponentUI</code> of the JComponent instance should be returned.
	*/
	public static var COMPONENT_UI_PROPERTY_KEY(default, null) : Dynamic;
	
	/** Client Property key for the text maximal offsets for BasicMenuItemUI */
	public static var BASICMENUITEMUI_MAX_TEXT_OFFSET(default, null) : sun.swing.StringUIClientPropertyKey;
	
	/**
	* checks whether TextLayout is required to handle characters.
	*
	* @param text characters to be tested
	* @param start start
	* @param limit limit
	* @return <tt>true</tt>  if TextLayout is required
	*         <tt>false</tt> if TextLayout is not required
	*/
	@:overload @:final public static function isComplexLayout(text : java.NativeArray<java.StdTypes.Char16>, start : Int, limit : Int) : Bool;
	
	/**
	* Returns whether or not text should be drawn antialiased.
	*
	* @param c JComponent to test.
	* @return Whether or not text should be drawn antialiased for the
	*         specified component.
	*/
	@:overload public static function drawTextAntialiased(c : javax.swing.JComponent) : sun.swing.SwingUtilities2.SwingUtilities2_AATextInfo;
	
	/**
	* Returns the left side bearing of the first character of string. The
	* left side bearing is calculated from the passed in
	* FontMetrics.  If the passed in String is less than one
	* character {@code 0} is returned.
	*
	* @param c JComponent that will display the string
	* @param fm FontMetrics used to measure the String width
	* @param string String to get the left side bearing for.
	* @throws NullPointerException if {@code string} is {@code null}
	*
	* @return the left side bearing of the first character of string
	* or {@code 0} if the string is empty
	*/
	@:overload public static function getLeftSideBearing(c : javax.swing.JComponent, fm : java.awt.FontMetrics, string : String) : Int;
	
	/**
	* Returns the left side bearing of the first character of string. The
	* left side bearing is calculated from the passed in FontMetrics.
	*
	* @param c JComponent that will display the string
	* @param fm FontMetrics used to measure the String width
	* @param firstChar Character to get the left side bearing for.
	*/
	@:overload public static function getLeftSideBearing(c : javax.swing.JComponent, fm : java.awt.FontMetrics, firstChar : java.StdTypes.Char16) : Int;
	
	/**
	* Returns the FontMetrics for the current Font of the passed
	* in Graphics.  This method is used when a Graphics
	* is available, typically when painting.  If a Graphics is not
	* available the JComponent method of the same name should be used.
	* <p>
	* Callers should pass in a non-null JComponent, the exception
	* to this is if a JComponent is not readily available at the time of
	* painting.
	* <p>
	* This does not necessarily return the FontMetrics from the
	* Graphics.
	*
	* @param c JComponent requesting FontMetrics, may be null
	* @param g Graphics Graphics
	*/
	@:overload public static function getFontMetrics(c : javax.swing.JComponent, g : java.awt.Graphics) : java.awt.FontMetrics;
	
	/**
	* Returns the FontMetrics for the specified Font.
	* This method is used when a Graphics is available, typically when
	* painting.  If a Graphics is not available the JComponent method of
	* the same name should be used.
	* <p>
	* Callers should pass in a non-null JComonent, the exception
	* to this is if a JComponent is not readily available at the time of
	* painting.
	* <p>
	* This does not necessarily return the FontMetrics from the
	* Graphics.
	*
	* @param c JComponent requesting FontMetrics, may be null
	* @param c Graphics Graphics
	* @param font Font to get FontMetrics for
	*/
	@:overload public static function getFontMetrics(c : javax.swing.JComponent, g : java.awt.Graphics, font : java.awt.Font) : java.awt.FontMetrics;
	
	/**
	* Returns the width of the passed in String.
	* If the passed String is <code>null</code>, returns zero.
	*
	* @param c JComponent that will display the string, may be null
	* @param fm FontMetrics used to measure the String width
	* @param string String to get the width of
	*/
	@:overload public static function stringWidth(c : javax.swing.JComponent, fm : java.awt.FontMetrics, string : String) : Int;
	
	/**
	* Clips the passed in String to the space provided.
	*
	* @param c JComponent that will display the string, may be null
	* @param fm FontMetrics used to measure the String width
	* @param string String to display
	* @param availTextWidth Amount of space that the string can be drawn in
	* @return Clipped string that can fit in the provided space.
	*/
	@:overload public static function clipStringIfNecessary(c : javax.swing.JComponent, fm : java.awt.FontMetrics, string : String, availTextWidth : Int) : String;
	
	/**
	* Clips the passed in String to the space provided.  NOTE: this assumes
	* the string does not fit in the available space.
	*
	* @param c JComponent that will display the string, may be null
	* @param fm FontMetrics used to measure the String width
	* @param string String to display
	* @param availTextWidth Amount of space that the string can be drawn in
	* @return Clipped string that can fit in the provided space.
	*/
	@:overload public static function clipString(c : javax.swing.JComponent, fm : java.awt.FontMetrics, string : String, availTextWidth : Int) : String;
	
	/**
	* Draws the string at the specified location.
	*
	* @param c JComponent that will display the string, may be null
	* @param g Graphics to draw the text to
	* @param text String to display
	* @param x X coordinate to draw the text at
	* @param y Y coordinate to draw the text at
	*/
	@:overload public static function drawString(c : javax.swing.JComponent, g : java.awt.Graphics, text : String, x : Int, y : Int) : Void;
	
	/**
	* Draws the string at the specified location underlining the specified
	* character.
	*
	* @param c JComponent that will display the string, may be null
	* @param g Graphics to draw the text to
	* @param text String to display
	* @param underlinedIndex Index of a character in the string to underline
	* @param x X coordinate to draw the text at
	* @param y Y coordinate to draw the text at
	*/
	@:overload public static function drawStringUnderlineCharAt(c : javax.swing.JComponent, g : java.awt.Graphics, text : String, underlinedIndex : Int, x : Int, y : Int) : Void;
	
	/**
	* A variation of locationToIndex() which only returns an index if the
	* Point is within the actual bounds of a list item (not just in the cell)
	* and if the JList has the "List.isFileList" client property set.
	* Otherwise, this method returns -1.
	* This is used to make WindowsL&F JFileChooser act like native dialogs.
	*/
	@:overload public static function loc2IndexFileList(list : javax.swing.JList<Dynamic>, point : java.awt.Point) : Int;
	
	/**
	* Returns true if the given point is outside the preferredSize of the
	* item at the given row of the table.  (Column must be 0).
	* Does not check the "Table.isFileList" property. That should be checked
	* before calling this method.
	* This is used to make WindowsL&F JFileChooser act like native dialogs.
	*/
	@:overload public static function pointOutsidePrefSize(table : javax.swing.JTable, row : Int, column : Int, p : java.awt.Point) : Bool;
	
	/**
	* Set the lead and anchor without affecting selection.
	*/
	@:overload public static function setLeadAnchorWithoutSelection(model : javax.swing.ListSelectionModel, lead : Int, anchor : Int) : Void;
	
	/**
	* Ignore mouse events if the component is null, not enabled, the event
	* is not associated with the left mouse button, or the event has been
	* consumed.
	*/
	@:overload public static function shouldIgnore(me : java.awt.event.MouseEvent, c : javax.swing.JComponent) : Bool;
	
	/**
	* Request focus on the given component if it doesn't already have it
	* and <code>isRequestFocusEnabled()</code> returns true.
	*/
	@:overload public static function adjustFocus(c : javax.swing.JComponent) : Void;
	
	/**
	* The following draw functions have the same semantic as the
	* Graphics methods with the same names.
	*
	* this is used for printing
	*/
	@:overload public static function drawChars(c : javax.swing.JComponent, g : java.awt.Graphics, data : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int, x : Int, y : Int) : Int;
	
	/*
	* see documentation for drawChars
	* returns the advance
	*/
	@:overload public static function drawString(c : javax.swing.JComponent, g : java.awt.Graphics, iterator : java.text.AttributedCharacterIterator, x : Int, y : Int) : Single;
	
	/*
	* Tries it best to get Graphics2D out of the given Graphics
	* returns null if can not derive it.
	*/
	@:overload public static function getGraphics2D(g : java.awt.Graphics) : java.awt.Graphics2D;
	
	/*
	* Returns FontRenderContext associated with Component.
	* FontRenderContext from Component.getFontMetrics is associated
	* with the component.
	*
	* Uses Component.getFontMetrics to get the FontRenderContext from.
	* see JComponent.getFontMetrics and TextLayoutStrategy.java
	*/
	@:overload public static function getFontRenderContext(c : java.awt.Component) : java.awt.font.FontRenderContext;
	
	/*
	* This method is to be used only for JComponent.getFontMetrics.
	* In all other places to get FontMetrics we need to use
	* JComponent.getFontMetrics.
	*
	*/
	@:overload public static function getFontMetrics(c : javax.swing.JComponent, font : java.awt.Font) : java.awt.FontMetrics;
	
	/**
	* Determines whether the SelectedTextColor should be used for painting text
	* foreground for the specified highlight.
	*
	* Returns true only if the highlight painter for the specified highlight
	* is the swing painter (whether inner class of javax.swing.text.DefaultHighlighter
	* or com.sun.java.swing.plaf.windows.WindowsTextUI) and its background color
	* is null or equals to the selection color of the text component.
	*
	* This is a hack for fixing both bugs 4761990 and 5003294
	*/
	@:overload public static function useSelectedTextColor(h : javax.swing.text.Highlighter.Highlighter_Highlight, c : javax.swing.text.JTextComponent) : Bool;
	
	/**
	* checks the security permissions for accessing system clipboard
	*
	* for untrusted context (see isTrustedContext) checks the
	* permissions for the current event being handled
	*
	*/
	@:overload public static function canAccessSystemClipboard() : Bool;
	
	/**
	* Returns true if EventQueue.getCurrentEvent() has the permissions to
	* access the system clipboard
	*/
	@:overload public static function canCurrentEventAccessSystemClipboard() : Bool;
	
	/**
	* Returns true if the given event has permissions to access the
	* system clipboard
	*
	* @param e AWTEvent to check
	*/
	@:overload public static function canEventAccessSystemClipboard(e : java.awt.AWTEvent) : Bool;
	
	@:overload public static function displayPropertiesToCSS(font : java.awt.Font, fg : java.awt.Color) : String;
	
	/**
	* Utility method that creates a <code>UIDefaults.LazyValue</code> that
	* creates an <code>ImageIcon</code> <code>UIResource</code> for the
	* specified image file name. The image is loaded using
	* <code>getResourceAsStream</code>, starting with a call to that method
	* on the base class parameter. If it cannot be found, searching will
	* continue through the base class' inheritance hierarchy, up to and
	* including <code>rootClass</code>.
	*
	* @param baseClass the first class to use in searching for the resource
	* @param rootClass an ancestor of <code>baseClass</code> to finish the
	*                  search at
	* @param imageFile the name of the file to be found
	* @return a lazy value that creates the <code>ImageIcon</code>
	*         <code>UIResource</code> for the image,
	*         or null if it cannot be found
	*/
	@:overload public static function makeIcon(baseClass : Class<Dynamic>, rootClass : Class<Dynamic>, imageFile : String) : Dynamic;
	
	/* Used to help decide if AA text rendering should be used, so
	* this local display test should be additionally qualified
	* against whether we have XRender support on both ends of the wire,
	* as with that support remote performance may be good enough to turn
	* on by default. An additional complication there is XRender does not
	* appear capable of performing gamma correction needed for LCD text.
	*/
	@:overload public static function isLocalDisplay() : Bool;
	
	/**
	* Returns an integer from the defaults table. If <code>key</code> does
	* not map to a valid <code>Integer</code>, or can not be convered from
	* a <code>String</code> to an integer, the value 0 is returned.
	*
	* @param key  an <code>Object</code> specifying the int.
	* @return the int
	*/
	@:overload public static function getUIDefaultsInt(key : Dynamic) : Int;
	
	/**
	* Returns an integer from the defaults table that is appropriate
	* for the given locale. If <code>key</code> does not map to a valid
	* <code>Integer</code>, or can not be convered from a <code>String</code>
	* to an integer, the value 0 is returned.
	*
	* @param key  an <code>Object</code> specifying the int. Returned value
	*             is 0 if <code>key</code> is not available,
	* @param l the <code>Locale</code> for which the int is desired
	* @return the int
	*/
	@:overload public static function getUIDefaultsInt(key : Dynamic, l : java.util.Locale) : Int;
	
	/**
	* Returns an integer from the defaults table. If <code>key</code> does
	* not map to a valid <code>Integer</code>, or can not be convered from
	* a <code>String</code> to an integer, <code>default</code> is
	* returned.
	*
	* @param key  an <code>Object</code> specifying the int. Returned value
	*             is 0 if <code>key</code> is not available,
	* @param defaultValue Returned value if <code>key</code> is not available,
	*                     or is not an Integer
	* @return the int
	*/
	@:overload public static function getUIDefaultsInt(key : Dynamic, defaultValue : Int) : Int;
	
	/**
	* Returns an integer from the defaults table that is appropriate
	* for the given locale. If <code>key</code> does not map to a valid
	* <code>Integer</code>, or can not be convered from a <code>String</code>
	* to an integer, <code>default</code> is returned.
	*
	* @param key  an <code>Object</code> specifying the int. Returned value
	*             is 0 if <code>key</code> is not available,
	* @param l the <code>Locale</code> for which the int is desired
	* @param defaultValue Returned value if <code>key</code> is not available,
	*                     or is not an Integer
	* @return the int
	*/
	@:overload public static function getUIDefaultsInt(key : Dynamic, l : java.util.Locale, defaultValue : Int) : Int;
	
	@:overload public static function compositeRequestFocus(component : java.awt.Component) : java.awt.Component;
	
	/**
	* Change focus to the visible component in {@code JTabbedPane}.
	* This is not a general-purpose method and is here only to permit
	* sharing code.
	*/
	@:overload public static function tabbedPaneChangeFocusTo(comp : java.awt.Component) : Bool;
	
	/**
	* Submits a value-returning task for execution on the EDT and
	* returns a Future representing the pending results of the task.
	*
	* @param task the task to submit
	* @return a Future representing pending completion of the task
	* @throws NullPointerException if the task is null
	*/
	@:overload public static function submit<V>(task : java.util.concurrent.Callable<V>) : java.util.concurrent.Future<V>;
	
	/**
	* Submits a Runnable task for execution on the EDT and returns a
	* Future representing that task.
	*
	* @param task the task to submit
	* @param result the result to return upon successful completion
	* @return a Future representing pending completion of the task,
	*         and whose <tt>get()</tt> method will return the given
	*         result value upon completion
	* @throws NullPointerException if the task is null
	*/
	@:overload public static function submit<V>(task : java.lang.Runnable, result : V) : java.util.concurrent.Future<V>;
	
	/**
	* Sets the {@code SKIP_CLICK_COUNT} client property on the component
	* if it is an instance of {@code JTextComponent} with a
	* {@code DefaultCaret}. This property, used for text components acting
	* as editors in a table or tree, tells {@code DefaultCaret} how many
	* clicks to skip before starting selection.
	*/
	@:overload public static function setSkipClickCount(comp : java.awt.Component, count : Int) : Void;
	
	/**
	* Return the MouseEvent's click count, possibly reduced by the value of
	* the component's {@code SKIP_CLICK_COUNT} client property. Clears
	* the {@code SKIP_CLICK_COUNT} property if the mouse event's click count
	* is 1. In order for clearing of the property to work correctly, there
	* must be a mousePressed implementation on the caller with this
	* call as the first line.
	*/
	@:overload public static function getAdjustedClickCount(comp : javax.swing.text.JTextComponent, e : java.awt.event.MouseEvent) : Int;
	
	/**
	* This method divides a rectangle into two or three sections along
	* the horizontal axis and determines which section the given point
	* lies in; used by drag and drop when calculating drop locations.
	* <p>
	* See the documentation for {@link #liesIn} for more information
	* on how the section is calculated.
	*
	* @param rect the rectangle
	* @param p the point the check
	* @param ltr {@code true} for left to right orientation,
	*        or {@code false} for right to left orientation
	* @param three {@code true} for three sections,
	*        or {@code false} for two
	*
	* @return the {@code Section} where the point lies
	*
	* @throws NullPointerException if {@code rect} or {@code p} are
	*         {@code null}
	*/
	@:overload public static function liesInHorizontal(rect : java.awt.Rectangle, p : java.awt.Point, ltr : Bool, three : Bool) : sun.swing.SwingUtilities2.SwingUtilities2_Section;
	
	/**
	* This method divides a rectangle into two or three sections along
	* the vertical axis and determines which section the given point
	* lies in; used by drag and drop when calculating drop locations.
	* <p>
	* See the documentation for {@link #liesIn} for more information
	* on how the section is calculated.
	*
	* @param rect the rectangle
	* @param p the point the check
	* @param three {@code true} for three sections,
	*        or {@code false} for two
	*
	* @return the {@code Section} where the point lies
	*
	* @throws NullPointerException if {@code rect} or {@code p} are
	*         {@code null}
	*/
	@:overload public static function liesInVertical(rect : java.awt.Rectangle, p : java.awt.Point, three : Bool) : sun.swing.SwingUtilities2.SwingUtilities2_Section;
	
	/**
	* Maps the index of the column in the view at
	* {@code viewColumnIndex} to the index of the column
	* in the table model.  Returns the index of the corresponding
	* column in the model.  If {@code viewColumnIndex}
	* is less than zero, returns {@code viewColumnIndex}.
	*
	* @param cm the table model
	* @param   viewColumnIndex     the index of the column in the view
	* @return  the index of the corresponding column in the model
	*
	* @see JTable#convertColumnIndexToModel(int)
	* @see javax.swing.plaf.basic.BasicTableHeaderUI
	*/
	@:overload public static function convertColumnIndexToModel(cm : javax.swing.table.TableColumnModel, viewColumnIndex : Int) : Int;
	
	/**
	* Maps the index of the column in the {@code cm} at
	* {@code modelColumnIndex} to the index of the column
	* in the view.  Returns the index of the
	* corresponding column in the view; returns {@code -1} if this column
	* is not being displayed. If {@code modelColumnIndex} is less than zero,
	* returns {@code modelColumnIndex}.
	*
	* @param cm the table model
	* @param modelColumnIndex the index of the column in the model
	* @return the index of the corresponding column in the view
	*
	* @see JTable#convertColumnIndexToView(int)
	* @see javax.swing.plaf.basic.BasicTableHeaderUI
	*/
	@:overload public static function convertColumnIndexToView(cm : javax.swing.table.TableColumnModel, modelColumnIndex : Int) : Int;
	
	
}
/* Presently this class assumes default fractional metrics.
* This may need to change to emulate future platform L&Fs.
*/
@:native('sun$swing$SwingUtilities2$AATextInfo') extern class SwingUtilities2_AATextInfo
{
	@:overload public static function getAATextInfo(lafCondition : Bool) : sun.swing.SwingUtilities2.SwingUtilities2_AATextInfo;
	
	/* These are rarely constructed objects, and only when a complete
	* UI is being updated, so the cost of the tests here is minimal
	* and saves tests elsewhere.
	* We test that the values are ones we support/expect.
	*/
	@:overload public function new(aaHint : Dynamic, lcdContrastHint : Null<Int>) : Void;
	
	
}
/**
* LSBCacheEntry is used to cache the left side bearing (lsb) for
* a particular <code>Font</code> and <code>FontRenderContext</code>.
* This only caches characters that fall in the range
* <code>MIN_CHAR_INDEX</code> to <code>MAX_CHAR_INDEX</code>.
*/
@:native('sun$swing$SwingUtilities2$LSBCacheEntry') @:internal extern class SwingUtilities2_LSBCacheEntry
{
	@:overload public function new(frc : java.awt.font.FontRenderContext, font : java.awt.Font) : Void;
	
	@:overload public function reset(frc : java.awt.font.FontRenderContext, font : java.awt.Font) : Void;
	
	@:overload public function getLeftSideBearing(aChar : java.StdTypes.Char16) : Int;
	
	@:overload public function equals(entry : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	
}
/**
* Used by the {@code liesIn} method to return which section
* the point lies in.
*
* @see #liesIn
*/
@:native('sun$swing$SwingUtilities2$Section') extern enum SwingUtilities2_Section
{
	/** The leading section */
	LEADING;
	/** The middle section */
	MIDDLE;
	/** The trailing section */
	TRAILING;
	
}

