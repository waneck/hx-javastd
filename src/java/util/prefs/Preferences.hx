package java.util.prefs;
/*
* Copyright (c) 2000, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class Preferences
{
	/**
	* Maximum length of string allowed as a key (80 characters).
	*/
	@:public @:static @:final public static var MAX_KEY_LENGTH(default, null) : Int;
	
	/**
	* Maximum length of string allowed as a value (8192 characters).
	*/
	@:public @:static @:final public static var MAX_VALUE_LENGTH(default, null) : Int;
	
	/**
	* Maximum length of a node name (80 characters).
	*/
	@:public @:static @:final public static var MAX_NAME_LENGTH(default, null) : Int;
	
	/**
	* Returns the preference node from the calling user's preference tree
	* that is associated (by convention) with the specified class's package.
	* The convention is as follows: the absolute path name of the node is the
	* fully qualified package name, preceded by a slash (<tt>'/'</tt>), and
	* with each period (<tt>'.'</tt>) replaced by a slash.  For example the
	* absolute path name of the node associated with the class
	* <tt>com.acme.widget.Foo</tt> is <tt>/com/acme/widget</tt>.
	*
	* <p>This convention does not apply to the unnamed package, whose
	* associated preference node is <tt>&lt;unnamed&gt;</tt>.  This node
	* is not intended for long term use, but for convenience in the early
	* development of programs that do not yet belong to a package, and
	* for "throwaway" programs.  <i>Valuable data should not be stored
	* at this node as it is shared by all programs that use it.</i>
	*
	* <p>A class <tt>Foo</tt> wishing to access preferences pertaining to its
	* package can obtain a preference node as follows: <pre>
	*    static Preferences prefs = Preferences.userNodeForPackage(Foo.class);
	* </pre>
	* This idiom obviates the need for using a string to describe the
	* preferences node and decreases the likelihood of a run-time failure.
	* (If the class name is misspelled, it will typically result in a
	* compile-time error.)
	*
	* <p>Invoking this method will result in the creation of the returned
	* node and its ancestors if they do not already exist.  If the returned
	* node did not exist prior to this call, this node and any ancestors that
	* were created by this call are not guaranteed to become permanent until
	* the <tt>flush</tt> method is called on the returned node (or one of its
	* ancestors or descendants).
	*
	* @param c the class for whose package a user preference node is desired.
	* @return the user preference node associated with the package of which
	*         <tt>c</tt> is a member.
	* @throws NullPointerException if <tt>c</tt> is <tt>null</tt>.
	* @throws SecurityException if a security manager is present and
	*         it denies <tt>RuntimePermission("preferences")</tt>.
	* @see    RuntimePermission
	*/
	@:overload @:public @:static public static function userNodeForPackage(c : Class<Dynamic>) : java.util.prefs.Preferences;
	
	/**
	* Returns the preference node from the system preference tree that is
	* associated (by convention) with the specified class's package.  The
	* convention is as follows: the absolute path name of the node is the
	* fully qualified package name, preceded by a slash (<tt>'/'</tt>), and
	* with each period (<tt>'.'</tt>) replaced by a slash.  For example the
	* absolute path name of the node associated with the class
	* <tt>com.acme.widget.Foo</tt> is <tt>/com/acme/widget</tt>.
	*
	* <p>This convention does not apply to the unnamed package, whose
	* associated preference node is <tt>&lt;unnamed&gt;</tt>.  This node
	* is not intended for long term use, but for convenience in the early
	* development of programs that do not yet belong to a package, and
	* for "throwaway" programs.  <i>Valuable data should not be stored
	* at this node as it is shared by all programs that use it.</i>
	*
	* <p>A class <tt>Foo</tt> wishing to access preferences pertaining to its
	* package can obtain a preference node as follows: <pre>
	*  static Preferences prefs = Preferences.systemNodeForPackage(Foo.class);
	* </pre>
	* This idiom obviates the need for using a string to describe the
	* preferences node and decreases the likelihood of a run-time failure.
	* (If the class name is misspelled, it will typically result in a
	* compile-time error.)
	*
	* <p>Invoking this method will result in the creation of the returned
	* node and its ancestors if they do not already exist.  If the returned
	* node did not exist prior to this call, this node and any ancestors that
	* were created by this call are not guaranteed to become permanent until
	* the <tt>flush</tt> method is called on the returned node (or one of its
	* ancestors or descendants).
	*
	* @param c the class for whose package a system preference node is desired.
	* @return the system preference node associated with the package of which
	*         <tt>c</tt> is a member.
	* @throws NullPointerException if <tt>c</tt> is <tt>null</tt>.
	* @throws SecurityException if a security manager is present and
	*         it denies <tt>RuntimePermission("preferences")</tt>.
	* @see    RuntimePermission
	*/
	@:overload @:public @:static public static function systemNodeForPackage(c : Class<Dynamic>) : java.util.prefs.Preferences;
	
	/**
	* Returns the root preference node for the calling user.
	*
	* @return the root preference node for the calling user.
	* @throws SecurityException If a security manager is present and
	*         it denies <tt>RuntimePermission("preferences")</tt>.
	* @see    RuntimePermission
	*/
	@:overload @:public @:static public static function userRoot() : java.util.prefs.Preferences;
	
	/**
	* Returns the root preference node for the system.
	*
	* @return the root preference node for the system.
	* @throws SecurityException If a security manager is present and
	*         it denies <tt>RuntimePermission("preferences")</tt>.
	* @see    RuntimePermission
	*/
	@:overload @:public @:static public static function systemRoot() : java.util.prefs.Preferences;
	
	/**
	* Sole constructor. (For invocation by subclass constructors, typically
	* implicit.)
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Associates the specified value with the specified key in this
	* preference node.
	*
	* @param key key with which the specified value is to be associated.
	* @param value value to be associated with the specified key.
	* @throws NullPointerException if key or value is <tt>null</tt>.
	* @throws IllegalArgumentException if <tt>key.length()</tt> exceeds
	*       <tt>MAX_KEY_LENGTH</tt> or if <tt>value.length</tt> exceeds
	*       <tt>MAX_VALUE_LENGTH</tt>.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	*/
	@:overload @:public @:abstract public function put(key : String, value : String) : Void;
	
	/**
	* Returns the value associated with the specified key in this preference
	* node.  Returns the specified default if there is no value associated
	* with the key, or the backing store is inaccessible.
	*
	* <p>Some implementations may store default values in their backing
	* stores.  If there is no value associated with the specified key
	* but there is such a <i>stored default</i>, it is returned in
	* preference to the specified default.
	*
	* @param key key whose associated value is to be returned.
	* @param def the value to be returned in the event that this
	*        preference node has no value associated with <tt>key</tt>.
	* @return the value associated with <tt>key</tt>, or <tt>def</tt>
	*         if no value is associated with <tt>key</tt>, or the backing
	*         store is inaccessible.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @throws NullPointerException if <tt>key</tt> is <tt>null</tt>.  (A
	*         <tt>null</tt> value for <tt>def</tt> <i>is</i> permitted.)
	*/
	@:overload @:public @:abstract public function get(key : String, def : String) : String;
	
	/**
	* Removes the value associated with the specified key in this preference
	* node, if any.
	*
	* <p>If this implementation supports <i>stored defaults</i>, and there is
	* such a default for the specified preference, the stored default will be
	* "exposed" by this call, in the sense that it will be returned
	* by a succeeding call to <tt>get</tt>.
	*
	* @param key key whose mapping is to be removed from the preference node.
	* @throws NullPointerException if <tt>key</tt> is <tt>null</tt>.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	*/
	@:overload @:public @:abstract public function remove(key : String) : Void;
	
	/**
	* Removes all of the preferences (key-value associations) in this
	* preference node.  This call has no effect on any descendants
	* of this node.
	*
	* <p>If this implementation supports <i>stored defaults</i>, and this
	* node in the preferences hierarchy contains any such defaults,
	* the stored defaults will be "exposed" by this call, in the sense that
	* they will be returned by succeeding calls to <tt>get</tt>.
	*
	* @throws BackingStoreException if this operation cannot be completed
	*         due to a failure in the backing store, or inability to
	*         communicate with it.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @see #removeNode()
	*/
	@:overload @:public @:abstract public function clear() : Void;
	
	/**
	* Associates a string representing the specified int value with the
	* specified key in this preference node.  The associated string is the
	* one that would be returned if the int value were passed to
	* {@link Integer#toString(int)}.  This method is intended for use in
	* conjunction with {@link #getInt}.
	*
	* @param key key with which the string form of value is to be associated.
	* @param value value whose string form is to be associated with key.
	* @throws NullPointerException if <tt>key</tt> is <tt>null</tt>.
	* @throws IllegalArgumentException if <tt>key.length()</tt> exceeds
	*         <tt>MAX_KEY_LENGTH</tt>.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @see #getInt(String,int)
	*/
	@:overload @:public @:abstract public function putInt(key : String, value : Int) : Void;
	
	/**
	* Returns the int value represented by the string associated with the
	* specified key in this preference node.  The string is converted to
	* an integer as by {@link Integer#parseInt(String)}.  Returns the
	* specified default if there is no value associated with the key,
	* the backing store is inaccessible, or if
	* <tt>Integer.parseInt(String)</tt> would throw a {@link
	* NumberFormatException} if the associated value were passed.  This
	* method is intended for use in conjunction with {@link #putInt}.
	*
	* <p>If the implementation supports <i>stored defaults</i> and such a
	* default exists, is accessible, and could be converted to an int
	* with <tt>Integer.parseInt</tt>, this int is returned in preference to
	* the specified default.
	*
	* @param key key whose associated value is to be returned as an int.
	* @param def the value to be returned in the event that this
	*        preference node has no value associated with <tt>key</tt>
	*        or the associated value cannot be interpreted as an int,
	*        or the backing store is inaccessible.
	* @return the int value represented by the string associated with
	*         <tt>key</tt> in this preference node, or <tt>def</tt> if the
	*         associated value does not exist or cannot be interpreted as
	*         an int.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @throws NullPointerException if <tt>key</tt> is <tt>null</tt>.
	* @see #putInt(String,int)
	* @see #get(String,String)
	*/
	@:overload @:public @:abstract public function getInt(key : String, def : Int) : Int;
	
	/**
	* Associates a string representing the specified long value with the
	* specified key in this preference node.  The associated string is the
	* one that would be returned if the long value were passed to
	* {@link Long#toString(long)}.  This method is intended for use in
	* conjunction with {@link #getLong}.
	*
	* @param key key with which the string form of value is to be associated.
	* @param value value whose string form is to be associated with key.
	* @throws NullPointerException if <tt>key</tt> is <tt>null</tt>.
	* @throws IllegalArgumentException if <tt>key.length()</tt> exceeds
	*         <tt>MAX_KEY_LENGTH</tt>.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @see #getLong(String,long)
	*/
	@:overload @:public @:abstract public function putLong(key : String, value : haxe.Int64) : Void;
	
	/**
	* Returns the long value represented by the string associated with the
	* specified key in this preference node.  The string is converted to
	* a long as by {@link Long#parseLong(String)}.  Returns the
	* specified default if there is no value associated with the key,
	* the backing store is inaccessible, or if
	* <tt>Long.parseLong(String)</tt> would throw a {@link
	* NumberFormatException} if the associated value were passed.  This
	* method is intended for use in conjunction with {@link #putLong}.
	*
	* <p>If the implementation supports <i>stored defaults</i> and such a
	* default exists, is accessible, and could be converted to a long
	* with <tt>Long.parseLong</tt>, this long is returned in preference to
	* the specified default.
	*
	* @param key key whose associated value is to be returned as a long.
	* @param def the value to be returned in the event that this
	*        preference node has no value associated with <tt>key</tt>
	*        or the associated value cannot be interpreted as a long,
	*        or the backing store is inaccessible.
	* @return the long value represented by the string associated with
	*         <tt>key</tt> in this preference node, or <tt>def</tt> if the
	*         associated value does not exist or cannot be interpreted as
	*         a long.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @throws NullPointerException if <tt>key</tt> is <tt>null</tt>.
	* @see #putLong(String,long)
	* @see #get(String,String)
	*/
	@:overload @:public @:abstract public function getLong(key : String, def : haxe.Int64) : haxe.Int64;
	
	/**
	* Associates a string representing the specified boolean value with the
	* specified key in this preference node.  The associated string is
	* <tt>"true"</tt> if the value is true, and <tt>"false"</tt> if it is
	* false.  This method is intended for use in conjunction with
	* {@link #getBoolean}.
	*
	* @param key key with which the string form of value is to be associated.
	* @param value value whose string form is to be associated with key.
	* @throws NullPointerException if <tt>key</tt> is <tt>null</tt>.
	* @throws IllegalArgumentException if <tt>key.length()</tt> exceeds
	*         <tt>MAX_KEY_LENGTH</tt>.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @see #getBoolean(String,boolean)
	* @see #get(String,String)
	*/
	@:overload @:public @:abstract public function putBoolean(key : String, value : Bool) : Void;
	
	/**
	* Returns the boolean value represented by the string associated with the
	* specified key in this preference node.  Valid strings
	* are <tt>"true"</tt>, which represents true, and <tt>"false"</tt>, which
	* represents false.  Case is ignored, so, for example, <tt>"TRUE"</tt>
	* and <tt>"False"</tt> are also valid.  This method is intended for use in
	* conjunction with {@link #putBoolean}.
	*
	* <p>Returns the specified default if there is no value
	* associated with the key, the backing store is inaccessible, or if the
	* associated value is something other than <tt>"true"</tt> or
	* <tt>"false"</tt>, ignoring case.
	*
	* <p>If the implementation supports <i>stored defaults</i> and such a
	* default exists and is accessible, it is used in preference to the
	* specified default, unless the stored default is something other than
	* <tt>"true"</tt> or <tt>"false"</tt>, ignoring case, in which case the
	* specified default is used.
	*
	* @param key key whose associated value is to be returned as a boolean.
	* @param def the value to be returned in the event that this
	*        preference node has no value associated with <tt>key</tt>
	*        or the associated value cannot be interpreted as a boolean,
	*        or the backing store is inaccessible.
	* @return the boolean value represented by the string associated with
	*         <tt>key</tt> in this preference node, or <tt>def</tt> if the
	*         associated value does not exist or cannot be interpreted as
	*         a boolean.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @throws NullPointerException if <tt>key</tt> is <tt>null</tt>.
	* @see #get(String,String)
	* @see #putBoolean(String,boolean)
	*/
	@:overload @:public @:abstract public function getBoolean(key : String, def : Bool) : Bool;
	
	/**
	* Associates a string representing the specified float value with the
	* specified key in this preference node.  The associated string is the
	* one that would be returned if the float value were passed to
	* {@link Float#toString(float)}.  This method is intended for use in
	* conjunction with {@link #getFloat}.
	*
	* @param key key with which the string form of value is to be associated.
	* @param value value whose string form is to be associated with key.
	* @throws NullPointerException if <tt>key</tt> is <tt>null</tt>.
	* @throws IllegalArgumentException if <tt>key.length()</tt> exceeds
	*         <tt>MAX_KEY_LENGTH</tt>.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @see #getFloat(String,float)
	*/
	@:overload @:public @:abstract public function putFloat(key : String, value : Single) : Void;
	
	/**
	* Returns the float value represented by the string associated with the
	* specified key in this preference node.  The string is converted to an
	* integer as by {@link Float#parseFloat(String)}.  Returns the specified
	* default if there is no value associated with the key, the backing store
	* is inaccessible, or if <tt>Float.parseFloat(String)</tt> would throw a
	* {@link NumberFormatException} if the associated value were passed.
	* This method is intended for use in conjunction with {@link #putFloat}.
	*
	* <p>If the implementation supports <i>stored defaults</i> and such a
	* default exists, is accessible, and could be converted to a float
	* with <tt>Float.parseFloat</tt>, this float is returned in preference to
	* the specified default.
	*
	* @param key key whose associated value is to be returned as a float.
	* @param def the value to be returned in the event that this
	*        preference node has no value associated with <tt>key</tt>
	*        or the associated value cannot be interpreted as a float,
	*        or the backing store is inaccessible.
	* @return the float value represented by the string associated with
	*         <tt>key</tt> in this preference node, or <tt>def</tt> if the
	*         associated value does not exist or cannot be interpreted as
	*         a float.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @throws NullPointerException if <tt>key</tt> is <tt>null</tt>.
	* @see #putFloat(String,float)
	* @see #get(String,String)
	*/
	@:overload @:public @:abstract public function getFloat(key : String, def : Single) : Single;
	
	/**
	* Associates a string representing the specified double value with the
	* specified key in this preference node.  The associated string is the
	* one that would be returned if the double value were passed to
	* {@link Double#toString(double)}.  This method is intended for use in
	* conjunction with {@link #getDouble}.
	*
	* @param key key with which the string form of value is to be associated.
	* @param value value whose string form is to be associated with key.
	* @throws NullPointerException if <tt>key</tt> is <tt>null</tt>.
	* @throws IllegalArgumentException if <tt>key.length()</tt> exceeds
	*         <tt>MAX_KEY_LENGTH</tt>.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @see #getDouble(String,double)
	*/
	@:overload @:public @:abstract public function putDouble(key : String, value : Float) : Void;
	
	/**
	* Returns the double value represented by the string associated with the
	* specified key in this preference node.  The string is converted to an
	* integer as by {@link Double#parseDouble(String)}.  Returns the specified
	* default if there is no value associated with the key, the backing store
	* is inaccessible, or if <tt>Double.parseDouble(String)</tt> would throw a
	* {@link NumberFormatException} if the associated value were passed.
	* This method is intended for use in conjunction with {@link #putDouble}.
	*
	* <p>If the implementation supports <i>stored defaults</i> and such a
	* default exists, is accessible, and could be converted to a double
	* with <tt>Double.parseDouble</tt>, this double is returned in preference
	* to the specified default.
	*
	* @param key key whose associated value is to be returned as a double.
	* @param def the value to be returned in the event that this
	*        preference node has no value associated with <tt>key</tt>
	*        or the associated value cannot be interpreted as a double,
	*        or the backing store is inaccessible.
	* @return the double value represented by the string associated with
	*         <tt>key</tt> in this preference node, or <tt>def</tt> if the
	*         associated value does not exist or cannot be interpreted as
	*         a double.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @throws NullPointerException if <tt>key</tt> is <tt>null</tt>.
	* @see #putDouble(String,double)
	* @see #get(String,String)
	*/
	@:overload @:public @:abstract public function getDouble(key : String, def : Float) : Float;
	
	/**
	* Associates a string representing the specified byte array with the
	* specified key in this preference node.  The associated string is
	* the <i>Base64</i> encoding of the byte array, as defined in <a
	* href=http://www.ietf.org/rfc/rfc2045.txt>RFC 2045</a>, Section 6.8,
	* with one minor change: the string will consist solely of characters
	* from the <i>Base64 Alphabet</i>; it will not contain any newline
	* characters.  Note that the maximum length of the byte array is limited
	* to three quarters of <tt>MAX_VALUE_LENGTH</tt> so that the length
	* of the Base64 encoded String does not exceed <tt>MAX_VALUE_LENGTH</tt>.
	* This method is intended for use in conjunction with
	* {@link #getByteArray}.
	*
	* @param key key with which the string form of value is to be associated.
	* @param value value whose string form is to be associated with key.
	* @throws NullPointerException if key or value is <tt>null</tt>.
	* @throws IllegalArgumentException if key.length() exceeds MAX_KEY_LENGTH
	*         or if value.length exceeds MAX_VALUE_LENGTH*3/4.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @see #getByteArray(String,byte[])
	* @see #get(String,String)
	*/
	@:overload @:public @:abstract public function putByteArray(key : String, value : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Returns the byte array value represented by the string associated with
	* the specified key in this preference node.  Valid strings are
	* <i>Base64</i> encoded binary data, as defined in <a
	* href=http://www.ietf.org/rfc/rfc2045.txt>RFC 2045</a>, Section 6.8,
	* with one minor change: the string must consist solely of characters
	* from the <i>Base64 Alphabet</i>; no newline characters or
	* extraneous characters are permitted.  This method is intended for use
	* in conjunction with {@link #putByteArray}.
	*
	* <p>Returns the specified default if there is no value
	* associated with the key, the backing store is inaccessible, or if the
	* associated value is not a valid Base64 encoded byte array
	* (as defined above).
	*
	* <p>If the implementation supports <i>stored defaults</i> and such a
	* default exists and is accessible, it is used in preference to the
	* specified default, unless the stored default is not a valid Base64
	* encoded byte array (as defined above), in which case the
	* specified default is used.
	*
	* @param key key whose associated value is to be returned as a byte array.
	* @param def the value to be returned in the event that this
	*        preference node has no value associated with <tt>key</tt>
	*        or the associated value cannot be interpreted as a byte array,
	*        or the backing store is inaccessible.
	* @return the byte array value represented by the string associated with
	*         <tt>key</tt> in this preference node, or <tt>def</tt> if the
	*         associated value does not exist or cannot be interpreted as
	*         a byte array.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @throws NullPointerException if <tt>key</tt> is <tt>null</tt>.  (A
	*         <tt>null</tt> value for <tt>def</tt> <i>is</i> permitted.)
	* @see #get(String,String)
	* @see #putByteArray(String,byte[])
	*/
	@:overload @:public @:abstract public function getByteArray(key : String, def : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns all of the keys that have an associated value in this
	* preference node.  (The returned array will be of size zero if
	* this node has no preferences.)
	*
	* <p>If the implementation supports <i>stored defaults</i> and there
	* are any such defaults at this node that have not been overridden,
	* by explicit preferences, the defaults are returned in the array in
	* addition to any explicit preferences.
	*
	* @return an array of the keys that have an associated value in this
	*         preference node.
	* @throws BackingStoreException if this operation cannot be completed
	*         due to a failure in the backing store, or inability to
	*         communicate with it.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	*/
	@:overload @:public @:abstract public function keys() : java.NativeArray<String>;
	
	/**
	* Returns the names of the children of this preference node, relative to
	* this node.  (The returned array will be of size zero if this node has
	* no children.)
	*
	* @return the names of the children of this preference node.
	* @throws BackingStoreException if this operation cannot be completed
	*         due to a failure in the backing store, or inability to
	*         communicate with it.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	*/
	@:overload @:public @:abstract public function childrenNames() : java.NativeArray<String>;
	
	/**
	* Returns the parent of this preference node, or <tt>null</tt> if this is
	* the root.
	*
	* @return the parent of this preference node.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	*/
	@:overload @:public @:abstract public function parent() : java.util.prefs.Preferences;
	
	/**
	* Returns the named preference node in the same tree as this node,
	* creating it and any of its ancestors if they do not already exist.
	* Accepts a relative or absolute path name.  Relative path names
	* (which do not begin with the slash character <tt>('/')</tt>) are
	* interpreted relative to this preference node.
	*
	* <p>If the returned node did not exist prior to this call, this node and
	* any ancestors that were created by this call are not guaranteed
	* to become permanent until the <tt>flush</tt> method is called on
	* the returned node (or one of its ancestors or descendants).
	*
	* @param pathName the path name of the preference node to return.
	* @return the specified preference node.
	* @throws IllegalArgumentException if the path name is invalid (i.e.,
	*         it contains multiple consecutive slash characters, or ends
	*         with a slash character and is more than one character long).
	* @throws NullPointerException if path name is <tt>null</tt>.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @see #flush()
	*/
	@:overload @:public @:abstract public function node(pathName : String) : java.util.prefs.Preferences;
	
	/**
	* Returns true if the named preference node exists in the same tree
	* as this node.  Relative path names (which do not begin with the slash
	* character <tt>('/')</tt>) are interpreted relative to this preference
	* node.
	*
	* <p>If this node (or an ancestor) has already been removed with the
	* {@link #removeNode()} method, it <i>is</i> legal to invoke this method,
	* but only with the path name <tt>""</tt>; the invocation will return
	* <tt>false</tt>.  Thus, the idiom <tt>p.nodeExists("")</tt> may be
	* used to test whether <tt>p</tt> has been removed.
	*
	* @param pathName the path name of the node whose existence
	*        is to be checked.
	* @return true if the specified node exists.
	* @throws BackingStoreException if this operation cannot be completed
	*         due to a failure in the backing store, or inability to
	*         communicate with it.
	* @throws IllegalArgumentException if the path name is invalid (i.e.,
	*         it contains multiple consecutive slash characters, or ends
	*         with a slash character and is more than one character long).
	* @throws NullPointerException if path name is <tt>null</tt>.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method and
	*         <tt>pathName</tt> is not the empty string (<tt>""</tt>).
	*/
	@:overload @:public @:abstract public function nodeExists(pathName : String) : Bool;
	
	/**
	* Removes this preference node and all of its descendants, invalidating
	* any preferences contained in the removed nodes.  Once a node has been
	* removed, attempting any method other than {@link #name()},
	* {@link #absolutePath()}, {@link #isUserNode()}, {@link #flush()} or
	* {@link #node(String) nodeExists("")} on the corresponding
	* <tt>Preferences</tt> instance will fail with an
	* <tt>IllegalStateException</tt>.  (The methods defined on {@link Object}
	* can still be invoked on a node after it has been removed; they will not
	* throw <tt>IllegalStateException</tt>.)
	*
	* <p>The removal is not guaranteed to be persistent until the
	* <tt>flush</tt> method is called on this node (or an ancestor).
	*
	* <p>If this implementation supports <i>stored defaults</i>, removing a
	* node exposes any stored defaults at or below this node.  Thus, a
	* subsequent call to <tt>nodeExists</tt> on this node's path name may
	* return <tt>true</tt>, and a subsequent call to <tt>node</tt> on this
	* path name may return a (different) <tt>Preferences</tt> instance
	* representing a non-empty collection of preferences and/or children.
	*
	* @throws BackingStoreException if this operation cannot be completed
	*         due to a failure in the backing store, or inability to
	*         communicate with it.
	* @throws IllegalStateException if this node (or an ancestor) has already
	*         been removed with the {@link #removeNode()} method.
	* @throws UnsupportedOperationException if this method is invoked on
	*         the root node.
	* @see #flush()
	*/
	@:overload @:public @:abstract public function removeNode() : Void;
	
	/**
	* Returns this preference node's name, relative to its parent.
	*
	* @return this preference node's name, relative to its parent.
	*/
	@:overload @:public @:abstract public function name() : String;
	
	/**
	* Returns this preference node's absolute path name.
	*
	* @return this preference node's absolute path name.
	*/
	@:overload @:public @:abstract public function absolutePath() : String;
	
	/**
	* Returns <tt>true</tt> if this preference node is in the user
	* preference tree, <tt>false</tt> if it's in the system preference tree.
	*
	* @return <tt>true</tt> if this preference node is in the user
	*         preference tree, <tt>false</tt> if it's in the system
	*         preference tree.
	*/
	@:overload @:public @:abstract public function isUserNode() : Bool;
	
	/**
	* Returns a string representation of this preferences node,
	* as if computed by the expression:<tt>(this.isUserNode() ? "User" :
	* "System") + " Preference Node: " + this.absolutePath()</tt>.
	*/
	@:overload @:public @:abstract public function toString() : String;
	
	/**
	* Forces any changes in the contents of this preference node and its
	* descendants to the persistent store.  Once this method returns
	* successfully, it is safe to assume that all changes made in the
	* subtree rooted at this node prior to the method invocation have become
	* permanent.
	*
	* <p>Implementations are free to flush changes into the persistent store
	* at any time.  They do not need to wait for this method to be called.
	*
	* <p>When a flush occurs on a newly created node, it is made persistent,
	* as are any ancestors (and descendants) that have yet to be made
	* persistent.  Note however that any preference value changes in
	* ancestors are <i>not</i> guaranteed to be made persistent.
	*
	* <p> If this method is invoked on a node that has been removed with
	* the {@link #removeNode()} method, flushSpi() is invoked on this node,
	* but not on others.
	*
	* @throws BackingStoreException if this operation cannot be completed
	*         due to a failure in the backing store, or inability to
	*         communicate with it.
	* @see    #sync()
	*/
	@:overload @:public @:abstract public function flush() : Void;
	
	/**
	* Ensures that future reads from this preference node and its
	* descendants reflect any changes that were committed to the persistent
	* store (from any VM) prior to the <tt>sync</tt> invocation.  As a
	* side-effect, forces any changes in the contents of this preference node
	* and its descendants to the persistent store, as if the <tt>flush</tt>
	* method had been invoked on this node.
	*
	* @throws BackingStoreException if this operation cannot be completed
	*         due to a failure in the backing store, or inability to
	*         communicate with it.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @see    #flush()
	*/
	@:overload @:public @:abstract public function sync() : Void;
	
	/**
	* Registers the specified listener to receive <i>preference change
	* events</i> for this preference node.  A preference change event is
	* generated when a preference is added to this node, removed from this
	* node, or when the value associated with a preference is changed.
	* (Preference change events are <i>not</i> generated by the {@link
	* #removeNode()} method, which generates a <i>node change event</i>.
	* Preference change events <i>are</i> generated by the <tt>clear</tt>
	* method.)
	*
	* <p>Events are only guaranteed for changes made within the same JVM
	* as the registered listener, though some implementations may generate
	* events for changes made outside this JVM.  Events may be generated
	* before the changes have been made persistent.  Events are not generated
	* when preferences are modified in descendants of this node; a caller
	* desiring such events must register with each descendant.
	*
	* @param pcl The preference change listener to add.
	* @throws NullPointerException if <tt>pcl</tt> is null.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @see #removePreferenceChangeListener(PreferenceChangeListener)
	* @see #addNodeChangeListener(NodeChangeListener)
	*/
	@:overload @:public @:abstract public function addPreferenceChangeListener(pcl : java.util.prefs.PreferenceChangeListener) : Void;
	
	/**
	* Removes the specified preference change listener, so it no longer
	* receives preference change events.
	*
	* @param pcl The preference change listener to remove.
	* @throws IllegalArgumentException if <tt>pcl</tt> was not a registered
	*         preference change listener on this node.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @see #addPreferenceChangeListener(PreferenceChangeListener)
	*/
	@:overload @:public @:abstract public function removePreferenceChangeListener(pcl : java.util.prefs.PreferenceChangeListener) : Void;
	
	/**
	* Registers the specified listener to receive <i>node change events</i>
	* for this node.  A node change event is generated when a child node is
	* added to or removed from this node.  (A single {@link #removeNode()}
	* invocation results in multiple <i>node change events</i>, one for every
	* node in the subtree rooted at the removed node.)
	*
	* <p>Events are only guaranteed for changes made within the same JVM
	* as the registered listener, though some implementations may generate
	* events for changes made outside this JVM.  Events may be generated
	* before the changes have become permanent.  Events are not generated
	* when indirect descendants of this node are added or removed; a
	* caller desiring such events must register with each descendant.
	*
	* <p>Few guarantees can be made regarding node creation.  Because nodes
	* are created implicitly upon access, it may not be feasible for an
	* implementation to determine whether a child node existed in the backing
	* store prior to access (for example, because the backing store is
	* unreachable or cached information is out of date).  Under these
	* circumstances, implementations are neither required to generate node
	* change events nor prohibited from doing so.
	*
	* @param ncl The <tt>NodeChangeListener</tt> to add.
	* @throws NullPointerException if <tt>ncl</tt> is null.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @see #removeNodeChangeListener(NodeChangeListener)
	* @see #addPreferenceChangeListener(PreferenceChangeListener)
	*/
	@:overload @:public @:abstract public function addNodeChangeListener(ncl : java.util.prefs.NodeChangeListener) : Void;
	
	/**
	* Removes the specified <tt>NodeChangeListener</tt>, so it no longer
	* receives change events.
	*
	* @param ncl The <tt>NodeChangeListener</tt> to remove.
	* @throws IllegalArgumentException if <tt>ncl</tt> was not a registered
	*         <tt>NodeChangeListener</tt> on this node.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @see #addNodeChangeListener(NodeChangeListener)
	*/
	@:overload @:public @:abstract public function removeNodeChangeListener(ncl : java.util.prefs.NodeChangeListener) : Void;
	
	/**
	* Emits on the specified output stream an XML document representing all
	* of the preferences contained in this node (but not its descendants).
	* This XML document is, in effect, an offline backup of the node.
	*
	* <p>The XML document will have the following DOCTYPE declaration:
	* <pre>
	* &lt;!DOCTYPE preferences SYSTEM "http://java.sun.com/dtd/preferences.dtd"&gt;
	* </pre>
	* The UTF-8 character encoding will be used.
	*
	* <p>This method is an exception to the general rule that the results of
	* concurrently executing multiple methods in this class yields
	* results equivalent to some serial execution.  If the preferences
	* at this node are modified concurrently with an invocation of this
	* method, the exported preferences comprise a "fuzzy snapshot" of the
	* preferences contained in the node; some of the concurrent modifications
	* may be reflected in the exported data while others may not.
	*
	* @param os the output stream on which to emit the XML document.
	* @throws IOException if writing to the specified output stream
	*         results in an <tt>IOException</tt>.
	* @throws BackingStoreException if preference data cannot be read from
	*         backing store.
	* @see    #importPreferences(InputStream)
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	*/
	@:overload @:public @:abstract public function exportNode(os : java.io.OutputStream) : Void;
	
	/**
	* Emits an XML document representing all of the preferences contained
	* in this node and all of its descendants.  This XML document is, in
	* effect, an offline backup of the subtree rooted at the node.
	*
	* <p>The XML document will have the following DOCTYPE declaration:
	* <pre>
	* &lt;!DOCTYPE preferences SYSTEM "http://java.sun.com/dtd/preferences.dtd"&gt;
	* </pre>
	* The UTF-8 character encoding will be used.
	*
	* <p>This method is an exception to the general rule that the results of
	* concurrently executing multiple methods in this class yields
	* results equivalent to some serial execution.  If the preferences
	* or nodes in the subtree rooted at this node are modified concurrently
	* with an invocation of this method, the exported preferences comprise a
	* "fuzzy snapshot" of the subtree; some of the concurrent modifications
	* may be reflected in the exported data while others may not.
	*
	* @param os the output stream on which to emit the XML document.
	* @throws IOException if writing to the specified output stream
	*         results in an <tt>IOException</tt>.
	* @throws BackingStoreException if preference data cannot be read from
	*         backing store.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @see    #importPreferences(InputStream)
	* @see    #exportNode(OutputStream)
	*/
	@:overload @:public @:abstract public function exportSubtree(os : java.io.OutputStream) : Void;
	
	/**
	* Imports all of the preferences represented by the XML document on the
	* specified input stream.  The document may represent user preferences or
	* system preferences.  If it represents user preferences, the preferences
	* will be imported into the calling user's preference tree (even if they
	* originally came from a different user's preference tree).  If any of
	* the preferences described by the document inhabit preference nodes that
	* do not exist, the nodes will be created.
	*
	* <p>The XML document must have the following DOCTYPE declaration:
	* <pre>
	* &lt;!DOCTYPE preferences SYSTEM "http://java.sun.com/dtd/preferences.dtd"&gt;
	* </pre>
	* (This method is designed for use in conjunction with
	* {@link #exportNode(OutputStream)} and
	* {@link #exportSubtree(OutputStream)}.
	*
	* <p>This method is an exception to the general rule that the results of
	* concurrently executing multiple methods in this class yields
	* results equivalent to some serial execution.  The method behaves
	* as if implemented on top of the other public methods in this class,
	* notably {@link #node(String)} and {@link #put(String, String)}.
	*
	* @param is the input stream from which to read the XML document.
	* @throws IOException if reading from the specified input stream
	*         results in an <tt>IOException</tt>.
	* @throws InvalidPreferencesFormatException Data on input stream does not
	*         constitute a valid XML document with the mandated document type.
	* @throws SecurityException If a security manager is present and
	*         it denies <tt>RuntimePermission("preferences")</tt>.
	* @see    RuntimePermission
	*/
	@:overload @:public @:static public static function importPreferences(is : java.io.InputStream) : Void;
	
	
}
