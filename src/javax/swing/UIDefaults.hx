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
extern class UIDefaults extends java.util.Hashtable<Dynamic, Dynamic>
{
	/**
	* Creates an empty defaults table.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates an empty defaults table with the specified initial capacity and
	* load factor.
	*
	* @param initialCapacity   the initial capacity of the defaults table
	* @param loadFactor        the load factor of the defaults table
	* @see java.util.Hashtable
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(initialCapacity : Int, loadFactor : Single) : Void;
	
	/**
	* Creates a defaults table initialized with the specified
	* key/value pairs.  For example:
	* <pre>
	Object[] uiDefaults = {
	"Font", new Font("Dialog", Font.BOLD, 12),
	"Color", Color.red,
	"five", new Integer(5)
	}
	UIDefaults myDefaults = new UIDefaults(uiDefaults);
	* </pre>
	* @param keyValueList  an array of objects containing the key/value
	*          pairs
	*/
	@:overload public function new(keyValueList : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Returns the value for key.  If the value is a
	* <code>UIDefaults.LazyValue</code> then the real
	* value is computed with <code>LazyValue.createValue()</code>,
	* the table entry is replaced, and the real value is returned.
	* If the value is an <code>UIDefaults.ActiveValue</code>
	* the table entry is not replaced - the value is computed
	* with <code>ActiveValue.createValue()</code> for each
	* <code>get()</code> call.
	*
	* If the key is not found in the table then it is searched for in the list
	* of resource bundles maintained by this object.  The resource bundles are
	* searched most recently added first using the locale returned by
	* <code>getDefaultLocale</code>.  <code>LazyValues</code> and
	* <code>ActiveValues</code> are not supported in the resource bundles.

	*
	* @param key the desired key
	* @return the value for <code>key</code>
	* @see LazyValue
	* @see ActiveValue
	* @see java.util.Hashtable#get
	* @see #getDefaultLocale
	* @see #addResourceBundle
	* @since 1.4
	*/
	@:require(java4) @:overload override public function get(key : Dynamic) : Dynamic;
	
	/**
	* Returns the value for key associated with the given locale.
	* If the value is a <code>UIDefaults.LazyValue</code> then the real
	* value is computed with <code>LazyValue.createValue()</code>,
	* the table entry is replaced, and the real value is returned.
	* If the value is an <code>UIDefaults.ActiveValue</code>
	* the table entry is not replaced - the value is computed
	* with <code>ActiveValue.createValue()</code> for each
	* <code>get()</code> call.
	*
	* If the key is not found in the table then it is searched for in the list
	* of resource bundles maintained by this object.  The resource bundles are
	* searched most recently added first using the given locale.
	* <code>LazyValues</code> and <code>ActiveValues</code> are not supported
	* in the resource bundles.
	*
	* @param key the desired key
	* @param l the desired <code>locale</code>
	* @return the value for <code>key</code>
	* @see LazyValue
	* @see ActiveValue
	* @see java.util.Hashtable#get
	* @see #addResourceBundle
	* @since 1.4
	*/
	@:require(java4) @:overload public function get(key : Dynamic, l : java.util.Locale) : Dynamic;
	
	/**
	* Sets the value of <code>key</code> to <code>value</code> for all locales.
	* If <code>key</code> is a string and the new value isn't
	* equal to the old one, fire a <code>PropertyChangeEvent</code>.
	* If value is <code>null</code>, the key is removed from the table.
	*
	* @param key    the unique <code>Object</code> who's value will be used
	*          to retrieve the data value associated with it
	* @param value  the new <code>Object</code> to store as data under
	*          that key
	* @return the previous <code>Object</code> value, or <code>null</code>
	* @see #putDefaults
	* @see java.util.Hashtable#put
	*/
	@:overload override public function put(key : Dynamic, value : Dynamic) : Dynamic;
	
	/**
	* Puts all of the key/value pairs in the database and
	* unconditionally generates one <code>PropertyChangeEvent</code>.
	* The events oldValue and newValue will be <code>null</code> and its
	* <code>propertyName</code> will be "UIDefaults".  The key/value pairs are
	* added for all locales.
	*
	* @param keyValueList  an array of key/value pairs
	* @see #put
	* @see java.util.Hashtable#put
	*/
	@:overload public function putDefaults(keyValueList : java.NativeArray<Dynamic>) : Void;
	
	/**
	* If the value of <code>key</code> is a <code>Font</code> return it,
	* otherwise return <code>null</code>.
	* @param key the desired key
	* @return if the value for <code>key</code> is a <code>Font</code>,
	*          return the <code>Font</code> object; otherwise return
	*          <code>null</code>
	*/
	@:overload public function getFont(key : Dynamic) : java.awt.Font;
	
	/**
	* If the value of <code>key</code> for the given <code>Locale</code>
	* is a <code>Font</code> return it, otherwise return <code>null</code>.
	* @param key the desired key
	* @param l the desired locale
	* @return if the value for <code>key</code> and <code>Locale</code>
	*          is a <code>Font</code>,
	*          return the <code>Font</code> object; otherwise return
	*          <code>null</code>
	* @since 1.4
	*/
	@:require(java4) @:overload public function getFont(key : Dynamic, l : java.util.Locale) : java.awt.Font;
	
	/**
	* If the value of <code>key</code> is a <code>Color</code> return it,
	* otherwise return <code>null</code>.
	* @param key the desired key
	* @return if the value for <code>key</code> is a <code>Color</code>,
	*          return the <code>Color</code> object; otherwise return
	*          <code>null</code>
	*/
	@:overload public function getColor(key : Dynamic) : java.awt.Color;
	
	/**
	* If the value of <code>key</code> for the given <code>Locale</code>
	* is a <code>Color</code> return it, otherwise return <code>null</code>.
	* @param key the desired key
	* @param l the desired locale
	* @return if the value for <code>key</code> and <code>Locale</code>
	*          is a <code>Color</code>,
	*          return the <code>Color</code> object; otherwise return
	*          <code>null</code>
	* @since 1.4
	*/
	@:require(java4) @:overload public function getColor(key : Dynamic, l : java.util.Locale) : java.awt.Color;
	
	/**
	* If the value of <code>key</code> is an <code>Icon</code> return it,
	* otherwise return <code>null</code>.
	* @param key the desired key
	* @return if the value for <code>key</code> is an <code>Icon</code>,
	*          return the <code>Icon</code> object; otherwise return
	*          <code>null</code>
	*/
	@:overload public function getIcon(key : Dynamic) : javax.swing.Icon;
	
	/**
	* If the value of <code>key</code> for the given <code>Locale</code>
	* is an <code>Icon</code> return it, otherwise return <code>null</code>.
	* @param key the desired key
	* @param l the desired locale
	* @return if the value for <code>key</code> and <code>Locale</code>
	*          is an <code>Icon</code>,
	*          return the <code>Icon</code> object; otherwise return
	*          <code>null</code>
	* @since 1.4
	*/
	@:require(java4) @:overload public function getIcon(key : Dynamic, l : java.util.Locale) : javax.swing.Icon;
	
	/**
	* If the value of <code>key</code> is a <code>Border</code> return it,
	* otherwise return <code>null</code>.
	* @param key the desired key
	* @return if the value for <code>key</code> is a <code>Border</code>,
	*          return the <code>Border</code> object; otherwise return
	*          <code>null</code>
	*/
	@:overload public function getBorder(key : Dynamic) : javax.swing.border.Border;
	
	/**
	* If the value of <code>key</code> for the given <code>Locale</code>
	* is a <code>Border</code> return it, otherwise return <code>null</code>.
	* @param key the desired key
	* @param l the desired locale
	* @return if the value for <code>key</code> and <code>Locale</code>
	*          is a <code>Border</code>,
	*          return the <code>Border</code> object; otherwise return
	*          <code>null</code>
	* @since 1.4
	*/
	@:require(java4) @:overload public function getBorder(key : Dynamic, l : java.util.Locale) : javax.swing.border.Border;
	
	/**
	* If the value of <code>key</code> is a <code>String</code> return it,
	* otherwise return <code>null</code>.
	* @param key the desired key
	* @return if the value for <code>key</code> is a <code>String</code>,
	*          return the <code>String</code> object; otherwise return
	*          <code>null</code>
	*/
	@:overload public function getString(key : Dynamic) : String;
	
	/**
	* If the value of <code>key</code> for the given <code>Locale</code>
	* is a <code>String</code> return it, otherwise return <code>null</code>.
	* @param key the desired key
	* @param l the desired <code>Locale</code>
	* @return if the value for <code>key</code> for the given
	*          <code>Locale</code> is a <code>String</code>,
	*          return the <code>String</code> object; otherwise return
	*          <code>null</code>
	* @since 1.4
	*/
	@:require(java4) @:overload public function getString(key : Dynamic, l : java.util.Locale) : String;
	
	/**
	* If the value of <code>key</code> is an <code>Integer</code> return its
	* integer value, otherwise return 0.
	* @param key the desired key
	* @return if the value for <code>key</code> is an <code>Integer</code>,
	*          return its value, otherwise return 0
	*/
	@:overload public function getInt(key : Dynamic) : Int;
	
	/**
	* If the value of <code>key</code> for the given <code>Locale</code>
	* is an <code>Integer</code> return its integer value, otherwise return 0.
	* @param key the desired key
	* @param l the desired locale
	* @return if the value for <code>key</code> and <code>Locale</code>
	*          is an <code>Integer</code>,
	*          return its value, otherwise return 0
	* @since 1.4
	*/
	@:require(java4) @:overload public function getInt(key : Dynamic, l : java.util.Locale) : Int;
	
	/**
	* If the value of <code>key</code> is boolean, return the
	* boolean value, otherwise return false.
	*
	* @param key an <code>Object</code> specifying the key for the desired boolean value
	* @return if the value of <code>key</code> is boolean, return the
	*         boolean value, otherwise return false.
	* @since 1.4
	*/
	@:require(java4) @:overload public function getBoolean(key : Dynamic) : Bool;
	
	/**
	* If the value of <code>key</code> for the given <code>Locale</code>
	* is boolean, return the boolean value, otherwise return false.
	*
	* @param key an <code>Object</code> specifying the key for the desired boolean value
	* @param l the desired locale
	* @return if the value for <code>key</code> and <code>Locale</code>
	*         is boolean, return the
	*         boolean value, otherwise return false.
	* @since 1.4
	*/
	@:require(java4) @:overload public function getBoolean(key : Dynamic, l : java.util.Locale) : Bool;
	
	/**
	* If the value of <code>key</code> is an <code>Insets</code> return it,
	* otherwise return <code>null</code>.
	* @param key the desired key
	* @return if the value for <code>key</code> is an <code>Insets</code>,
	*          return the <code>Insets</code> object; otherwise return
	*          <code>null</code>
	*/
	@:overload public function getInsets(key : Dynamic) : java.awt.Insets;
	
	/**
	* If the value of <code>key</code> for the given <code>Locale</code>
	* is an <code>Insets</code> return it, otherwise return <code>null</code>.
	* @param key the desired key
	* @param l the desired locale
	* @return if the value for <code>key</code> and <code>Locale</code>
	*          is an <code>Insets</code>,
	*          return the <code>Insets</code> object; otherwise return
	*          <code>null</code>
	* @since 1.4
	*/
	@:require(java4) @:overload public function getInsets(key : Dynamic, l : java.util.Locale) : java.awt.Insets;
	
	/**
	* If the value of <code>key</code> is a <code>Dimension</code> return it,
	* otherwise return <code>null</code>.
	* @param key the desired key
	* @return if the value for <code>key</code> is a <code>Dimension</code>,
	*          return the <code>Dimension</code> object; otherwise return
	*          <code>null</code>
	*/
	@:overload public function getDimension(key : Dynamic) : java.awt.Dimension;
	
	/**
	* If the value of <code>key</code> for the given <code>Locale</code>
	* is a <code>Dimension</code> return it, otherwise return <code>null</code>.
	* @param key the desired key
	* @param l the desired locale
	* @return if the value for <code>key</code> and <code>Locale</code>
	*          is a <code>Dimension</code>,
	*          return the <code>Dimension</code> object; otherwise return
	*          <code>null</code>
	* @since 1.4
	*/
	@:require(java4) @:overload public function getDimension(key : Dynamic, l : java.util.Locale) : java.awt.Dimension;
	
	/**
	* The value of <code>get(uidClassID)</code> must be the
	* <code>String</code> name of a
	* class that implements the corresponding <code>ComponentUI</code>
	* class.  If the class hasn't been loaded before, this method looks
	* up the class with <code>uiClassLoader.loadClass()</code> if a non
	* <code>null</code>
	* class loader is provided, <code>classForName()</code> otherwise.
	* <p>
	* If a mapping for <code>uiClassID</code> exists or if the specified
	* class can't be found, return <code>null</code>.
	* <p>
	* This method is used by <code>getUI</code>, it's usually
	* not necessary to call it directly.
	*
	* @param uiClassID  a string containing the class ID
	* @param uiClassLoader the object which will load the class
	* @return the value of <code>Class.forName(get(uidClassID))</code>
	* @see #getUI
	*/
	@:overload public function getUIClass(uiClassID : String, uiClassLoader : java.lang.ClassLoader) : Class<javax.swing.plaf.ComponentUI>;
	
	/**
	* Returns the L&F class that renders this component.
	*
	* @param uiClassID a string containing the class ID
	* @return the Class object returned by
	*          <code>getUIClass(uiClassID, null)</code>
	*/
	@:overload public function getUIClass(uiClassID : String) : Class<javax.swing.plaf.ComponentUI>;
	
	/**
	* If <code>getUI()</code> fails for any reason,
	* it calls this method before returning <code>null</code>.
	* Subclasses may choose to do more or less here.
	*
	* @param msg message string to print
	* @see #getUI
	*/
	@:overload private function getUIError(msg : String) : Void;
	
	/**
	* Creates an <code>ComponentUI</code> implementation for the
	* specified component.  In other words create the look
	* and feel specific delegate object for <code>target</code>.
	* This is done in two steps:
	* <ul>
	* <li> Look up the name of the <code>ComponentUI</code> implementation
	* class under the value returned by <code>target.getUIClassID()</code>.
	* <li> Use the implementation classes static <code>createUI()</code>
	* method to construct a look and feel delegate.
	* </ul>
	* @param target  the <code>JComponent</code> which needs a UI
	* @return the <code>ComponentUI</code> object
	*/
	@:overload public function getUI(target : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* Adds a <code>PropertyChangeListener</code> to the listener list.
	* The listener is registered for all properties.
	* <p>
	* A <code>PropertyChangeEvent</code> will get fired whenever a default
	* is changed.
	*
	* @param listener  the <code>PropertyChangeListener</code> to be added
	* @see java.beans.PropertyChangeSupport
	*/
	@:overload @:synchronized public function addPropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Removes a <code>PropertyChangeListener</code> from the listener list.
	* This removes a <code>PropertyChangeListener</code> that was registered
	* for all properties.
	*
	* @param listener  the <code>PropertyChangeListener</code> to be removed
	* @see java.beans.PropertyChangeSupport
	*/
	@:overload @:synchronized public function removePropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Returns an array of all the <code>PropertyChangeListener</code>s added
	* to this UIDefaults with addPropertyChangeListener().
	*
	* @return all of the <code>PropertyChangeListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload @:synchronized public function getPropertyChangeListeners() : java.NativeArray<java.beans.PropertyChangeListener>;
	
	/**
	* Support for reporting bound property changes.  If oldValue and
	* newValue are not equal and the <code>PropertyChangeEvent</code>x
	* listener list isn't empty, then fire a
	* <code>PropertyChange</code> event to each listener.
	*
	* @param propertyName  the programmatic name of the property
	*          that was changed
	* @param oldValue  the old value of the property
	* @param newValue  the new value of the property
	* @see java.beans.PropertyChangeSupport
	*/
	@:overload private function firePropertyChange(propertyName : String, oldValue : Dynamic, newValue : Dynamic) : Void;
	
	/**
	* Adds a resource bundle to the list of resource bundles that are
	* searched for localized values.  Resource bundles are searched in the
	* reverse order they were added.  In other words, the most recently added
	* bundle is searched first.
	*
	* @param bundleName  the base name of the resource bundle to be added
	* @see java.util.ResourceBundle
	* @see #removeResourceBundle
	* @since 1.4
	*/
	@:require(java4) @:overload @:synchronized public function addResourceBundle(bundleName : String) : Void;
	
	/**
	* Removes a resource bundle from the list of resource bundles that are
	* searched for localized defaults.
	*
	* @param bundleName  the base name of the resource bundle to be removed
	* @see java.util.ResourceBundle
	* @see #addResourceBundle
	* @since 1.4
	*/
	@:require(java4) @:overload @:synchronized public function removeResourceBundle(bundleName : String) : Void;
	
	/**
	* Sets the default locale.  The default locale is used in retrieving
	* localized values via <code>get</code> methods that do not take a
	* locale argument.  As of release 1.4, Swing UI objects should retrieve
	* localized values using the locale of their component rather than the
	* default locale.  The default locale exists to provide compatibility with
	* pre 1.4 behaviour.
	*
	* @param l the new default locale
	* @see #getDefaultLocale
	* @see #get(Object)
	* @see #get(Object,Locale)
	* @since 1.4
	*/
	@:require(java4) @:overload public function setDefaultLocale(l : java.util.Locale) : Void;
	
	/**
	* Returns the default locale.  The default locale is used in retrieving
	* localized values via <code>get</code> methods that do not take a
	* locale argument.  As of release 1.4, Swing UI objects should retrieve
	* localized values using the locale of their component rather than the
	* default locale.  The default locale exists to provide compatibility with
	* pre 1.4 behaviour.
	*
	* @return the default locale
	* @see #setDefaultLocale
	* @see #get(Object)
	* @see #get(Object,Locale)
	* @since 1.4
	*/
	@:require(java4) @:overload public function getDefaultLocale() : java.util.Locale;
	
	
}
/**
* This class enables one to store an entry in the defaults
* table that isn't constructed until the first time it's
* looked up with one of the <code>getXXX(key)</code> methods.
* Lazy values are useful for defaults that are expensive
* to construct or are seldom retrieved.  The first time
* a <code>LazyValue</code> is retrieved its "real value" is computed
* by calling <code>LazyValue.createValue()</code> and the real
* value is used to replace the <code>LazyValue</code> in the
* <code>UIDefaults</code>
* table.  Subsequent lookups for the same key return
* the real value.  Here's an example of a <code>LazyValue</code>
* that constructs a <code>Border</code>:
* <pre>
*  Object borderLazyValue = new UIDefaults.LazyValue() {
*      public Object createValue(UIDefaults table) {
*          return new BorderFactory.createLoweredBevelBorder();
*      }
*  };
*
*  uiDefaultsTable.put("MyBorder", borderLazyValue);
* </pre>
*
* @see UIDefaults#get
*/
@:native('javax$swing$UIDefaults$LazyValue') extern interface UIDefaults_LazyValue
{
	/**
	* Creates the actual value retrieved from the <code>UIDefaults</code>
	* table. When an object that implements this interface is
	* retrieved from the table, this method is used to create
	* the real value, which is then stored in the table and
	* returned to the calling method.
	*
	* @param table  a <code>UIDefaults</code> table
	* @return the created <code>Object</code>
	*/
	@:overload public function createValue(table : UIDefaults) : Dynamic;
	
	
}
/**
* This class enables one to store an entry in the defaults
* table that's constructed each time it's looked up with one of
* the <code>getXXX(key)</code> methods. Here's an example of
* an <code>ActiveValue</code> that constructs a
* <code>DefaultListCellRenderer</code>:
* <pre>
*  Object cellRendererActiveValue = new UIDefaults.ActiveValue() {
*      public Object createValue(UIDefaults table) {
*          return new DefaultListCellRenderer();
*      }
*  };
*
*  uiDefaultsTable.put("MyRenderer", cellRendererActiveValue);
* </pre>
*
* @see UIDefaults#get
*/
@:native('javax$swing$UIDefaults$ActiveValue') extern interface UIDefaults_ActiveValue
{
	/**
	* Creates the value retrieved from the <code>UIDefaults</code> table.
	* The object is created each time it is accessed.
	*
	* @param table  a <code>UIDefaults</code> table
	* @return the created <code>Object</code>
	*/
	@:overload public function createValue(table : UIDefaults) : Dynamic;
	
	
}
/**
* This class provides an implementation of <code>LazyValue</code>
* which can be
* used to delay loading of the Class for the instance to be created.
* It also avoids creation of an anonymous inner class for the
* <code>LazyValue</code>
* subclass.  Both of these improve performance at the time that a
* a Look and Feel is loaded, at the cost of a slight performance
* reduction the first time <code>createValue</code> is called
* (since Reflection APIs are used).
* @since 1.3
*/
@:require(java3) @:native('javax$swing$UIDefaults$ProxyLazyValue') extern class UIDefaults_ProxyLazyValue implements UIDefaults_LazyValue
{
	/**
	* Creates a <code>LazyValue</code> which will construct an instance
	* when asked.
	*
	* @param c    a <code>String</code> specifying the classname
	*             of the instance to be created on demand
	*/
	@:overload public function new(c : String) : Void;
	
	/**
	* Creates a <code>LazyValue</code> which will construct an instance
	* when asked.
	*
	* @param c    a <code>String</code> specifying the classname of
	*              the class
	*              containing a static method to be called for
	*              instance creation
	* @param m    a <code>String</code> specifying the static
	*              method to be called on class c
	*/
	@:overload public function new(c : String, m : String) : Void;
	
	/**
	* Creates a <code>LazyValue</code> which will construct an instance
	* when asked.
	*
	* @param c    a <code>String</code> specifying the classname
	*              of the instance to be created on demand
	* @param o    an array of <code>Objects</code> to be passed as
	*              paramaters to the constructor in class c
	*/
	@:overload public function new(c : String, o : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Creates a <code>LazyValue</code> which will construct an instance
	* when asked.
	*
	* @param c    a <code>String</code> specifying the classname
	*              of the class
	*              containing a static method to be called for
	*              instance creation.
	* @param m    a <code>String</code> specifying the static method
	*              to be called on class c
	* @param o    an array of <code>Objects</code> to be passed as
	*              paramaters to the static method in class c
	*/
	@:overload public function new(c : String, m : String, o : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Creates the value retrieved from the <code>UIDefaults</code> table.
	* The object is created each time it is accessed.
	*
	* @param table  a <code>UIDefaults</code> table
	* @return the created <code>Object</code>
	*/
	@:overload public function createValue(table : UIDefaults) : Dynamic;
	
	
}
/**
* <code>LazyInputMap</code> will create a <code>InputMap</code>
* in its <code>createValue</code>
* method. The bindings are passed in in the constructor.
* The bindings are an array with
* the even number entries being string <code>KeyStrokes</code>
* (eg "alt SPACE") and
* the odd number entries being the value to use in the
* <code>InputMap</code> (and the key in the <code>ActionMap</code>).
* @since 1.3
*/
@:require(java3) @:native('javax$swing$UIDefaults$LazyInputMap') extern class UIDefaults_LazyInputMap implements UIDefaults_LazyValue
{
	@:overload public function new(bindings : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Creates an <code>InputMap</code> with the bindings that are
	* passed in.
	*
	* @param table a <code>UIDefaults</code> table
	* @return the <code>InputMap</code>
	*/
	@:overload public function createValue(table : UIDefaults) : Dynamic;
	
	
}
/**
* <code>TextAndMnemonicHashMap</code> stores swing resource strings. Many of strings
* can have a mnemonic. For example:
*   FileChooser.saveButton.textAndMnemonic=&Save
* For this case method get returns "Save" for the key "FileChooser.saveButtonText" and
* mnemonic "S" for the key "FileChooser.saveButtonMnemonic"
*
* There are several patterns for the text and mnemonic suffixes which are checked by the
* <code>TextAndMnemonicHashMap</code> class.
* Patterns which are converted to the xxx.textAndMnemonic key:
* (xxxNameText, xxxNameMnemonic)
* (xxxNameText, xxxMnemonic)
* (xxx.nameText, xxx.mnemonic)
* (xxxText, xxxMnemonic)
*
* These patterns can have a mnemonic index in format
* (xxxDisplayedMnemonicIndex)
*
* Pattern which is converted to the xxx.titleAndMnemonic key:
* (xxxTitle, xxxMnemonic)
*
*/
@:native('javax$swing$UIDefaults$TextAndMnemonicHashMap') @:internal extern class UIDefaults_TextAndMnemonicHashMap extends java.util.HashMap<String, Dynamic>
{
	@:overload override public function get(key : Dynamic) : Dynamic;
	
	
}
