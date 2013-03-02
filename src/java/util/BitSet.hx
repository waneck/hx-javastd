package java.util;
/*
* Copyright (c) 1995, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class BitSet implements java.lang.Cloneable implements java.io.Serializable
{
	/**
	* Creates a new bit set. All bits are initially {@code false}.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a bit set whose initial size is large enough to explicitly
	* represent bits with indices in the range {@code 0} through
	* {@code nbits-1}. All bits are initially {@code false}.
	*
	* @param  nbits the initial size of the bit set
	* @throws NegativeArraySizeException if the specified initial size
	*         is negative
	*/
	@:overload public function new(nbits : Int) : Void;
	
	/**
	* Returns a new bit set containing all the bits in the given long array.
	*
	* <p>More precisely,
	* <br>{@code BitSet.valueOf(longs).get(n) == ((longs[n/64] & (1L<<(n%64))) != 0)}
	* <br>for all {@code n < 64 * longs.length}.
	*
	* <p>This method is equivalent to
	* {@code BitSet.valueOf(LongBuffer.wrap(longs))}.
	*
	* @param longs a long array containing a little-endian representation
	*        of a sequence of bits to be used as the initial bits of the
	*        new bit set
	* @since 1.7
	*/
	@:require(java7) @:overload public static function valueOf(longs : java.NativeArray<haxe.Int64>) : java.util.BitSet;
	
	/**
	* Returns a new bit set containing all the bits in the given long
	* buffer between its position and limit.
	*
	* <p>More precisely,
	* <br>{@code BitSet.valueOf(lb).get(n) == ((lb.get(lb.position()+n/64) & (1L<<(n%64))) != 0)}
	* <br>for all {@code n < 64 * lb.remaining()}.
	*
	* <p>The long buffer is not modified by this method, and no
	* reference to the buffer is retained by the bit set.
	*
	* @param lb a long buffer containing a little-endian representation
	*        of a sequence of bits between its position and limit, to be
	*        used as the initial bits of the new bit set
	* @since 1.7
	*/
	@:require(java7) @:overload public static function valueOf(lb : java.nio.LongBuffer) : java.util.BitSet;
	
	/**
	* Returns a new bit set containing all the bits in the given byte array.
	*
	* <p>More precisely,
	* <br>{@code BitSet.valueOf(bytes).get(n) == ((bytes[n/8] & (1<<(n%8))) != 0)}
	* <br>for all {@code n <  8 * bytes.length}.
	*
	* <p>This method is equivalent to
	* {@code BitSet.valueOf(ByteBuffer.wrap(bytes))}.
	*
	* @param bytes a byte array containing a little-endian
	*        representation of a sequence of bits to be used as the
	*        initial bits of the new bit set
	* @since 1.7
	*/
	@:require(java7) @:overload public static function valueOf(bytes : java.NativeArray<java.StdTypes.Int8>) : java.util.BitSet;
	
	/**
	* Returns a new bit set containing all the bits in the given byte
	* buffer between its position and limit.
	*
	* <p>More precisely,
	* <br>{@code BitSet.valueOf(bb).get(n) == ((bb.get(bb.position()+n/8) & (1<<(n%8))) != 0)}
	* <br>for all {@code n < 8 * bb.remaining()}.
	*
	* <p>The byte buffer is not modified by this method, and no
	* reference to the buffer is retained by the bit set.
	*
	* @param bb a byte buffer containing a little-endian representation
	*        of a sequence of bits between its position and limit, to be
	*        used as the initial bits of the new bit set
	* @since 1.7
	*/
	@:require(java7) @:overload public static function valueOf(bb : java.nio.ByteBuffer) : java.util.BitSet;
	
	/**
	* Returns a new byte array containing all the bits in this bit set.
	*
	* <p>More precisely, if
	* <br>{@code byte[] bytes = s.toByteArray();}
	* <br>then {@code bytes.length == (s.length()+7)/8} and
	* <br>{@code s.get(n) == ((bytes[n/8] & (1<<(n%8))) != 0)}
	* <br>for all {@code n < 8 * bytes.length}.
	*
	* @return a byte array containing a little-endian representation
	*         of all the bits in this bit set
	* @since 1.7
	*/
	@:require(java7) @:overload public function toByteArray() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns a new long array containing all the bits in this bit set.
	*
	* <p>More precisely, if
	* <br>{@code long[] longs = s.toLongArray();}
	* <br>then {@code longs.length == (s.length()+63)/64} and
	* <br>{@code s.get(n) == ((longs[n/64] & (1L<<(n%64))) != 0)}
	* <br>for all {@code n < 64 * longs.length}.
	*
	* @return a long array containing a little-endian representation
	*         of all the bits in this bit set
	* @since 1.7
	*/
	@:require(java7) @:overload public function toLongArray() : java.NativeArray<haxe.Int64>;
	
	/**
	* Sets the bit at the specified index to the complement of its
	* current value.
	*
	* @param  bitIndex the index of the bit to flip
	* @throws IndexOutOfBoundsException if the specified index is negative
	* @since  1.4
	*/
	@:require(java4) @:overload public function flip(bitIndex : Int) : Void;
	
	/**
	* Sets each bit from the specified {@code fromIndex} (inclusive) to the
	* specified {@code toIndex} (exclusive) to the complement of its current
	* value.
	*
	* @param  fromIndex index of the first bit to flip
	* @param  toIndex index after the last bit to flip
	* @throws IndexOutOfBoundsException if {@code fromIndex} is negative,
	*         or {@code toIndex} is negative, or {@code fromIndex} is
	*         larger than {@code toIndex}
	* @since  1.4
	*/
	@:require(java4) @:overload public function flip(fromIndex : Int, toIndex : Int) : Void;
	
	/**
	* Sets the bit at the specified index to {@code true}.
	*
	* @param  bitIndex a bit index
	* @throws IndexOutOfBoundsException if the specified index is negative
	* @since  JDK1.0
	*/
	@:require(java0) @:overload public function set(bitIndex : Int) : Void;
	
	/**
	* Sets the bit at the specified index to the specified value.
	*
	* @param  bitIndex a bit index
	* @param  value a boolean value to set
	* @throws IndexOutOfBoundsException if the specified index is negative
	* @since  1.4
	*/
	@:require(java4) @:overload public function set(bitIndex : Int, value : Bool) : Void;
	
	/**
	* Sets the bits from the specified {@code fromIndex} (inclusive) to the
	* specified {@code toIndex} (exclusive) to {@code true}.
	*
	* @param  fromIndex index of the first bit to be set
	* @param  toIndex index after the last bit to be set
	* @throws IndexOutOfBoundsException if {@code fromIndex} is negative,
	*         or {@code toIndex} is negative, or {@code fromIndex} is
	*         larger than {@code toIndex}
	* @since  1.4
	*/
	@:require(java4) @:overload public function set(fromIndex : Int, toIndex : Int) : Void;
	
	/**
	* Sets the bits from the specified {@code fromIndex} (inclusive) to the
	* specified {@code toIndex} (exclusive) to the specified value.
	*
	* @param  fromIndex index of the first bit to be set
	* @param  toIndex index after the last bit to be set
	* @param  value value to set the selected bits to
	* @throws IndexOutOfBoundsException if {@code fromIndex} is negative,
	*         or {@code toIndex} is negative, or {@code fromIndex} is
	*         larger than {@code toIndex}
	* @since  1.4
	*/
	@:require(java4) @:overload public function set(fromIndex : Int, toIndex : Int, value : Bool) : Void;
	
	/**
	* Sets the bit specified by the index to {@code false}.
	*
	* @param  bitIndex the index of the bit to be cleared
	* @throws IndexOutOfBoundsException if the specified index is negative
	* @since  JDK1.0
	*/
	@:require(java0) @:overload public function clear(bitIndex : Int) : Void;
	
	/**
	* Sets the bits from the specified {@code fromIndex} (inclusive) to the
	* specified {@code toIndex} (exclusive) to {@code false}.
	*
	* @param  fromIndex index of the first bit to be cleared
	* @param  toIndex index after the last bit to be cleared
	* @throws IndexOutOfBoundsException if {@code fromIndex} is negative,
	*         or {@code toIndex} is negative, or {@code fromIndex} is
	*         larger than {@code toIndex}
	* @since  1.4
	*/
	@:require(java4) @:overload public function clear(fromIndex : Int, toIndex : Int) : Void;
	
	/**
	* Sets all of the bits in this BitSet to {@code false}.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function clear() : Void;
	
	/**
	* Returns the value of the bit with the specified index. The value
	* is {@code true} if the bit with the index {@code bitIndex}
	* is currently set in this {@code BitSet}; otherwise, the result
	* is {@code false}.
	*
	* @param  bitIndex   the bit index
	* @return the value of the bit with the specified index
	* @throws IndexOutOfBoundsException if the specified index is negative
	*/
	@:overload public function get(bitIndex : Int) : Bool;
	
	/**
	* Returns a new {@code BitSet} composed of bits from this {@code BitSet}
	* from {@code fromIndex} (inclusive) to {@code toIndex} (exclusive).
	*
	* @param  fromIndex index of the first bit to include
	* @param  toIndex index after the last bit to include
	* @return a new {@code BitSet} from a range of this {@code BitSet}
	* @throws IndexOutOfBoundsException if {@code fromIndex} is negative,
	*         or {@code toIndex} is negative, or {@code fromIndex} is
	*         larger than {@code toIndex}
	* @since  1.4
	*/
	@:require(java4) @:overload public function get(fromIndex : Int, toIndex : Int) : java.util.BitSet;
	
	/**
	* Returns the index of the first bit that is set to {@code true}
	* that occurs on or after the specified starting index. If no such
	* bit exists then {@code -1} is returned.
	*
	* <p>To iterate over the {@code true} bits in a {@code BitSet},
	* use the following loop:
	*
	*  <pre> {@code
	* for (int i = bs.nextSetBit(0); i >= 0; i = bs.nextSetBit(i+1)) {
	*     // operate on index i here
	* }}</pre>
	*
	* @param  fromIndex the index to start checking from (inclusive)
	* @return the index of the next set bit, or {@code -1} if there
	*         is no such bit
	* @throws IndexOutOfBoundsException if the specified index is negative
	* @since  1.4
	*/
	@:require(java4) @:overload public function nextSetBit(fromIndex : Int) : Int;
	
	/**
	* Returns the index of the first bit that is set to {@code false}
	* that occurs on or after the specified starting index.
	*
	* @param  fromIndex the index to start checking from (inclusive)
	* @return the index of the next clear bit
	* @throws IndexOutOfBoundsException if the specified index is negative
	* @since  1.4
	*/
	@:require(java4) @:overload public function nextClearBit(fromIndex : Int) : Int;
	
	/**
	* Returns the index of the nearest bit that is set to {@code true}
	* that occurs on or before the specified starting index.
	* If no such bit exists, or if {@code -1} is given as the
	* starting index, then {@code -1} is returned.
	*
	* <p>To iterate over the {@code true} bits in a {@code BitSet},
	* use the following loop:
	*
	*  <pre> {@code
	* for (int i = bs.length(); (i = bs.previousSetBit(i-1)) >= 0; ) {
	*     // operate on index i here
	* }}</pre>
	*
	* @param  fromIndex the index to start checking from (inclusive)
	* @return the index of the previous set bit, or {@code -1} if there
	*         is no such bit
	* @throws IndexOutOfBoundsException if the specified index is less
	*         than {@code -1}
	* @since  1.7
	*/
	@:require(java7) @:overload public function previousSetBit(fromIndex : Int) : Int;
	
	/**
	* Returns the index of the nearest bit that is set to {@code false}
	* that occurs on or before the specified starting index.
	* If no such bit exists, or if {@code -1} is given as the
	* starting index, then {@code -1} is returned.
	*
	* @param  fromIndex the index to start checking from (inclusive)
	* @return the index of the previous clear bit, or {@code -1} if there
	*         is no such bit
	* @throws IndexOutOfBoundsException if the specified index is less
	*         than {@code -1}
	* @since  1.7
	*/
	@:require(java7) @:overload public function previousClearBit(fromIndex : Int) : Int;
	
	/**
	* Returns the "logical size" of this {@code BitSet}: the index of
	* the highest set bit in the {@code BitSet} plus one. Returns zero
	* if the {@code BitSet} contains no set bits.
	*
	* @return the logical size of this {@code BitSet}
	* @since  1.2
	*/
	@:require(java2) @:overload public function length() : Int;
	
	/**
	* Returns true if this {@code BitSet} contains no bits that are set
	* to {@code true}.
	*
	* @return boolean indicating whether this {@code BitSet} is empty
	* @since  1.4
	*/
	@:require(java4) @:overload public function isEmpty() : Bool;
	
	/**
	* Returns true if the specified {@code BitSet} has any bits set to
	* {@code true} that are also set to {@code true} in this {@code BitSet}.
	*
	* @param  set {@code BitSet} to intersect with
	* @return boolean indicating whether this {@code BitSet} intersects
	*         the specified {@code BitSet}
	* @since  1.4
	*/
	@:require(java4) @:overload public function intersects(set : java.util.BitSet) : Bool;
	
	/**
	* Returns the number of bits set to {@code true} in this {@code BitSet}.
	*
	* @return the number of bits set to {@code true} in this {@code BitSet}
	* @since  1.4
	*/
	@:require(java4) @:overload public function cardinality() : Int;
	
	/**
	* Performs a logical <b>AND</b> of this target bit set with the
	* argument bit set. This bit set is modified so that each bit in it
	* has the value {@code true} if and only if it both initially
	* had the value {@code true} and the corresponding bit in the
	* bit set argument also had the value {@code true}.
	*
	* @param set a bit set
	*/
	@:overload public function and(set : java.util.BitSet) : Void;
	
	/**
	* Performs a logical <b>OR</b> of this bit set with the bit set
	* argument. This bit set is modified so that a bit in it has the
	* value {@code true} if and only if it either already had the
	* value {@code true} or the corresponding bit in the bit set
	* argument has the value {@code true}.
	*
	* @param set a bit set
	*/
	@:overload public function or(set : java.util.BitSet) : Void;
	
	/**
	* Performs a logical <b>XOR</b> of this bit set with the bit set
	* argument. This bit set is modified so that a bit in it has the
	* value {@code true} if and only if one of the following
	* statements holds:
	* <ul>
	* <li>The bit initially has the value {@code true}, and the
	*     corresponding bit in the argument has the value {@code false}.
	* <li>The bit initially has the value {@code false}, and the
	*     corresponding bit in the argument has the value {@code true}.
	* </ul>
	*
	* @param  set a bit set
	*/
	@:overload public function xor(set : java.util.BitSet) : Void;
	
	/**
	* Clears all of the bits in this {@code BitSet} whose corresponding
	* bit is set in the specified {@code BitSet}.
	*
	* @param  set the {@code BitSet} with which to mask this
	*         {@code BitSet}
	* @since  1.2
	*/
	@:require(java2) @:overload public function andNot(set : java.util.BitSet) : Void;
	
	/**
	* Returns the hash code value for this bit set. The hash code depends
	* only on which bits are set within this {@code BitSet}.
	*
	* <p>The hash code is defined to be the result of the following
	* calculation:
	*  <pre> {@code
	* public int hashCode() {
	*     long h = 1234;
	*     long[] words = toLongArray();
	*     for (int i = words.length; --i >= 0; )
	*         h ^= words[i] * (i + 1);
	*     return (int)((h >> 32) ^ h);
	* }}</pre>
	* Note that the hash code changes if the set of bits is altered.
	*
	* @return the hash code value for this bit set
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns the number of bits of space actually in use by this
	* {@code BitSet} to represent bit values.
	* The maximum element in the set is the size - 1st element.
	*
	* @return the number of bits currently in this bit set
	*/
	@:overload public function size() : Int;
	
	/**
	* Compares this object against the specified object.
	* The result is {@code true} if and only if the argument is
	* not {@code null} and is a {@code Bitset} object that has
	* exactly the same set of bits set to {@code true} as this bit
	* set. That is, for every nonnegative {@code int} index {@code k},
	* <pre>((BitSet)obj).get(k) == this.get(k)</pre>
	* must be true. The current sizes of the two bit sets are not compared.
	*
	* @param  obj the object to compare with
	* @return {@code true} if the objects are the same;
	*         {@code false} otherwise
	* @see    #size()
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Cloning this {@code BitSet} produces a new {@code BitSet}
	* that is equal to it.
	* The clone of the bit set is another bit set that has exactly the
	* same bits set to {@code true} as this bit set.
	*
	* @return a clone of this bit set
	* @see    #size()
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* Returns a string representation of this bit set. For every index
	* for which this {@code BitSet} contains a bit in the set
	* state, the decimal representation of that index is included in
	* the result. Such indices are listed in order from lowest to
	* highest, separated by ",&nbsp;" (a comma and a space) and
	* surrounded by braces, resulting in the usual mathematical
	* notation for a set of integers.
	*
	* <p>Example:
	* <pre>
	* BitSet drPepper = new BitSet();</pre>
	* Now {@code drPepper.toString()} returns "{@code {}}".<p>
	* <pre>
	* drPepper.set(2);</pre>
	* Now {@code drPepper.toString()} returns "{@code {2}}".<p>
	* <pre>
	* drPepper.set(4);
	* drPepper.set(10);</pre>
	* Now {@code drPepper.toString()} returns "{@code {2, 4, 10}}".
	*
	* @return a string representation of this bit set
	*/
	@:overload public function toString() : String;
	
	
}
