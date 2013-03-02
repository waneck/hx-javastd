package com.sun.org.apache.xpath.internal.objects;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: XStringForChars.java,v 1.2.4.1 2005/09/14 20:46:27 jeffsuttor Exp $
*/
extern class XStringForChars extends com.sun.org.apache.xpath.internal.objects.XString
{
	private var m_strCache : String;
	
	/**
	* Construct a XNodeSet object.
	*
	* @param val FastStringBuffer object this will wrap, must be non-null.
	* @param start The start position in the array.
	* @param length The number of characters to read from the array.
	*/
	@:overload public function new(val : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Cast result object to a string.
	*
	* @return The string this wraps or the empty string if null
	*/
	@:overload public function fsb() : com.sun.org.apache.xml.internal.utils.FastStringBuffer;
	
	/**
	* Cast result object to a string.
	*
	* @return The string this wraps or the empty string if null
	*/
	@:overload public function appendToFsb(fsb : com.sun.org.apache.xml.internal.utils.FastStringBuffer) : Void;
	
	/**
	* Tell if this object contains a java String object.
	*
	* @return true if this XMLString can return a string without creating one.
	*/
	@:overload override public function hasString() : Bool;
	
	/**
	* Cast result object to a string.
	*
	* @return The string this wraps or the empty string if null
	*/
	@:overload override public function str() : String;
	
	/**
	* Since this object is incomplete without the length and the offset, we
	* have to convert to a string when this function is called.
	*
	* @return The java String representation of this object.
	*/
	@:overload public function object() : Dynamic;
	
	/**
	* Directly call the
	* characters method on the passed ContentHandler for the
	* string-value. Multiple calls to the
	* ContentHandler's characters methods may well occur for a single call to
	* this method.
	*
	* @param ch A non-null reference to a ContentHandler.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload override public function dispatchCharactersEvents(ch : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Directly call the
	* comment method on the passed LexicalHandler for the
	* string-value.
	*
	* @param lh A non-null reference to a LexicalHandler.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload override public function dispatchAsComment(lh : org.xml.sax.ext.LexicalHandler) : Void;
	
	/**
	* Returns the length of this string.
	*
	* @return  the length of the sequence of characters represented by this
	*          object.
	*/
	@:overload override public function length() : Int;
	
	/**
	* Returns the character at the specified index. An index ranges
	* from <code>0</code> to <code>length() - 1</code>. The first character
	* of the sequence is at index <code>0</code>, the next at index
	* <code>1</code>, and so on, as for array indexing.
	*
	* @param      index   the index of the character.
	* @return     the character at the specified index of this string.
	*             The first character is at index <code>0</code>.
	* @exception  IndexOutOfBoundsException  if the <code>index</code>
	*             argument is negative or not less than the length of this
	*             string.
	*/
	@:overload override public function charAt(index : Int) : java.StdTypes.Char16;
	
	/**
	* Copies characters from this string into the destination character
	* array.
	*
	* @param      srcBegin   index of the first character in the string
	*                        to copy.
	* @param      srcEnd     index after the last character in the string
	*                        to copy.
	* @param      dst        the destination array.
	* @param      dstBegin   the start offset in the destination array.
	* @exception IndexOutOfBoundsException If any of the following
	*            is true:
	*            <ul><li><code>srcBegin</code> is negative.
	*            <li><code>srcBegin</code> is greater than <code>srcEnd</code>
	*            <li><code>srcEnd</code> is greater than the length of this
	*                string
	*            <li><code>dstBegin</code> is negative
	*            <li><code>dstBegin+(srcEnd-srcBegin)</code> is larger than
	*                <code>dst.length</code></ul>
	* @exception NullPointerException if <code>dst</code> is <code>null</code>
	*/
	@:overload override public function getChars(srcBegin : Int, srcEnd : Int, dst : java.NativeArray<java.StdTypes.Char16>, dstBegin : Int) : Void;
	
	
}
