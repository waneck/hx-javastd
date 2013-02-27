package javax.swing;
/*
* Copyright (c) 1997, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class UIManager implements java.io.Serializable
{
	/**
	* Returns an array of {@code LookAndFeelInfo}s representing the
	* {@code LookAndFeel} implementations currently available. The
	* <code>LookAndFeelInfo</code> objects can be used by an
	* application to construct a menu of look and feel options for
	* the user, or to determine which look and feel to set at startup
	* time. To avoid the penalty of creating numerous {@code
	* LookAndFeel} objects, {@code LookAndFeelInfo} maintains the
	* class name of the {@code LookAndFeel} class, not the actual
	* {@code LookAndFeel} instance.
	* <p>
	* The following example illustrates setting the current look and feel
	* from an instance of {@code LookAndFeelInfo}:
	* <pre>
	*   UIManager.setLookAndFeel(info.getClassName());
	* </pre>
	*
	* @return an array of <code>LookAndFeelInfo</code> objects
	* @see #setLookAndFeel
	*/
	@:overload public static function getInstalledLookAndFeels() : java.NativeArray<UIManager_LookAndFeelInfo>;
	
	/**
	* Sets the set of available look and feels. While this method does
	* not check to ensure all of the {@code LookAndFeelInfos} are
	* {@code non-null}, it is strongly recommended that only {@code non-null}
	* values are supplied in the {@code infos} array.
	*
	* @param infos set of <code>LookAndFeelInfo</code> objects specifying
	*        the available look and feels
	*
	* @see #getInstalledLookAndFeels
	* @throws NullPointerException if {@code infos} is {@code null}
	*/
	@:overload public static function setInstalledLookAndFeels(infos : java.NativeArray<UIManager_LookAndFeelInfo>) : Void;
	
	/**
	* Adds the specified look and feel to the set of available look
	* and feels. While this method allows a {@code null} {@code info},
	* it is strongly recommended that a {@code non-null} value be used.
	*
	* @param info a <code>LookAndFeelInfo</code> object that names the
	*          look and feel and identifies the class that implements it
	* @see #setInstalledLookAndFeels
	*/
	@:overload public static function installLookAndFeel(info : UIManager_LookAndFeelInfo) : Void;
	
	/**
	* Adds the specified look and feel to the set of available look
	* and feels. While this method does not check the
	* arguments in any way, it is strongly recommended that {@code
	* non-null} values be supplied.
	*
	* @param name descriptive name of the look and feel
	* @param className name of the class that implements the look and feel
	* @see #setInstalledLookAndFeels
	*/
	@:overload public static function installLookAndFeel(name : String, className : String) : Void;
	
	/**
	* Returns the current look and feel or <code>null</code>.
	*
	* @return current look and feel, or <code>null</code>
	* @see #setLookAndFeel
	*/
	@:overload public static function getLookAndFeel() : javax.swing.LookAndFeel;
	
	/**
	* Sets the current look and feel to {@code newLookAndFeel}.
	* If the current look and feel is {@code non-null} {@code
	* uninitialize} is invoked on it. If {@code newLookAndFeel} is
	* {@code non-null}, {@code initialize} is invoked on it followed
	* by {@code getDefaults}. The defaults returned from {@code
	* newLookAndFeel.getDefaults()} replace those of the defaults
	* from the previous look and feel. If the {@code newLookAndFeel} is
	* {@code null}, the look and feel defaults are set to {@code null}.
	* <p>
	* A value of {@code null} can be used to set the look and feel
	* to {@code null}. As the {@code LookAndFeel} is required for
	* most of Swing to function, setting the {@code LookAndFeel} to
	* {@code null} is strongly discouraged.
	* <p>
	* This is a JavaBeans bound property.
	*
	* @param newLookAndFeel {@code LookAndFeel} to install
	* @throws UnsupportedLookAndFeelException if
	*          {@code newLookAndFeel} is {@code non-null} and
	*          {@code newLookAndFeel.isSupportedLookAndFeel()} returns
	*          {@code false}
	* @see #getLookAndFeel
	*/
	@:overload public static function setLookAndFeel(newLookAndFeel : javax.swing.LookAndFeel) : Void;
	
	/**
	* Loads the {@code LookAndFeel} specified by the given class
	* name, using the current thread's context class loader, and
	* passes it to {@code setLookAndFeel(LookAndFeel)}.
	*
	* @param className  a string specifying the name of the class that implements
	*        the look and feel
	* @exception ClassNotFoundException if the <code>LookAndFeel</code>
	*           class could not be found
	* @exception InstantiationException if a new instance of the class
	*          couldn't be created
	* @exception IllegalAccessException if the class or initializer isn't accessible
	* @exception UnsupportedLookAndFeelException if
	*          <code>lnf.isSupportedLookAndFeel()</code> is false
	* @throws ClassCastException if {@code className} does not identify
	*         a class that extends {@code LookAndFeel}
	*/
	@:overload public static function setLookAndFeel(className : String) : Void;
	
	/**
	* Returns the name of the <code>LookAndFeel</code> class that implements
	* the native system look and feel if there is one, otherwise
	* the name of the default cross platform <code>LookAndFeel</code>
	* class. This value can be overriden by setting the
	* <code>swing.systemlaf</code> system property.
	*
	* @return the <code>String</code> of the <code>LookAndFeel</code>
	*          class
	*
	* @see #setLookAndFeel
	* @see #getCrossPlatformLookAndFeelClassName
	*/
	@:overload public static function getSystemLookAndFeelClassName() : String;
	
	/**
	* Returns the name of the <code>LookAndFeel</code> class that implements
	* the default cross platform look and feel -- the Java
	* Look and Feel (JLF).  This value can be overriden by setting the
	* <code>swing.crossplatformlaf</code> system property.
	*
	* @return  a string with the JLF implementation-class
	* @see #setLookAndFeel
	* @see #getSystemLookAndFeelClassName
	*/
	@:overload public static function getCrossPlatformLookAndFeelClassName() : String;
	
	/**
	* Returns the defaults. The returned defaults resolve using the
	* logic specified in the class documentation.
	*
	* @return a <code>UIDefaults</code> object containing the default values
	*/
	@:overload public static function getDefaults() : javax.swing.UIDefaults;
	
	/**
	* Returns a font from the defaults. If the value for {@code key} is
	* not a {@code Font}, {@code null} is returned.
	*
	* @param key  an <code>Object</code> specifying the font
	* @return the <code>Font</code> object
	* @throws NullPointerException if {@code key} is {@code null}
	*/
	@:overload public static function getFont(key : Dynamic) : java.awt.Font;
	
	/**
	* Returns a font from the defaults that is appropriate
	* for the given locale. If the value for {@code key} is
	* not a {@code Font}, {@code null} is returned.
	*
	* @param key  an <code>Object</code> specifying the font
	* @param l the <code>Locale</code> for which the font is desired; refer
	*        to {@code UIDefaults} for details on how a {@code null}
	*        {@code Locale} is handled
	* @return the <code>Font</code> object
	* @throws NullPointerException if {@code key} is {@code null}
	* @since 1.4
	*/
	@:require(java4) @:overload public static function getFont(key : Dynamic, l : java.util.Locale) : java.awt.Font;
	
	/**
	* Returns a color from the defaults. If the value for {@code key} is
	* not a {@code Color}, {@code null} is returned.
	*
	* @param key  an <code>Object</code> specifying the color
	* @return the <code>Color</code> object
	* @throws NullPointerException if {@code key} is {@code null}
	*/
	@:overload public static function getColor(key : Dynamic) : java.awt.Color;
	
	/**
	* Returns a color from the defaults that is appropriate
	* for the given locale. If the value for {@code key} is
	* not a {@code Color}, {@code null} is returned.
	*
	* @param key  an <code>Object</code> specifying the color
	* @param l the <code>Locale</code> for which the color is desired; refer
	*        to {@code UIDefaults} for details on how a {@code null}
	*        {@code Locale} is handled
	* @return the <code>Color</code> object
	* @throws NullPointerException if {@code key} is {@code null}
	* @since 1.4
	*/
	@:require(java4) @:overload public static function getColor(key : Dynamic, l : java.util.Locale) : java.awt.Color;
	
	/**
	* Returns an <code>Icon</code> from the defaults. If the value for
	* {@code key} is not an {@code Icon}, {@code null} is returned.
	*
	* @param key  an <code>Object</code> specifying the icon
	* @return the <code>Icon</code> object
	* @throws NullPointerException if {@code key} is {@code null}
	*/
	@:overload public static function getIcon(key : Dynamic) : javax.swing.Icon;
	
	/**
	* Returns an <code>Icon</code> from the defaults that is appropriate
	* for the given locale. If the value for
	* {@code key} is not an {@code Icon}, {@code null} is returned.
	*
	* @param key  an <code>Object</code> specifying the icon
	* @param l the <code>Locale</code> for which the icon is desired; refer
	*        to {@code UIDefaults} for details on how a {@code null}
	*        {@code Locale} is handled
	* @return the <code>Icon</code> object
	* @throws NullPointerException if {@code key} is {@code null}
	* @since 1.4
	*/
	@:require(java4) @:overload public static function getIcon(key : Dynamic, l : java.util.Locale) : javax.swing.Icon;
	
	/**
	* Returns a border from the defaults. If the value for
	* {@code key} is not a {@code Border}, {@code null} is returned.
	*
	* @param key  an <code>Object</code> specifying the border
	* @return the <code>Border</code> object
	* @throws NullPointerException if {@code key} is {@code null}
	*/
	@:overload public static function getBorder(key : Dynamic) : javax.swing.border.Border;
	
	/**
	* Returns a border from the defaults that is appropriate
	* for the given locale.  If the value for
	* {@code key} is not a {@code Border}, {@code null} is returned.
	*
	* @param key  an <code>Object</code> specifying the border
	* @param l the <code>Locale</code> for which the border is desired; refer
	*        to {@code UIDefaults} for details on how a {@code null}
	*        {@code Locale} is handled
	* @return the <code>Border</code> object
	* @throws NullPointerException if {@code key} is {@code null}
	* @since 1.4
	*/
	@:require(java4) @:overload public static function getBorder(key : Dynamic, l : java.util.Locale) : javax.swing.border.Border;
	
	/**
	* Returns a string from the defaults. If the value for
	* {@code key} is not a {@code String}, {@code null} is returned.
	*
	* @param key  an <code>Object</code> specifying the string
	* @return the <code>String</code>
	* @throws NullPointerException if {@code key} is {@code null}
	*/
	@:overload public static function getString(key : Dynamic) : String;
	
	/**
	* Returns a string from the defaults that is appropriate for the
	* given locale.  If the value for
	* {@code key} is not a {@code String}, {@code null} is returned.
	*
	* @param key  an <code>Object</code> specifying the string
	* @param l the <code>Locale</code> for which the string is desired; refer
	*        to {@code UIDefaults} for details on how a {@code null}
	*        {@code Locale} is handled
	* @return the <code>String</code>
	* @since 1.4
	* @throws NullPointerException if {@code key} is {@code null}
	*/
	@:require(java4) @:overload public static function getString(key : Dynamic, l : java.util.Locale) : String;
	
	/**
	* Returns an integer from the defaults. If the value for
	* {@code key} is not an {@code Integer}, or does not exist,
	* {@code 0} is returned.
	*
	* @param key  an <code>Object</code> specifying the int
	* @return the int
	* @throws NullPointerException if {@code key} is {@code null}
	*/
	@:overload public static function getInt(key : Dynamic) : Int;
	
	/**
	* Returns an integer from the defaults that is appropriate
	* for the given locale. If the value for
	* {@code key} is not an {@code Integer}, or does not exist,
	* {@code 0} is returned.
	*
	* @param key  an <code>Object</code> specifying the int
	* @param l the <code>Locale</code> for which the int is desired; refer
	*        to {@code UIDefaults} for details on how a {@code null}
	*        {@code Locale} is handled
	* @return the int
	* @throws NullPointerException if {@code key} is {@code null}
	* @since 1.4
	*/
	@:require(java4) @:overload public static function getInt(key : Dynamic, l : java.util.Locale) : Int;
	
	/**
	* Returns a boolean from the defaults which is associated with
	* the key value. If the key is not found or the key doesn't represent
	* a boolean value then {@code false} is returned.
	*
	* @param key  an <code>Object</code> specifying the key for the desired boolean value
	* @return the boolean value corresponding to the key
	* @throws NullPointerException if {@code key} is {@code null}
	* @since 1.4
	*/
	@:require(java4) @:overload public static function getBoolean(key : Dynamic) : Bool;
	
	/**
	* Returns a boolean from the defaults which is associated with
	* the key value and the given <code>Locale</code>. If the key is not
	* found or the key doesn't represent
	* a boolean value then {@code false} will be returned.
	*
	* @param key  an <code>Object</code> specifying the key for the desired
	*             boolean value
	* @param l the <code>Locale</code> for which the boolean is desired; refer
	*        to {@code UIDefaults} for details on how a {@code null}
	*        {@code Locale} is handled
	* @return the boolean value corresponding to the key
	* @throws NullPointerException if {@code key} is {@code null}
	* @since 1.4
	*/
	@:require(java4) @:overload public static function getBoolean(key : Dynamic, l : java.util.Locale) : Bool;
	
	/**
	* Returns an <code>Insets</code> object from the defaults. If the value
	* for {@code key} is not an {@code Insets}, {@code null} is returned.
	*
	* @param key  an <code>Object</code> specifying the <code>Insets</code> object
	* @return the <code>Insets</code> object
	* @throws NullPointerException if {@code key} is {@code null}
	*/
	@:overload public static function getInsets(key : Dynamic) : java.awt.Insets;
	
	/**
	* Returns an <code>Insets</code> object from the defaults that is
	* appropriate for the given locale. If the value
	* for {@code key} is not an {@code Insets}, {@code null} is returned.
	*
	* @param key  an <code>Object</code> specifying the <code>Insets</code> object
	* @param l the <code>Locale</code> for which the object is desired; refer
	*        to {@code UIDefaults} for details on how a {@code null}
	*        {@code Locale} is handled
	* @return the <code>Insets</code> object
	* @throws NullPointerException if {@code key} is {@code null}
	* @since 1.4
	*/
	@:require(java4) @:overload public static function getInsets(key : Dynamic, l : java.util.Locale) : java.awt.Insets;
	
	/**
	* Returns a dimension from the defaults. If the value
	* for {@code key} is not a {@code Dimension}, {@code null} is returned.
	*
	* @param key  an <code>Object</code> specifying the dimension object
	* @return the <code>Dimension</code> object
	* @throws NullPointerException if {@code key} is {@code null}
	*/
	@:overload public static function getDimension(key : Dynamic) : java.awt.Dimension;
	
	/**
	* Returns a dimension from the defaults that is appropriate
	* for the given locale. If the value
	* for {@code key} is not a {@code Dimension}, {@code null} is returned.
	*
	* @param key  an <code>Object</code> specifying the dimension object
	* @param l the <code>Locale</code> for which the object is desired; refer
	*        to {@code UIDefaults} for details on how a {@code null}
	*        {@code Locale} is handled
	* @return the <code>Dimension</code> object
	* @throws NullPointerException if {@code key} is {@code null}
	* @since 1.4
	*/
	@:require(java4) @:overload public static function getDimension(key : Dynamic, l : java.util.Locale) : java.awt.Dimension;
	
	/**
	* Returns an object from the defaults.
	*
	* @param key  an <code>Object</code> specifying the desired object
	* @return the <code>Object</code>
	* @throws NullPointerException if {@code key} is {@code null}
	*/
	@:overload public static function get(key : Dynamic) : Dynamic;
	
	/**
	* Returns an object from the defaults that is appropriate for
	* the given locale.
	*
	* @param key  an <code>Object</code> specifying the desired object
	* @param l the <code>Locale</code> for which the object is desired; refer
	*        to {@code UIDefaults} for details on how a {@code null}
	*        {@code Locale} is handled
	* @return the <code>Object</code>
	* @throws NullPointerException if {@code key} is {@code null}
	* @since 1.4
	*/
	@:require(java4) @:overload public static function get(key : Dynamic, l : java.util.Locale) : Dynamic;
	
	/**
	* Stores an object in the developer defaults. This is a cover method
	* for {@code getDefaults().put(key, value)}. This only effects the
	* developer defaults, not the system or look and feel defaults.
	*
	* @param key    an <code>Object</code> specifying the retrieval key
	* @param value  the <code>Object</code> to store; refer to
	*               {@code UIDefaults} for details on how {@code null} is
	*               handled
	* @return the <code>Object</code> returned by {@link UIDefaults#put}
	* @throws NullPointerException if {@code key} is {@code null}
	* @see UIDefaults#put
	*/
	@:overload public static function put(key : Dynamic, value : Dynamic) : Dynamic;
	
	/**
	* Returns the appropriate {@code ComponentUI} implementation for
	* {@code target}. Typically, this is a cover for
	* {@code getDefaults().getUI(target)}. However, if an auxiliary
	* look and feel has been installed, this first invokes
	* {@code getUI(target)} on the multiplexing look and feel's
	* defaults, and returns that value if it is {@code non-null}.
	*
	* @param target the <code>JComponent</code> to return the
	*        {@code ComponentUI} for
	* @return the <code>ComponentUI</code> object for {@code target}
	* @throws NullPointerException if {@code target} is {@code null}
	* @see UIDefaults#getUI
	*/
	@:overload public static function getUI(target : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* Returns the {@code UIDefaults} from the current look and feel,
	* that were obtained at the time the look and feel was installed.
	* <p>
	* In general, developers should use the {@code UIDefaults} returned from
	* {@code getDefaults()}. As the current look and feel may expect
	* certain values to exist, altering the {@code UIDefaults} returned
	* from this method could have unexpected results.
	*
	* @return <code>UIDefaults</code> from the current look and feel
	* @see #getDefaults
	* @see #setLookAndFeel(LookAndFeel)
	* @see LookAndFeel#getDefaults
	*/
	@:overload public static function getLookAndFeelDefaults() : javax.swing.UIDefaults;
	
	/**
	* Adds a <code>LookAndFeel</code> to the list of auxiliary look and feels.
	* The auxiliary look and feels tell the multiplexing look and feel what
	* other <code>LookAndFeel</code> classes for a component instance are to be used
	* in addition to the default <code>LookAndFeel</code> class when creating a
	* multiplexing UI.  The change will only take effect when a new
	* UI class is created or when the default look and feel is changed
	* on a component instance.
	* <p>Note these are not the same as the installed look and feels.
	*
	* @param laf the <code>LookAndFeel</code> object
	* @see #removeAuxiliaryLookAndFeel
	* @see #setLookAndFeel
	* @see #getAuxiliaryLookAndFeels
	* @see #getInstalledLookAndFeels
	*/
	@:overload public static function addAuxiliaryLookAndFeel(laf : javax.swing.LookAndFeel) : Void;
	
	/**
	* Removes a <code>LookAndFeel</code> from the list of auxiliary look and feels.
	* The auxiliary look and feels tell the multiplexing look and feel what
	* other <code>LookAndFeel</code> classes for a component instance are to be used
	* in addition to the default <code>LookAndFeel</code> class when creating a
	* multiplexing UI.  The change will only take effect when a new
	* UI class is created or when the default look and feel is changed
	* on a component instance.
	* <p>Note these are not the same as the installed look and feels.
	* @return true if the <code>LookAndFeel</code> was removed from the list
	* @see #removeAuxiliaryLookAndFeel
	* @see #getAuxiliaryLookAndFeels
	* @see #setLookAndFeel
	* @see #getInstalledLookAndFeels
	*/
	@:overload public static function removeAuxiliaryLookAndFeel(laf : javax.swing.LookAndFeel) : Bool;
	
	/**
	* Returns the list of auxiliary look and feels (can be <code>null</code>).
	* The auxiliary look and feels tell the multiplexing look and feel what
	* other <code>LookAndFeel</code> classes for a component instance are
	* to be used in addition to the default LookAndFeel class when creating a
	* multiplexing UI.
	* <p>Note these are not the same as the installed look and feels.
	*
	* @return list of auxiliary <code>LookAndFeel</code>s or <code>null</code>
	* @see #addAuxiliaryLookAndFeel
	* @see #removeAuxiliaryLookAndFeel
	* @see #setLookAndFeel
	* @see #getInstalledLookAndFeels
	*/
	@:overload public static function getAuxiliaryLookAndFeels() : java.NativeArray<javax.swing.LookAndFeel>;
	
	/**
	* Adds a <code>PropertyChangeListener</code> to the listener list.
	* The listener is registered for all properties.
	*
	* @param listener  the <code>PropertyChangeListener</code> to be added
	* @see java.beans.PropertyChangeSupport
	*/
	@:overload public static function addPropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Removes a <code>PropertyChangeListener</code> from the listener list.
	* This removes a <code>PropertyChangeListener</code> that was registered
	* for all properties.
	*
	* @param listener  the <code>PropertyChangeListener</code> to be removed
	* @see java.beans.PropertyChangeSupport
	*/
	@:overload public static function removePropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Returns an array of all the <code>PropertyChangeListener</code>s added
	* to this UIManager with addPropertyChangeListener().
	*
	* @return all of the <code>PropertyChangeListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload public static function getPropertyChangeListeners() : java.NativeArray<java.beans.PropertyChangeListener>;
	
	
}
/**
* This class defines the state managed by the <code>UIManager</code>.  For
* Swing applications the fields in this class could just as well
* be static members of <code>UIManager</code> however we give them
* "AppContext"
* scope instead so that applets (and potentially multiple lightweight
* applications running in a single VM) have their own state. For example,
* an applet can alter its look and feel, see <code>setLookAndFeel</code>.
* Doing so has no affect on other applets (or the browser).
*/
@:native('javax$swing$UIManager$LAFState') @:internal extern class UIManager_LAFState
{
	/**
	* Returns the SwingPropertyChangeSupport for the current
	* AppContext.  If <code>create</code> is a true, a non-null
	* <code>SwingPropertyChangeSupport</code> will be returned, if
	* <code>create</code> is false and this has not been invoked
	* with true, null will be returned.
	*/
	@:overload @:synchronized public function getPropertyChangeSupport(create : Bool) : javax.swing.event.SwingPropertyChangeSupport;
	
	
}
/**
* Provides a little information about an installed
* <code>LookAndFeel</code> for the sake of configuring a menu or
* for initial application set up.
*
* @see UIManager#getInstalledLookAndFeels
* @see LookAndFeel
*/
@:native('javax$swing$UIManager$LookAndFeelInfo') extern class UIManager_LookAndFeelInfo
{
	/**
	* Constructs a <code>UIManager</code>s
	* <code>LookAndFeelInfo</code> object.
	*
	* @param name      a <code>String</code> specifying the name of
	*                      the look and feel
	* @param className a <code>String</code> specifiying the name of
	*                      the class that implements the look and feel
	*/
	@:overload public function new(name : String, className : String) : Void;
	
	/**
	* Returns the name of the look and feel in a form suitable
	* for a menu or other presentation
	* @return a <code>String</code> containing the name
	* @see LookAndFeel#getName
	*/
	@:overload public function getName() : String;
	
	/**
	* Returns the name of the class that implements this look and feel.
	* @return the name of the class that implements this
	*              <code>LookAndFeel</code>
	* @see LookAndFeel
	*/
	@:overload public function getClassName() : String;
	
	/**
	* Returns a string that displays and identifies this
	* object's properties.
	*
	* @return a <code>String</code> representation of this object
	*/
	@:overload public function toString() : String;
	
	
}
