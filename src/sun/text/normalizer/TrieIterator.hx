package sun.text.normalizer;
/*
* Copyright (c) 2005, 2009, Oracle and/or its affiliates. All rights reserved.
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
*******************************************************************************
* (C) Copyright IBM Corp. and others, 1996-2009 - All Rights Reserved         *
*                                                                             *
* The original version of this source code and documentation is copyrighted   *
* and owned by IBM, These materials are provided under terms of a License     *
* Agreement between IBM and Sun. This technology is protected by multiple     *
* US and International patents. This notice and attribution to IBM may not    *
* to removed.                                                                 *
*******************************************************************************
*/
/**
* <p>Class enabling iteration of the values in a Trie.</p>
* <p>Result of each iteration contains the interval of codepoints that have
* the same value type and the value type itself.</p>
* <p>The comparison of each codepoint value is done via extract(), which the
* default implementation is to return the value as it is.</p>
* <p>Method extract() can be overwritten to perform manipulations on
* codepoint values in order to perform specialized comparison.</p>
* <p>TrieIterator is designed to be a generic iterator for the CharTrie
* and the IntTrie, hence to accommodate both types of data, the return
* result will be in terms of int (32 bit) values.</p>
* <p>See com.ibm.icu.text.UCharacterTypeIterator for examples of use.</p>
* <p>Notes for porting utrie_enum from icu4c to icu4j:<br>
* Internally, icu4c's utrie_enum performs all iterations in its body. In Java
* sense, the caller will have to pass a object with a callback function
* UTrieEnumRange(const void *context, UChar32 start, UChar32 limit,
* uint32_t value) into utrie_enum. utrie_enum will then find ranges of
* codepoints with the same value as determined by
* UTrieEnumValue(const void *context, uint32_t value). for each range,
* utrie_enum calls the callback function to perform a task. In this way,
* icu4c performs the iteration within utrie_enum.
* To follow the JDK model, icu4j is slightly different from icu4c.
* Instead of requesting the caller to implement an object for a callback.
* The caller will have to implement a subclass of TrieIterator, fleshing out
* the method extract(int) (equivalent to UTrieEnumValue). Independent of icu4j,
* the caller will have to code his own iteration and flesh out the task
* (equivalent to UTrieEnumRange) to be performed in the iteration loop.
* </p>
* <p>There are basically 3 usage scenarios for porting:</p>
* <p>1) UTrieEnumValue is the only implemented callback then just implement a
* subclass of TrieIterator and override the extract(int) method. The
* extract(int) method is analogus to UTrieEnumValue callback.
* </p>
* <p>2) UTrieEnumValue and UTrieEnumRange both are implemented then implement
* a subclass of TrieIterator, override the extract method and iterate, e.g
* </p>
* <p>utrie_enum(&normTrie, _enumPropertyStartsValue, _enumPropertyStartsRange,
*               set);<br>
* In Java :<br>
* <pre>
* class TrieIteratorImpl extends TrieIterator{
*     public TrieIteratorImpl(Trie data){
*         super(data);
*     }
*     public int extract(int value){
*         // port the implementation of _enumPropertyStartsValue here
*     }
* }
* ....
* TrieIterator fcdIter  = new TrieIteratorImpl(fcdTrieImpl.fcdTrie);
* while(fcdIter.next(result)) {
*     // port the implementation of _enumPropertyStartsRange
* }
* </pre>
* </p>
* <p>3) UTrieEnumRange is the only implemented callback then just implement
* the while loop, when utrie_enum is called
* <pre>
* // utrie_enum(&fcdTrie, NULL, _enumPropertyStartsRange, set);
* TrieIterator fcdIter  = new TrieIterator(fcdTrieImpl.fcdTrie);
* while(fcdIter.next(result)){
*     set.add(result.start);
* }
* </pre>
* </p>
* @author synwee
* @see com.ibm.icu.impl.Trie
* @see com.ibm.icu.lang.UCharacterTypeIterator
* @since release 2.1, Jan 17 2002
*/
@:require(java1) extern class TrieIterator implements sun.text.normalizer.RangeValueIterator
{
	/**
	* TrieEnumeration constructor
	* @param trie to be used
	* @exception IllegalArgumentException throw when argument is null.
	*/
	@:overload @:public public function new(trie : sun.text.normalizer.Trie) : Void;
	
	/**
	* <p>Returns true if we are not at the end of the iteration, false
	* otherwise.</p>
	* <p>The next set of codepoints with the same value type will be
	* calculated during this call and returned in the arguement element.</p>
	* @param element return result
	* @return true if we are not at the end of the iteration, false otherwise.
	* @exception NoSuchElementException - if no more elements exist.
	* @see com.ibm.icu.util.RangeValueIterator.Element
	*/
	@:overload @:public @:final public function next(element : sun.text.normalizer.RangeValueIterator.RangeValueIterator_Element) : Bool;
	
	/**
	* Resets the iterator to the beginning of the iteration
	*/
	@:overload @:public @:final public function reset() : Void;
	
	/**
	* Called by next() to extracts a 32 bit value from a trie value
	* used for comparison.
	* This method is to be overwritten if special manipulation is to be done
	* to retrieve a relevant comparison.
	* The default function is to return the value as it is.
	* @param value a value from the trie
	* @return extracted value
	*/
	@:overload @:protected private function extract(value : Int) : Int;
	
	
}
