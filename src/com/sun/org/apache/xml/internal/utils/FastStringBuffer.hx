package com.sun.org.apache.xml.internal.utils;
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
* $Id: FastStringBuffer.java,v 1.2.4.1 2005/09/15 08:15:44 suresh_emailid Exp $
*/
/**
* Bare-bones, unsafe, fast string buffer. No thread-safety, no
* parameter range checking, exposed fields. Note that in typical
* applications, thread-safety of a StringBuffer is a somewhat
* dubious concept in any case.
* <p>
* Note that Stree and DTM used a single FastStringBuffer as a string pool,
* by recording start and length indices within this single buffer. This
* minimizes heap overhead, but of course requires more work when retrieving
* the data.
* <p>
* FastStringBuffer operates as a "chunked buffer". Doing so
* reduces the need to recopy existing information when an append
* exceeds the space available; we just allocate another chunk and
* flow across to it. (The array of chunks may need to grow,
* admittedly, but that's a much smaller object.) Some excess
* recopying may arise when we extract Strings which cross chunk
* boundaries; larger chunks make that less frequent.
* <p>
* The size values are parameterized, to allow tuning this code. In
* theory, Result Tree Fragments might want to be tuned differently
* from the main document's text.
* <p>
* %REVIEW% An experiment in self-tuning is
* included in the code (using nested FastStringBuffers to achieve
* variation in chunk sizes), but this implementation has proven to
* be problematic when data may be being copied from the FSB into itself.
* We should either re-architect that to make this safe (if possible)
* or remove that code and clean up for performance/maintainability reasons.
* <p>
*/
extern class FastStringBuffer
{
	/** Manifest constant: Suppress leading whitespace.
	* This should be used when normalize-to-SAX is called for the first chunk of a
	* multi-chunk output, or one following unsuppressed whitespace in a previous
	* chunk.
	* @see #sendNormalizedSAXcharacters(org.xml.sax.ContentHandler,int,int)
	*/
	public static var SUPPRESS_LEADING_WS(default, null) : Int;
	
	/** Manifest constant: Suppress trailing whitespace.
	* This should be used when normalize-to-SAX is called for the last chunk of a
	* multi-chunk output; it may have to be or'ed with SUPPRESS_LEADING_WS.
	*/
	public static var SUPPRESS_TRAILING_WS(default, null) : Int;
	
	/** Manifest constant: Suppress both leading and trailing whitespace.
	* This should be used when normalize-to-SAX is called for a complete string.
	* (I'm not wild about the name of this one. Ideas welcome.)
	* @see #sendNormalizedSAXcharacters(org.xml.sax.ContentHandler,int,int)
	*/
	public static var SUPPRESS_BOTH(default, null) : Int;
	
	/**
	* Construct a FastStringBuffer, with allocation policy as per parameters.
	* <p>
	* For coding convenience, I've expressed both allocation sizes in terms of
	* a number of bits. That's needed for the final size of a chunk,
	* to permit fast and efficient shift-and-mask addressing. It's less critical
	* for the inital size, and may be reconsidered.
	* <p>
	* An alternative would be to accept integer sizes and round to powers of two;
	* that really doesn't seem to buy us much, if anything.
	*
	* @param initChunkBits Length in characters of the initial allocation
	* of a chunk, expressed in log-base-2. (That is, 10 means allocate 1024
	* characters.) Later chunks will use larger allocation units, to trade off
	* allocation speed of large document against storage efficiency of small
	* ones.
	* @param maxChunkBits Number of character-offset bits that should be used for
	* addressing within a chunk. Maximum length of a chunk is 2^chunkBits
	* characters.
	* @param rebundleBits Number of character-offset bits that addressing should
	* advance before we attempt to take a step from initChunkBits to maxChunkBits
	*/
	@:overload public function new(initChunkBits : Int, maxChunkBits : Int, rebundleBits : Int) : Void;
	
	/**
	* Construct a FastStringBuffer, using a default rebundleBits value.
	*
	* NEEDSDOC @param initChunkBits
	* NEEDSDOC @param maxChunkBits
	*/
	@:overload public function new(initChunkBits : Int, maxChunkBits : Int) : Void;
	
	/**
	* Construct a FastStringBuffer, using default maxChunkBits and
	* rebundleBits values.
	* <p>
	* ISSUE: Should this call assert initial size, or fixed size?
	* Now configured as initial, with a default for fixed.
	*
	* NEEDSDOC @param initChunkBits
	*/
	@:overload public function new(initChunkBits : Int) : Void;
	
	/**
	* Construct a FastStringBuffer, using a default allocation policy.
	*/
	@:overload public function new() : Void;
	
	/**
	* Get the length of the list. Synonym for length().
	*
	* @return the number of characters in the FastStringBuffer's content.
	*/
	@:overload @:final public function size() : Int;
	
	/**
	* Get the length of the list. Synonym for size().
	*
	* @return the number of characters in the FastStringBuffer's content.
	*/
	@:overload @:final public function length() : Int;
	
	/**
	* Discard the content of the FastStringBuffer, and most of the memory
	* that was allocated by it, restoring the initial state. Note that this
	* may eventually be different from setLength(0), which see.
	*/
	@:overload @:final public function reset() : Void;
	
	/**
	* Directly set how much of the FastStringBuffer's storage is to be
	* considered part of its content. This is a fast but hazardous
	* operation. It is not protected against negative values, or values
	* greater than the amount of storage currently available... and even
	* if additional storage does exist, its contents are unpredictable.
	* The only safe use for our setLength() is to truncate the FastStringBuffer
	* to a shorter string.
	*
	* @param l New length. If l<0 or l>=getLength(), this operation will
	* not report an error but future operations will almost certainly fail.
	*/
	@:overload @:final public function setLength(l : Int) : Void;
	
	/**
	* Note that this operation has been somewhat deoptimized by the shift to a
	* chunked array, as there is no factory method to produce a String object
	* directly from an array of arrays and hence a double copy is needed.
	* By using ensureCapacity we hope to minimize the heap overhead of building
	* the intermediate StringBuffer.
	* <p>
	* (It really is a pity that Java didn't design String as a final subclass
	* of MutableString, rather than having StringBuffer be a separate hierarchy.
	* We'd avoid a <strong>lot</strong> of double-buffering.)
	*
	* @return the contents of the FastStringBuffer as a standard Java string.
	*/
	@:overload @:final public function toString() : String;
	
	/**
	* Append a single character onto the FastStringBuffer, growing the
	* storage if necessary.
	* <p>
	* NOTE THAT after calling append(), previously obtained
	* references to m_array[][] may no longer be valid....
	* though in fact they should be in this instance.
	*
	* @param value character to be appended.
	*/
	@:overload @:final public function append(value : java.StdTypes.Char16) : Void;
	
	/**
	* Append the contents of a String onto the FastStringBuffer,
	* growing the storage if necessary.
	* <p>
	* NOTE THAT after calling append(), previously obtained
	* references to m_array[] may no longer be valid.
	*
	* @param value String whose contents are to be appended.
	*/
	@:overload @:final public function append(value : String) : Void;
	
	/**
	* Append the contents of a StringBuffer onto the FastStringBuffer,
	* growing the storage if necessary.
	* <p>
	* NOTE THAT after calling append(), previously obtained
	* references to m_array[] may no longer be valid.
	*
	* @param value StringBuffer whose contents are to be appended.
	*/
	@:overload @:final public function append(value : java.lang.StringBuffer) : Void;
	
	/**
	* Append part of the contents of a Character Array onto the
	* FastStringBuffer,  growing the storage if necessary.
	* <p>
	* NOTE THAT after calling append(), previously obtained
	* references to m_array[] may no longer be valid.
	*
	* @param chars character array from which data is to be copied
	* @param start offset in chars of first character to be copied,
	* zero-based.
	* @param length number of characters to be copied
	*/
	@:overload @:final public function append(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Append the contents of another FastStringBuffer onto
	* this FastStringBuffer, growing the storage if necessary.
	* <p>
	* NOTE THAT after calling append(), previously obtained
	* references to m_array[] may no longer be valid.
	*
	* @param value FastStringBuffer whose contents are
	* to be appended.
	*/
	@:overload @:final public function append(value : com.sun.org.apache.xml.internal.utils.FastStringBuffer) : Void;
	
	/**
	* @return true if the specified range of characters are all whitespace,
	* as defined by XMLCharacterRecognizer.
	* <p>
	* CURRENTLY DOES NOT CHECK FOR OUT-OF-RANGE.
	*
	* @param start Offset of first character in the range.
	* @param length Number of characters to send.
	*/
	@:overload public function isWhitespace(start : Int, length : Int) : Bool;
	
	/**
	* @param start Offset of first character in the range.
	* @param length Number of characters to send.
	* @return a new String object initialized from the specified range of
	* characters.
	*/
	@:overload public function getString(start : Int, length : Int) : String;
	
	@:overload private function getOneChunkString(startChunk : Int, startColumn : Int, length : Int) : String;
	
	/**
	* Get a single character from the string buffer.
	*
	*
	* @param pos character position requested.
	* @return A character from the requested position.
	*/
	@:overload public function charAt(pos : Int) : java.StdTypes.Char16;
	
	/**
	* Sends the specified range of characters as one or more SAX characters()
	* events.
	* Note that the buffer reference passed to the ContentHandler may be
	* invalidated if the FastStringBuffer is edited; it's the user's
	* responsibility to manage access to the FastStringBuffer to prevent this
	* problem from arising.
	* <p>
	* Note too that there is no promise that the output will be sent as a
	* single call. As is always true in SAX, one logical string may be split
	* across multiple blocks of memory and hence delivered as several
	* successive events.
	*
	* @param ch SAX ContentHandler object to receive the event.
	* @param start Offset of first character in the range.
	* @param length Number of characters to send.
	* @exception org.xml.sax.SAXException may be thrown by handler's
	* characters() method.
	*/
	@:overload public function sendSAXcharacters(ch : org.xml.sax.ContentHandler, start : Int, length : Int) : Void;
	
	/**
	* Sends the specified range of characters as one or more SAX characters()
	* events, normalizing the characters according to XSLT rules.
	*
	* @param ch SAX ContentHandler object to receive the event.
	* @param start Offset of first character in the range.
	* @param length Number of characters to send.
	* @return normalization status to apply to next chunk (because we may
	* have been called recursively to process an inner FSB):
	* <dl>
	* <dt>0</dt>
	* <dd>if this output did not end in retained whitespace, and thus whitespace
	* at the start of the following chunk (if any) should be converted to a
	* single space.
	* <dt>SUPPRESS_LEADING_WS</dt>
	* <dd>if this output ended in retained whitespace, and thus whitespace
	* at the start of the following chunk (if any) should be completely
	* suppressed.</dd>
	* </dd>
	* </dl>
	* @exception org.xml.sax.SAXException may be thrown by handler's
	* characters() method.
	*/
	@:overload public function sendNormalizedSAXcharacters(ch : org.xml.sax.ContentHandler, start : Int, length : Int) : Int;
	
	/**
	* Directly normalize and dispatch the character array.
	*
	* @param ch The characters from the XML document.
	* @param start The start position in the array.
	* @param length The number of characters to read from the array.
	* @param handler SAX ContentHandler object to receive the event.
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	*/
	@:native('sendNormalizedSAXcharacters') @:overload public static function _sendNormalizedSAXcharacters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int, handler : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Sends the specified range of characters as sax Comment.
	* <p>
	* Note that, unlike sendSAXcharacters, this has to be done as a single
	* call to LexicalHandler#comment.
	*
	* @param ch SAX LexicalHandler object to receive the event.
	* @param start Offset of first character in the range.
	* @param length Number of characters to send.
	* @exception org.xml.sax.SAXException may be thrown by handler's
	* characters() method.
	*/
	@:overload public function sendSAXComment(ch : org.xml.sax.ext.LexicalHandler, start : Int, length : Int) : Void;
	
	
}
