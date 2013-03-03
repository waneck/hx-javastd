package java.util.prefs;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class AbstractPreferences extends java.util.prefs.Preferences
{
	/**
	* This field should be <tt>true</tt> if this node did not exist in the
	* backing store prior to the creation of this object.  The field
	* is initialized to false, but may be set to true by a subclass
	* constructor (and should not be modified thereafter).  This field
	* indicates whether a node change event should be fired when
	* creation is complete.
	*/
	@:protected private var newNode : Bool;
	
	/**
	* An object whose monitor is used to lock this node.  This object
	* is used in preference to the node itself to reduce the likelihood of
	* intentional or unintentional denial of service due to a locked node.
	* To avoid deadlock, a node is <i>never</i> locked by a thread that
	* holds a lock on a descendant of that node.
	*/
	@:protected @:final private var lock(default, null) : Dynamic;
	
	/**
	* Creates a preference node with the specified parent and the specified
	* name relative to its parent.
	*
	* @param parent the parent of this preference node, or null if this
	*               is the root.
	* @param name the name of this preference node, relative to its parent,
	*             or <tt>""</tt> if this is the root.
	* @throws IllegalArgumentException if <tt>name</tt> contains a slash
	*          (<tt>'/'</tt>),  or <tt>parent</tt> is <tt>null</tt> and
	*          name isn't <tt>""</tt>.
	*/
	@:overload @:protected private function new(parent : java.util.prefs.AbstractPreferences, name : String) : Void;
	
	/**
	* Implements the <tt>put</tt> method as per the specification in
	* {@link Preferences#put(String,String)}.
	*
	* <p>This implementation checks that the key and value are legal,
	* obtains this preference node's lock, checks that the node
	* has not been removed, invokes {@link #putSpi(String,String)}, and if
	* there are any preference change listeners, enqueues a notification
	* event for processing by the event dispatch thread.
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
	@:overload @:public override public function put(key : String, value : String) : Void;
	
	/**
	* Implements the <tt>get</tt> method as per the specification in
	* {@link Preferences#get(String,String)}.
	*
	* <p>This implementation first checks to see if <tt>key</tt> is
	* <tt>null</tt> throwing a <tt>NullPointerException</tt> if this is
	* the case.  Then it obtains this preference node's lock,
	* checks that the node has not been removed, invokes {@link
	* #getSpi(String)}, and returns the result, unless the <tt>getSpi</tt>
	* invocation returns <tt>null</tt> or throws an exception, in which case
	* this invocation returns <tt>def</tt>.
	*
	* @param key key whose associated value is to be returned.
	* @param def the value to be returned in the event that this
	*        preference node has no value associated with <tt>key</tt>.
	* @return the value associated with <tt>key</tt>, or <tt>def</tt>
	*         if no value is associated with <tt>key</tt>.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @throws NullPointerException if key is <tt>null</tt>.  (A
	*         <tt>null</tt> default <i>is</i> permitted.)
	*/
	@:overload @:public override public function get(key : String, def : String) : String;
	
	/**
	* Implements the <tt>remove(String)</tt> method as per the specification
	* in {@link Preferences#remove(String)}.
	*
	* <p>This implementation obtains this preference node's lock,
	* checks that the node has not been removed, invokes
	* {@link #removeSpi(String)} and if there are any preference
	* change listeners, enqueues a notification event for processing by the
	* event dispatch thread.
	*
	* @param key key whose mapping is to be removed from the preference node.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	*/
	@:overload @:public override public function remove(key : String) : Void;
	
	/**
	* Implements the <tt>clear</tt> method as per the specification in
	* {@link Preferences#clear()}.
	*
	* <p>This implementation obtains this preference node's lock,
	* invokes {@link #keys()} to obtain an array of keys, and
	* iterates over the array invoking {@link #remove(String)} on each key.
	*
	* @throws BackingStoreException if this operation cannot be completed
	*         due to a failure in the backing store, or inability to
	*         communicate with it.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	*/
	@:overload @:public override public function clear() : Void;
	
	/**
	* Implements the <tt>putInt</tt> method as per the specification in
	* {@link Preferences#putInt(String,int)}.
	*
	* <p>This implementation translates <tt>value</tt> to a string with
	* {@link Integer#toString(int)} and invokes {@link #put(String,String)}
	* on the result.
	*
	* @param key key with which the string form of value is to be associated.
	* @param value value whose string form is to be associated with key.
	* @throws NullPointerException if key is <tt>null</tt>.
	* @throws IllegalArgumentException if <tt>key.length()</tt> exceeds
	*         <tt>MAX_KEY_LENGTH</tt>.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	*/
	@:overload @:public override public function putInt(key : String, value : Int) : Void;
	
	/**
	* Implements the <tt>getInt</tt> method as per the specification in
	* {@link Preferences#getInt(String,int)}.
	*
	* <p>This implementation invokes {@link #get(String,String) <tt>get(key,
	* null)</tt>}.  If the return value is non-null, the implementation
	* attempts to translate it to an <tt>int</tt> with
	* {@link Integer#parseInt(String)}.  If the attempt succeeds, the return
	* value is returned by this method.  Otherwise, <tt>def</tt> is returned.
	*
	* @param key key whose associated value is to be returned as an int.
	* @param def the value to be returned in the event that this
	*        preference node has no value associated with <tt>key</tt>
	*        or the associated value cannot be interpreted as an int.
	* @return the int value represented by the string associated with
	*         <tt>key</tt> in this preference node, or <tt>def</tt> if the
	*         associated value does not exist or cannot be interpreted as
	*         an int.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @throws NullPointerException if <tt>key</tt> is <tt>null</tt>.
	*/
	@:overload @:public override public function getInt(key : String, def : Int) : Int;
	
	/**
	* Implements the <tt>putLong</tt> method as per the specification in
	* {@link Preferences#putLong(String,long)}.
	*
	* <p>This implementation translates <tt>value</tt> to a string with
	* {@link Long#toString(long)} and invokes {@link #put(String,String)}
	* on the result.
	*
	* @param key key with which the string form of value is to be associated.
	* @param value value whose string form is to be associated with key.
	* @throws NullPointerException if key is <tt>null</tt>.
	* @throws IllegalArgumentException if <tt>key.length()</tt> exceeds
	*         <tt>MAX_KEY_LENGTH</tt>.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	*/
	@:overload @:public override public function putLong(key : String, value : haxe.Int64) : Void;
	
	/**
	* Implements the <tt>getLong</tt> method as per the specification in
	* {@link Preferences#getLong(String,long)}.
	*
	* <p>This implementation invokes {@link #get(String,String) <tt>get(key,
	* null)</tt>}.  If the return value is non-null, the implementation
	* attempts to translate it to a <tt>long</tt> with
	* {@link Long#parseLong(String)}.  If the attempt succeeds, the return
	* value is returned by this method.  Otherwise, <tt>def</tt> is returned.
	*
	* @param key key whose associated value is to be returned as a long.
	* @param def the value to be returned in the event that this
	*        preference node has no value associated with <tt>key</tt>
	*        or the associated value cannot be interpreted as a long.
	* @return the long value represented by the string associated with
	*         <tt>key</tt> in this preference node, or <tt>def</tt> if the
	*         associated value does not exist or cannot be interpreted as
	*         a long.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @throws NullPointerException if <tt>key</tt> is <tt>null</tt>.
	*/
	@:overload @:public override public function getLong(key : String, def : haxe.Int64) : haxe.Int64;
	
	/**
	* Implements the <tt>putBoolean</tt> method as per the specification in
	* {@link Preferences#putBoolean(String,boolean)}.
	*
	* <p>This implementation translates <tt>value</tt> to a string with
	* {@link String#valueOf(boolean)} and invokes {@link #put(String,String)}
	* on the result.
	*
	* @param key key with which the string form of value is to be associated.
	* @param value value whose string form is to be associated with key.
	* @throws NullPointerException if key is <tt>null</tt>.
	* @throws IllegalArgumentException if <tt>key.length()</tt> exceeds
	*         <tt>MAX_KEY_LENGTH</tt>.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	*/
	@:overload @:public override public function putBoolean(key : String, value : Bool) : Void;
	
	/**
	* Implements the <tt>getBoolean</tt> method as per the specification in
	* {@link Preferences#getBoolean(String,boolean)}.
	*
	* <p>This implementation invokes {@link #get(String,String) <tt>get(key,
	* null)</tt>}.  If the return value is non-null, it is compared with
	* <tt>"true"</tt> using {@link String#equalsIgnoreCase(String)}.  If the
	* comparison returns <tt>true</tt>, this invocation returns
	* <tt>true</tt>.  Otherwise, the original return value is compared with
	* <tt>"false"</tt>, again using {@link String#equalsIgnoreCase(String)}.
	* If the comparison returns <tt>true</tt>, this invocation returns
	* <tt>false</tt>.  Otherwise, this invocation returns <tt>def</tt>.
	*
	* @param key key whose associated value is to be returned as a boolean.
	* @param def the value to be returned in the event that this
	*        preference node has no value associated with <tt>key</tt>
	*        or the associated value cannot be interpreted as a boolean.
	* @return the boolean value represented by the string associated with
	*         <tt>key</tt> in this preference node, or <tt>def</tt> if the
	*         associated value does not exist or cannot be interpreted as
	*         a boolean.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @throws NullPointerException if <tt>key</tt> is <tt>null</tt>.
	*/
	@:overload @:public override public function getBoolean(key : String, def : Bool) : Bool;
	
	/**
	* Implements the <tt>putFloat</tt> method as per the specification in
	* {@link Preferences#putFloat(String,float)}.
	*
	* <p>This implementation translates <tt>value</tt> to a string with
	* {@link Float#toString(float)} and invokes {@link #put(String,String)}
	* on the result.
	*
	* @param key key with which the string form of value is to be associated.
	* @param value value whose string form is to be associated with key.
	* @throws NullPointerException if key is <tt>null</tt>.
	* @throws IllegalArgumentException if <tt>key.length()</tt> exceeds
	*         <tt>MAX_KEY_LENGTH</tt>.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	*/
	@:overload @:public override public function putFloat(key : String, value : Single) : Void;
	
	/**
	* Implements the <tt>getFloat</tt> method as per the specification in
	* {@link Preferences#getFloat(String,float)}.
	*
	* <p>This implementation invokes {@link #get(String,String) <tt>get(key,
	* null)</tt>}.  If the return value is non-null, the implementation
	* attempts to translate it to an <tt>float</tt> with
	* {@link Float#parseFloat(String)}.  If the attempt succeeds, the return
	* value is returned by this method.  Otherwise, <tt>def</tt> is returned.
	*
	* @param key key whose associated value is to be returned as a float.
	* @param def the value to be returned in the event that this
	*        preference node has no value associated with <tt>key</tt>
	*        or the associated value cannot be interpreted as a float.
	* @return the float value represented by the string associated with
	*         <tt>key</tt> in this preference node, or <tt>def</tt> if the
	*         associated value does not exist or cannot be interpreted as
	*         a float.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @throws NullPointerException if <tt>key</tt> is <tt>null</tt>.
	*/
	@:overload @:public override public function getFloat(key : String, def : Single) : Single;
	
	/**
	* Implements the <tt>putDouble</tt> method as per the specification in
	* {@link Preferences#putDouble(String,double)}.
	*
	* <p>This implementation translates <tt>value</tt> to a string with
	* {@link Double#toString(double)} and invokes {@link #put(String,String)}
	* on the result.
	*
	* @param key key with which the string form of value is to be associated.
	* @param value value whose string form is to be associated with key.
	* @throws NullPointerException if key is <tt>null</tt>.
	* @throws IllegalArgumentException if <tt>key.length()</tt> exceeds
	*         <tt>MAX_KEY_LENGTH</tt>.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	*/
	@:overload @:public override public function putDouble(key : String, value : Float) : Void;
	
	/**
	* Implements the <tt>getDouble</tt> method as per the specification in
	* {@link Preferences#getDouble(String,double)}.
	*
	* <p>This implementation invokes {@link #get(String,String) <tt>get(key,
	* null)</tt>}.  If the return value is non-null, the implementation
	* attempts to translate it to an <tt>double</tt> with
	* {@link Double#parseDouble(String)}.  If the attempt succeeds, the return
	* value is returned by this method.  Otherwise, <tt>def</tt> is returned.
	*
	* @param key key whose associated value is to be returned as a double.
	* @param def the value to be returned in the event that this
	*        preference node has no value associated with <tt>key</tt>
	*        or the associated value cannot be interpreted as a double.
	* @return the double value represented by the string associated with
	*         <tt>key</tt> in this preference node, or <tt>def</tt> if the
	*         associated value does not exist or cannot be interpreted as
	*         a double.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @throws NullPointerException if <tt>key</tt> is <tt>null</tt>.
	*/
	@:overload @:public override public function getDouble(key : String, def : Float) : Float;
	
	/**
	* Implements the <tt>putByteArray</tt> method as per the specification in
	* {@link Preferences#putByteArray(String,byte[])}.
	*
	* @param key key with which the string form of value is to be associated.
	* @param value value whose string form is to be associated with key.
	* @throws NullPointerException if key or value is <tt>null</tt>.
	* @throws IllegalArgumentException if key.length() exceeds MAX_KEY_LENGTH
	*         or if value.length exceeds MAX_VALUE_LENGTH*3/4.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	*/
	@:overload @:public override public function putByteArray(key : String, value : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Implements the <tt>getByteArray</tt> method as per the specification in
	* {@link Preferences#getByteArray(String,byte[])}.
	*
	* @param key key whose associated value is to be returned as a byte array.
	* @param def the value to be returned in the event that this
	*        preference node has no value associated with <tt>key</tt>
	*        or the associated value cannot be interpreted as a byte array.
	* @return the byte array value represented by the string associated with
	*         <tt>key</tt> in this preference node, or <tt>def</tt> if the
	*         associated value does not exist or cannot be interpreted as
	*         a byte array.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @throws NullPointerException if <tt>key</tt> is <tt>null</tt>.  (A
	*         <tt>null</tt> value for <tt>def</tt> <i>is</i> permitted.)
	*/
	@:overload @:public override public function getByteArray(key : String, def : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Implements the <tt>keys</tt> method as per the specification in
	* {@link Preferences#keys()}.
	*
	* <p>This implementation obtains this preference node's lock, checks that
	* the node has not been removed and invokes {@link #keysSpi()}.
	*
	* @return an array of the keys that have an associated value in this
	*         preference node.
	* @throws BackingStoreException if this operation cannot be completed
	*         due to a failure in the backing store, or inability to
	*         communicate with it.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	*/
	@:overload @:public override public function keys() : java.NativeArray<String>;
	
	/**
	* Implements the <tt>children</tt> method as per the specification in
	* {@link Preferences#childrenNames()}.
	*
	* <p>This implementation obtains this preference node's lock, checks that
	* the node has not been removed, constructs a <tt>TreeSet</tt> initialized
	* to the names of children already cached (the children in this node's
	* "child-cache"), invokes {@link #childrenNamesSpi()}, and adds all of the
	* returned child-names into the set.  The elements of the tree set are
	* dumped into a <tt>String</tt> array using the <tt>toArray</tt> method,
	* and this array is returned.
	*
	* @return the names of the children of this preference node.
	* @throws BackingStoreException if this operation cannot be completed
	*         due to a failure in the backing store, or inability to
	*         communicate with it.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @see #cachedChildren()
	*/
	@:overload @:public override public function childrenNames() : java.NativeArray<String>;
	
	/**
	* Returns all known unremoved children of this node.
	*
	* @return all known unremoved children of this node.
	*/
	@:overload @:protected @:final private function cachedChildren() : java.NativeArray<java.util.prefs.AbstractPreferences>;
	
	/**
	* Implements the <tt>parent</tt> method as per the specification in
	* {@link Preferences#parent()}.
	*
	* <p>This implementation obtains this preference node's lock, checks that
	* the node has not been removed and returns the parent value that was
	* passed to this node's constructor.
	*
	* @return the parent of this preference node.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	*/
	@:overload @:public override public function parent() : java.util.prefs.Preferences;
	
	/**
	* Implements the <tt>node</tt> method as per the specification in
	* {@link Preferences#node(String)}.
	*
	* <p>This implementation obtains this preference node's lock and checks
	* that the node has not been removed.  If <tt>path</tt> is <tt>""</tt>,
	* this node is returned; if <tt>path</tt> is <tt>"/"</tt>, this node's
	* root is returned.  If the first character in <tt>path</tt> is
	* not <tt>'/'</tt>, the implementation breaks <tt>path</tt> into
	* tokens and recursively traverses the path from this node to the
	* named node, "consuming" a name and a slash from <tt>path</tt> at
	* each step of the traversal.  At each step, the current node is locked
	* and the node's child-cache is checked for the named node.  If it is
	* not found, the name is checked to make sure its length does not
	* exceed <tt>MAX_NAME_LENGTH</tt>.  Then the {@link #childSpi(String)}
	* method is invoked, and the result stored in this node's child-cache.
	* If the newly created <tt>Preferences</tt> object's {@link #newNode}
	* field is <tt>true</tt> and there are any node change listeners,
	* a notification event is enqueued for processing by the event dispatch
	* thread.
	*
	* <p>When there are no more tokens, the last value found in the
	* child-cache or returned by <tt>childSpi</tt> is returned by this
	* method.  If during the traversal, two <tt>"/"</tt> tokens occur
	* consecutively, or the final token is <tt>"/"</tt> (rather than a name),
	* an appropriate <tt>IllegalArgumentException</tt> is thrown.
	*
	* <p> If the first character of <tt>path</tt> is <tt>'/'</tt>
	* (indicating an absolute path name) this preference node's
	* lock is dropped prior to breaking <tt>path</tt> into tokens, and
	* this method recursively traverses the path starting from the root
	* (rather than starting from this node).  The traversal is otherwise
	* identical to the one described for relative path names.  Dropping
	* the lock on this node prior to commencing the traversal at the root
	* node is essential to avoid the possibility of deadlock, as per the
	* {@link #lock locking invariant}.
	*
	* @param path the path name of the preference node to return.
	* @return the specified preference node.
	* @throws IllegalArgumentException if the path name is invalid (i.e.,
	*         it contains multiple consecutive slash characters, or ends
	*         with a slash character and is more than one character long).
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	*/
	@:overload @:public override public function node(path : String) : java.util.prefs.Preferences;
	
	/**
	* Implements the <tt>nodeExists</tt> method as per the specification in
	* {@link Preferences#nodeExists(String)}.
	*
	* <p>This implementation is very similar to {@link #node(String)},
	* except that {@link #getChild(String)} is used instead of {@link
	* #childSpi(String)}.
	*
	* @param path the path name of the node whose existence is to be checked.
	* @return true if the specified node exists.
	* @throws BackingStoreException if this operation cannot be completed
	*         due to a failure in the backing store, or inability to
	*         communicate with it.
	* @throws IllegalArgumentException if the path name is invalid (i.e.,
	*         it contains multiple consecutive slash characters, or ends
	*         with a slash character and is more than one character long).
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method and
	*         <tt>pathname</tt> is not the empty string (<tt>""</tt>).
	*/
	@:overload @:public override public function nodeExists(path : String) : Bool;
	
	/**

	* Implements the <tt>removeNode()</tt> method as per the specification in
	* {@link Preferences#removeNode()}.
	*
	* <p>This implementation checks to see that this node is the root; if so,
	* it throws an appropriate exception.  Then, it locks this node's parent,
	* and calls a recursive helper method that traverses the subtree rooted at
	* this node.  The recursive method locks the node on which it was called,
	* checks that it has not already been removed, and then ensures that all
	* of its children are cached: The {@link #childrenNamesSpi()} method is
	* invoked and each returned child name is checked for containment in the
	* child-cache.  If a child is not already cached, the {@link
	* #childSpi(String)} method is invoked to create a <tt>Preferences</tt>
	* instance for it, and this instance is put into the child-cache.  Then
	* the helper method calls itself recursively on each node contained in its
	* child-cache.  Next, it invokes {@link #removeNodeSpi()}, marks itself
	* as removed, and removes itself from its parent's child-cache.  Finally,
	* if there are any node change listeners, it enqueues a notification
	* event for processing by the event dispatch thread.
	*
	* <p>Note that the helper method is always invoked with all ancestors up
	* to the "closest non-removed ancestor" locked.
	*
	* @throws IllegalStateException if this node (or an ancestor) has already
	*         been removed with the {@link #removeNode()} method.
	* @throws UnsupportedOperationException if this method is invoked on
	*         the root node.
	* @throws BackingStoreException if this operation cannot be completed
	*         due to a failure in the backing store, or inability to
	*         communicate with it.
	*/
	@:overload @:public override public function removeNode() : Void;
	
	/**
	* Implements the <tt>name</tt> method as per the specification in
	* {@link Preferences#name()}.
	*
	* <p>This implementation merely returns the name that was
	* passed to this node's constructor.
	*
	* @return this preference node's name, relative to its parent.
	*/
	@:overload @:public override public function name() : String;
	
	/**
	* Implements the <tt>absolutePath</tt> method as per the specification in
	* {@link Preferences#absolutePath()}.
	*
	* <p>This implementation merely returns the absolute path name that
	* was computed at the time that this node was constructed (based on
	* the name that was passed to this node's constructor, and the names
	* that were passed to this node's ancestors' constructors).
	*
	* @return this preference node's absolute path name.
	*/
	@:overload @:public override public function absolutePath() : String;
	
	/**
	* Implements the <tt>isUserNode</tt> method as per the specification in
	* {@link Preferences#isUserNode()}.
	*
	* <p>This implementation compares this node's root node (which is stored
	* in a private field) with the value returned by
	* {@link Preferences#userRoot()}.  If the two object references are
	* identical, this method returns true.
	*
	* @return <tt>true</tt> if this preference node is in the user
	*         preference tree, <tt>false</tt> if it's in the system
	*         preference tree.
	*/
	@:overload @:public override public function isUserNode() : Bool;
	
	@:overload @:public override public function addPreferenceChangeListener(pcl : java.util.prefs.PreferenceChangeListener) : Void;
	
	@:overload @:public override public function removePreferenceChangeListener(pcl : java.util.prefs.PreferenceChangeListener) : Void;
	
	@:overload @:public override public function addNodeChangeListener(ncl : java.util.prefs.NodeChangeListener) : Void;
	
	@:overload @:public override public function removeNodeChangeListener(ncl : java.util.prefs.NodeChangeListener) : Void;
	
	/**
	* Put the given key-value association into this preference node.  It is
	* guaranteed that <tt>key</tt> and <tt>value</tt> are non-null and of
	* legal length.  Also, it is guaranteed that this node has not been
	* removed.  (The implementor needn't check for any of these things.)
	*
	* <p>This method is invoked with the lock on this node held.
	*/
	@:overload @:protected @:abstract private function putSpi(key : String, value : String) : Void;
	
	/**
	* Return the value associated with the specified key at this preference
	* node, or <tt>null</tt> if there is no association for this key, or the
	* association cannot be determined at this time.  It is guaranteed that
	* <tt>key</tt> is non-null.  Also, it is guaranteed that this node has
	* not been removed.  (The implementor needn't check for either of these
	* things.)
	*
	* <p> Generally speaking, this method should not throw an exception
	* under any circumstances.  If, however, if it does throw an exception,
	* the exception will be intercepted and treated as a <tt>null</tt>
	* return value.
	*
	* <p>This method is invoked with the lock on this node held.
	*
	* @return the value associated with the specified key at this preference
	*          node, or <tt>null</tt> if there is no association for this
	*          key, or the association cannot be determined at this time.
	*/
	@:overload @:protected @:abstract private function getSpi(key : String) : String;
	
	/**
	* Remove the association (if any) for the specified key at this
	* preference node.  It is guaranteed that <tt>key</tt> is non-null.
	* Also, it is guaranteed that this node has not been removed.
	* (The implementor needn't check for either of these things.)
	*
	* <p>This method is invoked with the lock on this node held.
	*/
	@:overload @:protected @:abstract private function removeSpi(key : String) : Void;
	
	/**
	* Removes this preference node, invalidating it and any preferences that
	* it contains.  The named child will have no descendants at the time this
	* invocation is made (i.e., the {@link Preferences#removeNode()} method
	* invokes this method repeatedly in a bottom-up fashion, removing each of
	* a node's descendants before removing the node itself).
	*
	* <p>This method is invoked with the lock held on this node and its
	* parent (and all ancestors that are being removed as a
	* result of a single invocation to {@link Preferences#removeNode()}).
	*
	* <p>The removal of a node needn't become persistent until the
	* <tt>flush</tt> method is invoked on this node (or an ancestor).
	*
	* <p>If this node throws a <tt>BackingStoreException</tt>, the exception
	* will propagate out beyond the enclosing {@link #removeNode()}
	* invocation.
	*
	* @throws BackingStoreException if this operation cannot be completed
	*         due to a failure in the backing store, or inability to
	*         communicate with it.
	*/
	@:overload @:protected @:abstract private function removeNodeSpi() : Void;
	
	/**
	* Returns all of the keys that have an associated value in this
	* preference node.  (The returned array will be of size zero if
	* this node has no preferences.)  It is guaranteed that this node has not
	* been removed.
	*
	* <p>This method is invoked with the lock on this node held.
	*
	* <p>If this node throws a <tt>BackingStoreException</tt>, the exception
	* will propagate out beyond the enclosing {@link #keys()} invocation.
	*
	* @return an array of the keys that have an associated value in this
	*         preference node.
	* @throws BackingStoreException if this operation cannot be completed
	*         due to a failure in the backing store, or inability to
	*         communicate with it.
	*/
	@:overload @:protected @:abstract private function keysSpi() : java.NativeArray<String>;
	
	/**
	* Returns the names of the children of this preference node.  (The
	* returned array will be of size zero if this node has no children.)
	* This method need not return the names of any nodes already cached,
	* but may do so without harm.
	*
	* <p>This method is invoked with the lock on this node held.
	*
	* <p>If this node throws a <tt>BackingStoreException</tt>, the exception
	* will propagate out beyond the enclosing {@link #childrenNames()}
	* invocation.
	*
	* @return an array containing the names of the children of this
	*         preference node.
	* @throws BackingStoreException if this operation cannot be completed
	*         due to a failure in the backing store, or inability to
	*         communicate with it.
	*/
	@:overload @:protected @:abstract private function childrenNamesSpi() : java.NativeArray<String>;
	
	/**
	* Returns the named child if it exists, or <tt>null</tt> if it does not.
	* It is guaranteed that <tt>nodeName</tt> is non-null, non-empty,
	* does not contain the slash character ('/'), and is no longer than
	* {@link #MAX_NAME_LENGTH} characters.  Also, it is guaranteed
	* that this node has not been removed.  (The implementor needn't check
	* for any of these things if he chooses to override this method.)
	*
	* <p>Finally, it is guaranteed that the named node has not been returned
	* by a previous invocation of this method or {@link #childSpi} after the
	* last time that it was removed.  In other words, a cached value will
	* always be used in preference to invoking this method.  (The implementor
	* needn't maintain his own cache of previously returned children if he
	* chooses to override this method.)
	*
	* <p>This implementation obtains this preference node's lock, invokes
	* {@link #childrenNames()} to get an array of the names of this node's
	* children, and iterates over the array comparing the name of each child
	* with the specified node name.  If a child node has the correct name,
	* the {@link #childSpi(String)} method is invoked and the resulting
	* node is returned.  If the iteration completes without finding the
	* specified name, <tt>null</tt> is returned.
	*
	* @param nodeName name of the child to be searched for.
	* @return the named child if it exists, or null if it does not.
	* @throws BackingStoreException if this operation cannot be completed
	*         due to a failure in the backing store, or inability to
	*         communicate with it.
	*/
	@:overload @:protected private function getChild(nodeName : String) : java.util.prefs.AbstractPreferences;
	
	/**
	* Returns the named child of this preference node, creating it if it does
	* not already exist.  It is guaranteed that <tt>name</tt> is non-null,
	* non-empty, does not contain the slash character ('/'), and is no longer
	* than {@link #MAX_NAME_LENGTH} characters.  Also, it is guaranteed that
	* this node has not been removed.  (The implementor needn't check for any
	* of these things.)
	*
	* <p>Finally, it is guaranteed that the named node has not been returned
	* by a previous invocation of this method or {@link #getChild(String)}
	* after the last time that it was removed.  In other words, a cached
	* value will always be used in preference to invoking this method.
	* Subclasses need not maintain their own cache of previously returned
	* children.
	*
	* <p>The implementer must ensure that the returned node has not been
	* removed.  If a like-named child of this node was previously removed, the
	* implementer must return a newly constructed <tt>AbstractPreferences</tt>
	* node; once removed, an <tt>AbstractPreferences</tt> node
	* cannot be "resuscitated."
	*
	* <p>If this method causes a node to be created, this node is not
	* guaranteed to be persistent until the <tt>flush</tt> method is
	* invoked on this node or one of its ancestors (or descendants).
	*
	* <p>This method is invoked with the lock on this node held.
	*
	* @param name The name of the child node to return, relative to
	*        this preference node.
	* @return The named child node.
	*/
	@:overload @:protected @:abstract private function childSpi(name : String) : java.util.prefs.AbstractPreferences;
	
	/**
	* Returns the absolute path name of this preferences node.
	*/
	@:overload @:public override public function toString() : String;
	
	/**
	* Implements the <tt>sync</tt> method as per the specification in
	* {@link Preferences#sync()}.
	*
	* <p>This implementation calls a recursive helper method that locks this
	* node, invokes syncSpi() on it, unlocks this node, and recursively
	* invokes this method on each "cached child."  A cached child is a child
	* of this node that has been created in this VM and not subsequently
	* removed.  In effect, this method does a depth first traversal of the
	* "cached subtree" rooted at this node, calling syncSpi() on each node in
	* the subTree while only that node is locked. Note that syncSpi() is
	* invoked top-down.
	*
	* @throws BackingStoreException if this operation cannot be completed
	*         due to a failure in the backing store, or inability to
	*         communicate with it.
	* @throws IllegalStateException if this node (or an ancestor) has been
	*         removed with the {@link #removeNode()} method.
	* @see #flush()
	*/
	@:overload @:public override public function sync() : Void;
	
	/**
	* This method is invoked with this node locked.  The contract of this
	* method is to synchronize any cached preferences stored at this node
	* with any stored in the backing store.  (It is perfectly possible that
	* this node does not exist on the backing store, either because it has
	* been deleted by another VM, or because it has not yet been created.)
	* Note that this method should <i>not</i> synchronize the preferences in
	* any subnodes of this node.  If the backing store naturally syncs an
	* entire subtree at once, the implementer is encouraged to override
	* sync(), rather than merely overriding this method.
	*
	* <p>If this node throws a <tt>BackingStoreException</tt>, the exception
	* will propagate out beyond the enclosing {@link #sync()} invocation.
	*
	* @throws BackingStoreException if this operation cannot be completed
	*         due to a failure in the backing store, or inability to
	*         communicate with it.
	*/
	@:overload @:protected @:abstract private function syncSpi() : Void;
	
	/**
	* Implements the <tt>flush</tt> method as per the specification in
	* {@link Preferences#flush()}.
	*
	* <p>This implementation calls a recursive helper method that locks this
	* node, invokes flushSpi() on it, unlocks this node, and recursively
	* invokes this method on each "cached child."  A cached child is a child
	* of this node that has been created in this VM and not subsequently
	* removed.  In effect, this method does a depth first traversal of the
	* "cached subtree" rooted at this node, calling flushSpi() on each node in
	* the subTree while only that node is locked. Note that flushSpi() is
	* invoked top-down.
	*
	* <p> If this method is invoked on a node that has been removed with
	* the {@link #removeNode()} method, flushSpi() is invoked on this node,
	* but not on others.
	*
	* @throws BackingStoreException if this operation cannot be completed
	*         due to a failure in the backing store, or inability to
	*         communicate with it.
	* @see #flush()
	*/
	@:overload @:public override public function flush() : Void;
	
	/**
	* This method is invoked with this node locked.  The contract of this
	* method is to force any cached changes in the contents of this
	* preference node to the backing store, guaranteeing their persistence.
	* (It is perfectly possible that this node does not exist on the backing
	* store, either because it has been deleted by another VM, or because it
	* has not yet been created.)  Note that this method should <i>not</i>
	* flush the preferences in any subnodes of this node.  If the backing
	* store naturally flushes an entire subtree at once, the implementer is
	* encouraged to override flush(), rather than merely overriding this
	* method.
	*
	* <p>If this node throws a <tt>BackingStoreException</tt>, the exception
	* will propagate out beyond the enclosing {@link #flush()} invocation.
	*
	* @throws BackingStoreException if this operation cannot be completed
	*         due to a failure in the backing store, or inability to
	*         communicate with it.
	*/
	@:overload @:protected @:abstract private function flushSpi() : Void;
	
	/**
	* Returns <tt>true</tt> iff this node (or an ancestor) has been
	* removed with the {@link #removeNode()} method.  This method
	* locks this node prior to returning the contents of the private
	* field used to track this state.
	*
	* @return <tt>true</tt> iff this node (or an ancestor) has been
	*       removed with the {@link #removeNode()} method.
	*/
	@:overload @:protected private function isRemoved() : Bool;
	
	/**
	* Implements the <tt>exportNode</tt> method as per the specification in
	* {@link Preferences#exportNode(OutputStream)}.
	*
	* @param os the output stream on which to emit the XML document.
	* @throws IOException if writing to the specified output stream
	*         results in an <tt>IOException</tt>.
	* @throws BackingStoreException if preference data cannot be read from
	*         backing store.
	*/
	@:overload @:public override public function exportNode(os : java.io.OutputStream) : Void;
	
	/**
	* Implements the <tt>exportSubtree</tt> method as per the specification in
	* {@link Preferences#exportSubtree(OutputStream)}.
	*
	* @param os the output stream on which to emit the XML document.
	* @throws IOException if writing to the specified output stream
	*         results in an <tt>IOException</tt>.
	* @throws BackingStoreException if preference data cannot be read from
	*         backing store.
	*/
	@:overload @:public override public function exportSubtree(os : java.io.OutputStream) : Void;
	
	
}
/**
* These two classes are used to distinguish NodeChangeEvents on
* eventQueue so the event dispatch thread knows whether to call
* childAdded or childRemoved.
*/
@:native('java$util$prefs$AbstractPreferences$NodeAddedEvent') @:internal extern class AbstractPreferences_NodeAddedEvent extends java.util.prefs.NodeChangeEvent
{
	
}
@:native('java$util$prefs$AbstractPreferences$NodeRemovedEvent') @:internal extern class AbstractPreferences_NodeRemovedEvent extends java.util.prefs.NodeChangeEvent
{
	
}
/**
* A single background thread ("the event notification thread") monitors
* the event queue and delivers events that are placed on the queue.
*/
@:native('java$util$prefs$AbstractPreferences$EventDispatchThread') @:internal extern class AbstractPreferences_EventDispatchThread extends java.lang.Thread
{
	@:overload @:public override public function run() : Void;
	
	
}
