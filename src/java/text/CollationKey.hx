package java.text;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
/*
* (C) Copyright Taligent, Inc. 1996 - All Rights Reserved
* (C) Copyright IBM Corp. 1996 - All Rights Reserved
*
*   The original version of this source code and documentation is copyrighted
* and owned by Taligent, Inc., a wholly-owned subsidiary of IBM. These
* materials are provided under terms of a License Agreement between Taligent
* and Sun. This technology is protected by multiple US and International
* patents. This notice and attribution to Taligent may not be removed.
*   Taligent is a registered trademark of Taligent, Inc.
*
*/
/**
* A <code>CollationKey</code> represents a <code>String</code> under the
* rules of a specific <code>Collator</code> object. Comparing two
* <code>CollationKey</code>s returns the relative order of the
* <code>String</code>s they represent. Using <code>CollationKey</code>s
* to compare <code>String</code>s is generally faster than using
* <code>Collator.compare</code>. Thus, when the <code>String</code>s
* must be compared multiple times, for example when sorting a list
* of <code>String</code>s. It's more efficient to use <code>CollationKey</code>s.
*
* <p>
* You can not create <code>CollationKey</code>s directly. Rather,
* generate them by calling <code>Collator.getCollationKey</code>.
* You can only compare <code>CollationKey</code>s generated from
* the same <code>Collator</code> object.
*
* <p>
* Generating a <code>CollationKey</code> for a <code>String</code>
* involves examining the entire <code>String</code>
* and converting it to series of bits that can be compared bitwise. This
* allows fast comparisons once the keys are generated. The cost of generating
* keys is recouped in faster comparisons when <code>String</code>s need
* to be compared many times. On the other hand, the result of a comparison
* is often determined by the first couple of characters of each <code>String</code>.
* <code>Collator.compare</code> examines only as many characters as it needs which
* allows it to be faster when doing single comparisons.
* <p>
* The following example shows how <code>CollationKey</code>s might be used
* to sort a list of <code>String</code>s.
* <blockquote>
* <pre>
* // Create an array of CollationKeys for the Strings to be sorted.
* Collator myCollator = Collator.getInstance();
* CollationKey[] keys = new CollationKey[3];
* keys[0] = myCollator.getCollationKey("Tom");
* keys[1] = myCollator.getCollationKey("Dick");
* keys[2] = myCollator.getCollationKey("Harry");
* sort( keys );
* <br>
* //...
* <br>
* // Inside body of sort routine, compare keys this way
* if( keys[i].compareTo( keys[j] ) > 0 )
*    // swap keys[i] and keys[j]
* <br>
* //...
* <br>
* // Finally, when we've returned from sort.
* System.out.println( keys[0].getSourceString() );
* System.out.println( keys[1].getSourceString() );
* System.out.println( keys[2].getSourceString() );
* </pre>
* </blockquote>
*
* @see          Collator
* @see          RuleBasedCollator
* @author       Helena Shih
*/
extern class CollationKey implements java.lang.Comparable<java.text.CollationKey>
{
	/**
	* Compare this CollationKey to the target CollationKey. The collation rules of the
	* Collator object which created these keys are applied. <strong>Note:</strong>
	* CollationKeys created by different Collators can not be compared.
	* @param target target CollationKey
	* @return Returns an integer value. Value is less than zero if this is less
	* than target, value is zero if this and target are equal and value is greater than
	* zero if this is greater than target.
	* @see java.text.Collator#compare
	*/
	@:overload @:abstract @:public public function compareTo(target : java.text.CollationKey) : Int;
	
	/**
	* Returns the String that this CollationKey represents.
	*/
	@:overload @:public public function getSourceString() : String;
	
	/**
	* Converts the CollationKey to a sequence of bits. If two CollationKeys
	* could be legitimately compared, then one could compare the byte arrays
	* for each of those keys to obtain the same result.  Byte arrays are
	* organized most significant byte first.
	*/
	@:overload @:abstract @:public public function toByteArray() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* CollationKey constructor.
	*
	* @param source - the source string.
	* @exception NullPointerException if <code>source</code> is null.
	* @since 1.6
	*/
	@:require(java6) @:overload @:protected private function new(source : String) : Void;
	
	/**
	* Compares this object with the specified object for order.  Returns a
	* negative integer, zero, or a positive integer as this object is less
	* than, equal to, or greater than the specified object.
	*
	* <p>The implementor must ensure <tt>sgn(x.compareTo(y)) ==
	* -sgn(y.compareTo(x))</tt> for all <tt>x</tt> and <tt>y</tt>.  (This
	* implies that <tt>x.compareTo(y)</tt> must throw an exception iff
	* <tt>y.compareTo(x)</tt> throws an exception.)
	*
	* <p>The implementor must also ensure that the relation is transitive:
	* <tt>(x.compareTo(y)&gt;0 &amp;&amp; y.compareTo(z)&gt;0)</tt> implies
	* <tt>x.compareTo(z)&gt;0</tt>.
	*
	* <p>Finally, the implementor must ensure that <tt>x.compareTo(y)==0</tt>
	* implies that <tt>sgn(x.compareTo(z)) == sgn(y.compareTo(z))</tt>, for
	* all <tt>z</tt>.
	*
	* <p>It is strongly recommended, but <i>not</i> strictly required that
	* <tt>(x.compareTo(y)==0) == (x.equals(y))</tt>.  Generally speaking, any
	* class that implements the <tt>Comparable</tt> interface and violates
	* this condition should clearly indicate this fact.  The recommended
	* language is "Note: this class has a natural ordering that is
	* inconsistent with equals."
	*
	* <p>In the foregoing description, the notation
	* <tt>sgn(</tt><i>expression</i><tt>)</tt> designates the mathematical
	* <i>signum</i> function, which is defined to return one of <tt>-1</tt>,
	* <tt>0</tt>, or <tt>1</tt> according to whether the value of
	* <i>expression</i> is negative, zero or positive.
	*
	* @param   o the object to be compared.
	* @return  a negative integer, zero, or a positive integer as this object
	*          is less than, equal to, or greater than the specified object.
	*
	* @throws NullPointerException if the specified object is null
	* @throws ClassCastException if the specified object's type prevents it
	*         from being compared to this object.
	*/
	@:overload @:public public function compareTo(o : Dynamic) : Int;
	
	
}
