package sun.misc;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class SoftCache extends java.util.AbstractMap<Dynamic, Dynamic> implements java.util.Map<Dynamic, Dynamic>
{
	/**
	* Construct a new, empty <code>SoftCache</code> with the given
	* initial capacity and the given load factor.
	*
	* @param  initialCapacity  The initial capacity of the cache
	*
	* @param  loadFactor       A number between 0.0 and 1.0
	*
	* @throws IllegalArgumentException  If the initial capacity is less than
	*                                   or equal to zero, or if the load
	*                                   factor is less than zero
	*/
	@:overload @:public public function new(initialCapacity : Int, loadFactor : Single) : Void;
	
	/**
	* Construct a new, empty <code>SoftCache</code> with the given
	* initial capacity and the default load factor.
	*
	* @param  initialCapacity  The initial capacity of the cache
	*
	* @throws IllegalArgumentException  If the initial capacity is less than
	*                                   or equal to zero
	*/
	@:overload @:public public function new(initialCapacity : Int) : Void;
	
	/**
	* Construct a new, empty <code>SoftCache</code> with the default
	* capacity and the default load factor.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Return the number of key-value mappings in this cache.  The time
	* required by this operation is linear in the size of the map.
	*/
	@:overload @:public override public function size() : Int;
	
	/**
	* Return <code>true</code> if this cache contains no key-value mappings.
	*/
	@:overload @:public override public function isEmpty() : Bool;
	
	/**
	* Return <code>true</code> if this cache contains a mapping for the
	* specified key.  If there is no mapping for the key, this method will not
	* attempt to construct one by invoking the <code>fill</code> method.
	*
	* @param   key   The key whose presence in the cache is to be tested
	*/
	@:overload @:public override public function containsKey(key : Dynamic) : Bool;
	
	/**
	* Create a value object for the given <code>key</code>.  This method is
	* invoked by the <code>get</code> method when there is no entry for
	* <code>key</code>.  If this method returns a non-<code>null</code> value,
	* then the cache will be updated to map <code>key</code> to that value,
	* and that value will be returned by the <code>get</code> method.
	*
	* <p> The default implementation of this method simply returns
	* <code>null</code> for every <code>key</code> value.  A subclass may
	* override this method to provide more useful behavior.
	*
	* @param  key  The key for which a value is to be computed
	*
	* @return      A value for <code>key</code>, or <code>null</code> if one
	*              could not be computed
	* @see #get
	*/
	@:overload @:protected private function fill(key : Dynamic) : Dynamic;
	
	/**
	* Return the value to which this cache maps the specified
	* <code>key</code>.  If the cache does not presently contain a value for
	* this key, then invoke the <code>fill</code> method in an attempt to
	* compute such a value.  If that method returns a non-<code>null</code>
	* value, then update the cache and return the new value.  Otherwise,
	* return <code>null</code>.
	*
	* <p> Note that because this method may update the cache, it is considered
	* a mutator and may cause <code>ConcurrentModificationException</code>s to
	* be thrown if invoked while an iterator is in use.
	*
	* @param  key  The key whose associated value, if any, is to be returned
	*
	* @see #fill
	*/
	@:overload @:public override public function get(key : Dynamic) : Dynamic;
	
	/**
	* Update this cache so that the given <code>key</code> maps to the given
	* <code>value</code>.  If the cache previously contained a mapping for
	* <code>key</code> then that mapping is replaced and the old value is
	* returned.
	*
	* @param  key    The key that is to be mapped to the given
	*                <code>value</code>
	* @param  value  The value to which the given <code>key</code> is to be
	*                mapped
	*
	* @return  The previous value to which this key was mapped, or
	*          <code>null</code> if if there was no mapping for the key
	*/
	@:overload @:public override public function put(key : Dynamic, value : Dynamic) : Dynamic;
	
	/**
	* Remove the mapping for the given <code>key</code> from this cache, if
	* present.
	*
	* @param  key  The key whose mapping is to be removed
	*
	* @return  The value to which this key was mapped, or <code>null</code> if
	*          there was no mapping for the key
	*/
	@:overload @:public override public function remove(key : Dynamic) : Dynamic;
	
	/**
	* Remove all mappings from this cache.
	*/
	@:overload @:public override public function clear() : Void;
	
	/**
	* Return a <code>Set</code> view of the mappings in this cache.
	*/
	@:overload @:public override public function entrySet() : java.util.Set<Dynamic>;
	
	
}
/* The basic idea of this implementation is to maintain an internal HashMap
that maps keys to soft references whose referents are the keys' values;
the various accessor methods dereference these soft references before
returning values.  Because we don't have access to the innards of the
HashMap, each soft reference must contain the key that maps to it so
that the processQueue method can remove keys whose values have been
discarded.  Thus the HashMap actually maps keys to instances of the
ValueCell class, which is a simple extension of the SoftReference class.
*/
@:native('sun$misc$SoftCache$ValueCell') @:internal extern class SoftCache_ValueCell extends java.lang.ref.SoftReference<Dynamic>
{
	
}
/* Internal class for entries.
Because it uses SoftCache.this.queue, this class cannot be static.
*/
@:native('sun$misc$SoftCache$Entry') @:internal extern class SoftCache_Entry implements java.util.Map.Map_Entry<Dynamic, Dynamic>
{
	@:overload @:public public function getKey() : Dynamic;
	
	@:overload @:public public function getValue() : Dynamic;
	
	@:overload @:public public function setValue(value : Dynamic) : Dynamic;
	
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	
}
/* Internal class for entry sets */
@:native('sun$misc$SoftCache$EntrySet') @:internal extern class SoftCache_EntrySet extends java.util.AbstractSet<Dynamic>
{
	@:overload @:public override public function iterator() : java.util.Iterator<Dynamic>;
	
	@:overload @:public override public function isEmpty() : Bool;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public override public function remove(o : Dynamic) : Bool;
	
	
}
