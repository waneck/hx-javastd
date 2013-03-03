package javax.swing;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class LookAndFeel
{
	/**
	* Convenience method for setting a component's foreground
	* and background color properties with values from the
	* defaults.  The properties are only set if the current
	* value is either {@code null} or a {@code UIResource}.
	*
	* @param c component to set the colors on
	* @param defaultBgName key for the background
	* @param defaultFgName key for the foreground
	*
	* @see #installColorsAndFont
	* @see UIManager#getColor
	* @throws NullPointerException as described in
	*         <a href="#exceptions">exceptions</a>
	*/
	@:overload @:public @:static public static function installColors(c : javax.swing.JComponent, defaultBgName : String, defaultFgName : String) : Void;
	
	/**
	* Convenience method for setting a component's foreground,
	* background and font properties with values from the
	* defaults.  The properties are only set if the current
	* value is either {@code null} or a {@code UIResource}.
	*
	* @param c component set to the colors and font on
	* @param defaultBgName key for the background
	* @param defaultFgName key for the foreground
	* @param defaultFontName key for the font
	* @throws NullPointerException as described in
	*         <a href="#exceptions">exceptions</a>
	*
	* @see #installColors
	* @see UIManager#getColor
	* @see UIManager#getFont
	*/
	@:overload @:public @:static public static function installColorsAndFont(c : javax.swing.JComponent, defaultBgName : String, defaultFgName : String, defaultFontName : String) : Void;
	
	/**
	* Convenience method for setting a component's border property with
	* a value from the defaults. The border is only set if the border is
	* {@code null} or an instance of {@code UIResource}.
	*
	* @param c component to set the border on
	* @param defaultBorderName key specifying the border
	* @throws NullPointerException as described in
	*         <a href="#exceptions">exceptions</a>
	*/
	@:overload @:public @:static public static function installBorder(c : javax.swing.JComponent, defaultBorderName : String) : Void;
	
	/**
	* Convenience method for uninstalling a border. If the border of
	* the component is a {@code UIResource}, it is set to {@code
	* null}.
	*
	* @param c component to uninstall the border on
	* @throws NullPointerException if {@code c} is {@code null}
	*/
	@:overload @:public @:static public static function uninstallBorder(c : javax.swing.JComponent) : Void;
	
	/**
	* Convenience method for installing a property with the specified name
	* and value on a component if that property has not already been set
	* by the developer.  This method is intended to be used by
	* ui delegate instances that need to specify a default value for a
	* property of primitive type (boolean, int, ..), but do not wish
	* to override a value set by the client.  Since primitive property
	* values cannot be wrapped with the {@code UIResource} marker, this method
	* uses private state to determine whether the property has been set
	* by the client.
	*
	* @throws IllegalArgumentException if the specified property is not
	*         one which can be set using this method
	* @throws ClassCastException if the property value has not been set
	*         by the developer and the type does not match the property's type
	* @throws NullPointerException if {@code c} is {@code null}, or the
	*         named property has not been set by the developer and
	*         {@code propertyValue} is {@code null}
	* @param c target component to set the property on
	* @param propertyName name of the property to set
	* @param propertyValue value of the property
	* @since 1.5
	*/
	@:require(java5) @:overload @:public @:static public static function installProperty(c : javax.swing.JComponent, propertyName : String, propertyValue : Dynamic) : Void;
	
	/**
	* Convenience method for building an array of {@code
	* KeyBindings}. While this method is not deprecated, developers
	* should instead use {@code ActionMap} and {@code InputMap} for
	* supplying key bindings.
	* <p>
	* This method returns an array of {@code KeyBindings}, one for each
	* alternating {@code key-action} pair in {@code keyBindingList}.
	* A {@code key} can either be a {@code String} in the format
	* specified by the <code>KeyStroke.getKeyStroke</code> method, or
	* a {@code KeyStroke}. The {@code action} part of the pair is a
	* {@code String} that corresponds to the name of the {@code
	* Action}.
	* <p>
	* The following example illustrates creating a {@code KeyBinding} array
	* from six alternating {@code key-action} pairs:
	* <pre>
	*  JTextComponent.KeyBinding[] multilineBindings = makeKeyBindings( new Object[] {
	*          "UP", DefaultEditorKit.upAction,
	*        "DOWN", DefaultEditorKit.downAction,
	*     "PAGE_UP", DefaultEditorKit.pageUpAction,
	*   "PAGE_DOWN", DefaultEditorKit.pageDownAction,
	*       "ENTER", DefaultEditorKit.insertBreakAction,
	*         "TAB", DefaultEditorKit.insertTabAction
	*  });
	* </pre>
	* If {@code keyBindingList's} length is odd, the last element is
	* ignored.
	* <p>
	* Supplying a {@code null} value for either the {@code key} or
	* {@code action} part of the {@code key-action} pair results in
	* creating a {@code KeyBinding} with the corresponding value
	* {@code null}. As other parts of Swing's expect {@code non-null} values
	* in a {@code KeyBinding}, you should avoid supplying {@code null} as
	* either the {@code key} or {@code action} part of the {@code key-action}
	* pair.
	*
	* @param keyBindingList an array of {@code key-action} pairs
	* @return an array of {@code KeyBindings}
	* @throws NullPointerException if {@code keyBindingList} is {@code null}
	* @throws ClassCastException if the {@code key} part of the pair is
	*         not a {@code KeyStroke} or {@code String}, or the
	*         {@code action} part of the pair is not a {@code String}
	* @see ActionMap
	* @see InputMap
	* @see KeyStroke#getKeyStroke
	*/
	@:overload @:public @:static public static function makeKeyBindings(keyBindingList : java.NativeArray<Dynamic>) : java.NativeArray<javax.swing.text.JTextComponent.JTextComponent_KeyBinding>;
	
	/**
	* Creates a {@code InputMapUIResource} from <code>keys</code>. This is
	* a convenience method for creating a new {@code InputMapUIResource},
	* invoking {@code loadKeyBindings(map, keys)}, and returning the
	* {@code InputMapUIResource}.
	*
	* @param keys alternating pairs of {@code keystroke-action key}
	*        pairs as described in {@link #loadKeyBindings}
	* @return newly created and populated {@code InputMapUIResource}
	* @see #loadKeyBindings
	*
	* @since 1.3
	*/
	@:require(java3) @:overload @:public @:static public static function makeInputMap(keys : java.NativeArray<Dynamic>) : javax.swing.InputMap;
	
	/**
	* Creates a {@code ComponentInputMapUIResource} from
	* <code>keys</code>. This is a convenience method for creating a
	* new {@code ComponentInputMapUIResource}, invoking {@code
	* loadKeyBindings(map, keys)}, and returning the {@code
	* ComponentInputMapUIResource}.
	*
	* @param c component to create the {@code ComponentInputMapUIResource}
	*          with
	* @param keys alternating pairs of {@code keystroke-action key}
	*        pairs as described in {@link #loadKeyBindings}
	* @return newly created and populated {@code InputMapUIResource}
	* @throws IllegalArgumentException if {@code c} is {@code null}
	*
	* @see #loadKeyBindings
	* @see ComponentInputMapUIResource
	*
	* @since 1.3
	*/
	@:require(java3) @:overload @:public @:static public static function makeComponentInputMap(c : javax.swing.JComponent, keys : java.NativeArray<Dynamic>) : javax.swing.ComponentInputMap;
	
	/**
	* Populates an {@code InputMap} with the specified bindings.
	* The bindings are supplied as a list of alternating
	* {@code keystroke-action key} pairs. The {@code keystroke} is either
	* an instance of {@code KeyStroke}, or a {@code String}
	* that identifies the {@code KeyStroke} for the binding. Refer
	* to {@code KeyStroke.getKeyStroke(String)} for the specific
	* format. The {@code action key} part of the pair is the key
	* registered in the {@code InputMap} for the {@code KeyStroke}.
	* <p>
	* The following illustrates loading an {@code InputMap} with two
	* {@code key-action} pairs:
	* <pre>
	*   LookAndFeel.loadKeyBindings(inputMap, new Object[] {
	*     "control X", "cut",
	*     "control V", "paste"
	*   });
	* </pre>
	* <p>
	* Supplying a {@code null} list of bindings ({@code keys}) does not
	* change {@code retMap} in any way.
	* <p>
	* Specifying a {@code null} {@code action key} results in
	* removing the {@code keystroke's} entry from the {@code InputMap}.
	* A {@code null} {@code keystroke} is ignored.
	*
	* @param retMap {@code InputMap} to add the {@code key-action}
	*               pairs to
	* @param keys bindings to add to {@code retMap}
	* @throws NullPointerException if {@code keys} is
	*         {@code non-null}, not empty, and {@code retMap} is
	*         {@code null}
	*
	* @see KeyStroke#getKeyStroke(String)
	* @see InputMap
	*
	* @since 1.3
	*/
	@:require(java3) @:overload @:public @:static public static function loadKeyBindings(retMap : javax.swing.InputMap, keys : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Creates and returns a {@code UIDefault.LazyValue} that loads an
	* image. The returned value is an implementation of {@code
	* UIDefaults.LazyValue}. When {@code createValue} is invoked on
	* the returned object, the image is loaded. If the image is {@code
	* non-null}, it is then wrapped in an {@code Icon} that implements {@code
	* UIResource}. The image is loaded using {@code
	* Class.getResourceAsStream(gifFile)}.
	* <p>
	* This method does not check the arguments in any way. It is
	* strongly recommended that {@code non-null} values are supplied else
	* exceptions may occur when {@code createValue} is invoked on the
	* returned object.
	*
	* @param baseClass {@code Class} used to load the resource
	* @param gifFile path to the image to load
	* @return a {@code UIDefaults.LazyValue}; when resolved the
	*         {@code LazyValue} loads the specified image
	* @see UIDefaults.LazyValue
	* @see Icon
	* @see Class#getResourceAsStream(String)
	*/
	@:overload @:public @:static public static function makeIcon(baseClass : Class<Dynamic>, gifFile : String) : Dynamic;
	
	/**
	* Returns the <code>LayoutStyle</code> for this look
	* and feel.  This never returns {@code null}.
	* <p>
	* You generally don't use the <code>LayoutStyle</code> from
	* the look and feel, instead use the <code>LayoutStyle</code>
	* method <code>getInstance</code>.
	*
	* @see LayoutStyle#getInstance
	* @return the <code>LayoutStyle</code> for this look and feel
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function getLayoutStyle() : javax.swing.LayoutStyle;
	
	/**
	* Invoked when the user attempts an invalid operation,
	* such as pasting into an uneditable <code>JTextField</code>
	* that has focus. The default implementation beeps. Subclasses
	* that wish different behavior should override this and provide
	* the additional feedback.
	*
	* @param component the <code>Component</code> the error occurred in,
	*                  may be <code>null</code>
	*                  indicating the error condition is not directly
	*                  associated with a <code>Component</code>
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function provideErrorFeedback(component : java.awt.Component) : Void;
	
	/**
	* Returns the value of the specified system desktop property by
	* invoking <code>Toolkit.getDefaultToolkit().getDesktopProperty()</code>.
	* If the value of the specified property is {@code null},
	* {@code fallbackValue} is returned.
	*
	* @param systemPropertyName the name of the system desktop property being queried
	* @param fallbackValue the object to be returned as the value if the system value is null
	* @return the current value of the desktop property
	*
	* @see java.awt.Toolkit#getDesktopProperty
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:static public static function getDesktopPropertyValue(systemPropertyName : String, fallbackValue : Dynamic) : Dynamic;
	
	/**
	* Returns an <code>Icon</code> with a disabled appearance.
	* This method is used to generate a disabled <code>Icon</code> when
	* one has not been specified.  For example, if you create a
	* <code>JButton</code> and only specify an <code>Icon</code> via
	* <code>setIcon</code> this method will be called to generate the
	* disabled <code>Icon</code>. If {@code null} is passed as
	* <code>icon</code> this method returns {@code null}.
	* <p>
	* Some look and feels might not render the disabled {@code Icon}, in which
	* case they will ignore this.
	*
	* @param component {@code JComponent} that will display the {@code Icon},
	*         may be {@code null}
	* @param icon {@code Icon} to generate the disabled icon from
	* @return disabled {@code Icon}, or {@code null} if a suitable
	*         {@code Icon} can not be generated
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getDisabledIcon(component : javax.swing.JComponent, icon : javax.swing.Icon) : javax.swing.Icon;
	
	/**
	* Returns an <code>Icon</code> for use by disabled
	* components that are also selected. This method is used to generate an
	* <code>Icon</code> for components that are in both the disabled and
	* selected states but do not have a specific <code>Icon</code> for this
	* state.  For example, if you create a <code>JButton</code> and only
	* specify an <code>Icon</code> via <code>setIcon</code> this method
	* will be called to generate the disabled and selected
	* <code>Icon</code>. If {@code null} is passed as <code>icon</code> this
	* methods returns {@code null}.
	* <p>
	* Some look and feels might not render the disabled and selected
	* {@code Icon}, in which case they will ignore this.
	*
	* @param component {@code JComponent} that will display the {@code Icon},
	*        may be {@code null}
	* @param icon {@code Icon} to generate disabled and selected icon from
	* @return disabled and selected icon, or {@code null} if a suitable
	*         {@code Icon} can not be generated.
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getDisabledSelectedIcon(component : javax.swing.JComponent, icon : javax.swing.Icon) : javax.swing.Icon;
	
	/**
	* Return a short string that identifies this look and feel, e.g.
	* "CDE/Motif".  This string should be appropriate for a menu item.
	* Distinct look and feels should have different names, e.g.
	* a subclass of MotifLookAndFeel that changes the way a few components
	* are rendered should be called "CDE/Motif My Way"; something
	* that would be useful to a user trying to select a L&F from a list
	* of names.
	*
	* @return short identifier for the look and feel
	*/
	@:overload @:public @:abstract public function getName() : String;
	
	/**
	* Return a string that identifies this look and feel.  This string
	* will be used by applications/services that want to recognize
	* well known look and feel implementations.  Presently
	* the well known names are "Motif", "Windows", "Mac", "Metal".  Note
	* that a LookAndFeel derived from a well known superclass
	* that doesn't make any fundamental changes to the look or feel
	* shouldn't override this method.
	*
	* @return identifier for the look and feel
	*/
	@:overload @:public @:abstract public function getID() : String;
	
	/**
	* Return a one line description of this look and feel implementation,
	* e.g. "The CDE/Motif Look and Feel".   This string is intended for
	* the user, e.g. in the title of a window or in a ToolTip message.
	*
	* @return short description for the look and feel
	*/
	@:overload @:public @:abstract public function getDescription() : String;
	
	/**
	* Returns {@code true} if the <code>LookAndFeel</code> returned
	* <code>RootPaneUI</code> instances support providing {@code Window}
	* decorations in a <code>JRootPane</code>.
	* <p>
	* The default implementation returns {@code false}, subclasses that
	* support {@code Window} decorations should override this and return
	* {@code true}.
	*
	* @return {@code true} if the {@code RootPaneUI} instances created by
	*         this look and feel support client side decorations
	* @see JDialog#setDefaultLookAndFeelDecorated
	* @see JFrame#setDefaultLookAndFeelDecorated
	* @see JRootPane#setWindowDecorationStyle
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getSupportsWindowDecorations() : Bool;
	
	/**
	* If the underlying platform has a "native" look and feel, and
	* this is an implementation of it, return {@code true}.  For
	* example, when the underlying platform is Solaris running CDE
	* a CDE/Motif look and feel implementation would return {@code
	* true}.
	*
	* @return {@code true} if this look and feel represents the underlying
	*         platform look and feel
	*/
	@:overload @:public @:abstract public function isNativeLookAndFeel() : Bool;
	
	/**
	* Return {@code true} if the underlying platform supports and or permits
	* this look and feel.  This method returns {@code false} if the look
	* and feel depends on special resources or legal agreements that
	* aren't defined for the current platform.
	*
	*
	* @return {@code true} if this is a supported look and feel
	* @see UIManager#setLookAndFeel
	*/
	@:overload @:public @:abstract public function isSupportedLookAndFeel() : Bool;
	
	/**
	* Initializes the look and feel. While this method is public,
	* it should only be invoked by the {@code UIManager} when a
	* look and feel is installed as the current look and feel. This
	* method is invoked before the {@code UIManager} invokes
	* {@code getDefaults}. This method is intended to perform any
	* initialization for the look and feel. Subclasses
	* should do any one-time setup they need here, rather than
	* in a static initializer, because look and feel class objects
	* may be loaded just to discover that {@code isSupportedLookAndFeel()}
	* returns {@code false}.
	*
	* @see #uninitialize
	* @see UIManager#setLookAndFeel
	*/
	@:overload @:public public function initialize() : Void;
	
	/**
	* Uninitializes the look and feel. While this method is public,
	* it should only be invoked by the {@code UIManager} when
	* the look and feel is uninstalled. For example,
	* {@code UIManager.setLookAndFeel} invokes this when the look and
	* feel is changed.
	* <p>
	* Subclasses may choose to free up some resources here.
	*
	* @see #initialize
	* @see UIManager#setLookAndFeel
	*/
	@:overload @:public public function uninitialize() : Void;
	
	/**
	* Returns the look and feel defaults. While this method is public,
	* it should only be invoked by the {@code UIManager} when the
	* look and feel is set as the current look and feel and after
	* {@code initialize} has been invoked.
	*
	* @return the look and feel defaults
	* @see #initialize
	* @see #uninitialize
	* @see UIManager#setLookAndFeel
	*/
	@:overload @:public public function getDefaults() : javax.swing.UIDefaults;
	
	/**
	* Returns a string that displays and identifies this
	* object's properties.
	*
	* @return a String representation of this object
	*/
	@:overload @:public public function toString() : String;
	
	
}
