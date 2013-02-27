package sun.io;
/*
* Copyright (c) 1996, 2004, Oracle and/or its affiliates. All rights reserved.
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
/**
* An abstract base class for subclasses which convert Unicode
* characters into an external encoding.
*
* @author Asmus Freytag
* @author Lloyd Honomichl, Novell, Inc.
*
* @deprecated Replaced by {@link java.nio.charset}.  THIS API WILL BE
* REMOVED IN J2SE 1.6.
*/
extern class CharToByteConverter
{
	/**
	* Substitution mode flag.
	*/
	private var subMode : Bool;
	
	/**
	* Bytes to substitute for unmappable input.
	*/
	private var subBytes : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Offset of next character to be converted.
	*/
	private var charOff : Int;
	
	/**
	* Offset of next byte to be output.
	*/
	private var byteOff : Int;
	
	/**
	* Length of bad input that caused conversion to stop.
	*/
	private var badInputLength : Int;
	
	/**
	* Create an instance of the default CharToByteConverter subclass.
	*/
	@:overload public static function getDefault() : CharToByteConverter;
	
	/**
	* Returns appropriate CharToByteConverter subclass instance.
	* @param string represets encoding
	*/
	@:overload public static function getConverter(encoding : String) : CharToByteConverter;
	
	/**
	* Returns the character set id for the conversion.
	*/
	@:overload @:abstract public function getCharacterEncoding() : String;
	
	/**
	* Converts an array of Unicode characters into an array of bytes
	* in the target character encoding.  This method allows a buffer by
	* buffer conversion of a data stream.  The state of the conversion is
	* saved between calls to convert.  If a call to convert results in
	* an exception, the conversion may be continued by calling convert again
	* with suitably modified parameters.  All conversions should be finished
	* with a call to the flush method.
	*
	* @return the number of bytes written to output.
	* @param input array containing Unicode characters to be converted.
	* @param inStart begin conversion at this offset in input array.
	* @param inEnd stop conversion at this offset in input array (exclusive).
	* @param output byte array to receive conversion result.
	* @param outStart start writing to output array at this offset.
	* @param outEnd stop writing to output array at this offset (exclusive).
	* @exception MalformedInputException if the input buffer contains any
	* sequence of chars that is illegal in Unicode (principally unpaired
	* surrogates and \uFFFF or \uFFFE). After this exception is thrown,
	* the method nextCharIndex can be called to obtain the index of the
	* first invalid input character.  The MalformedInputException can
	* be queried for the length of the invalid input.
	* @exception UnknownCharacterException for any character that
	* that cannot be converted to the external character encoding. Thrown
	* only when converter is not in substitution mode.
	* @exception ConversionBufferFullException if output array is filled prior
	* to converting all the input.
	*/
	@:overload @:abstract public function convert(input : java.NativeArray<java.StdTypes.Char16>, inStart : Int, inEnd : Int, output : java.NativeArray<java.StdTypes.Int8>, outStart : Int, outEnd : Int) : Int;
	
	/*
	* Converts any array of characters, including malformed surrogate
	* pairs, into an array of bytes in the target character encoding.
	* A precondition is that substitution mode is turned on. This method
	* allows a buffer by buffer conversion of a data stream.
	* The state of the conversion is saved between calls to convert.
	* All conversions should be finished with a call to the flushAny method.
	*
	* @return the number of bytes written to output.
	* @param input array containing Unicode characters to be converted.
	* @param inStart begin conversion at this offset in input array.
	* @param inEnd stop conversion at this offset in input array (exclusive).
	* @param output byte array to receive conversion result.
	* @param outStart start writing to output array at this offset.
	* @param outEnd stop writing to output array at this offset (exclusive).
	* @exception ConversionBufferFullException if output array is filled prior
	* to converting all the input.
	*/
	@:overload public function convertAny(input : java.NativeArray<java.StdTypes.Char16>, inStart : Int, inEnd : Int, output : java.NativeArray<java.StdTypes.Int8>, outStart : Int, outEnd : Int) : Int;
	
	/**
	* Converts an array of Unicode characters into an array of bytes
	* in the target character encoding.  Unlike convert, this method
	* does not do incremental conversion.  It assumes that the given
	* input array contains all the characters to be converted. The
	* state of the converter is reset at the beginning of this method
	* and is left in the reset state on successful termination.
	* The converter is not reset if an exception is thrown.
	* This allows the caller to determine where the bad input
	* was encountered by calling nextCharIndex.
	* <p>
	* This method uses substitution mode when performing the conversion.
	* The method setSubstitutionBytes may be used to determine what
	* bytes are substituted.  Even though substitution mode is used,
	* the state of the converter's substitution mode is not changed
	* at the end of this method.
	*
	* @return an array of bytes containing the converted characters.
	* @param input array containing Unicode characters to be converted.
	* @exception MalformedInputException if the input buffer contains any
	* sequence of chars that is illegal in Unicode (principally unpaired
	* surrogates and \uFFFF or \uFFFE). After this exception is thrown,
	* the method nextCharIndex can be called to obtain the index of the
	* first invalid input character and getBadInputLength can be called
	* to determine the length of the invalid input.
	*
	* @see   #nextCharIndex
	* @see   #setSubstitutionMode
	* @see   #setSubstitutionBytes
	* @see   #getBadInputLength
	*/
	@:overload public function convertAll(input : java.NativeArray<java.StdTypes.Char16>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Writes any remaining output to the output buffer and resets the
	* converter to its initial state.
	*
	* @param output byte array to receive flushed output.
	* @param outStart start writing to output array at this offset.
	* @param outEnd stop writing to output array at this offset (exclusive).
	* @exception MalformedInputException if the output to be flushed contained
	* a partial or invalid multibyte character sequence.  Will occur if the
	* input buffer on the last call to convert ended with the first character
	* of a surrogate pair. flush will write what it can to the output buffer
	* and reset the converter before throwing this exception.  An additional
	* call to flush is not required.
	* @exception ConversionBufferFullException if output array is filled
	* before all the output can be flushed. flush will write what it can
	* to the output buffer and remember its state.  An additional call to
	* flush with a new output buffer will conclude the operation.
	*/
	@:overload @:abstract public function flush(output : java.NativeArray<java.StdTypes.Int8>, outStart : Int, outEnd : Int) : Int;
	
	/**
	* Writes any remaining output to the output buffer and resets the
	* converter to its initial state. May only be called when substitution
	* mode is turned on, and never complains about malformed input (always
	* substitutes).
	*
	* @param output byte array to receive flushed output.
	* @param outStart start writing to output array at this offset.
	* @param outEnd stop writing to output array at this offset (exclusive).
	* @return number of bytes writter into output.
	* @exception ConversionBufferFullException if output array is filled
	* before all the output can be flushed. flush will write what it can
	* to the output buffer and remember its state.  An additional call to
	* flush with a new output buffer will conclude the operation.
	*/
	@:overload public function flushAny(output : java.NativeArray<java.StdTypes.Int8>, outStart : Int, outEnd : Int) : Int;
	
	/**
	* Resets converter to its initial state.
	*/
	@:overload @:abstract public function reset() : Void;
	
	/**
	* Returns true if the given character can be converted to the
	* target character encoding.
	* @return true if given character is translatable, false otherwise.
	* @param c character to test
	*/
	@:overload public function canConvert(c : java.StdTypes.Char16) : Bool;
	
	/**
	* Returns the maximum number of bytes needed to convert a char. Useful
	* for calculating the maximum output buffer size needed for a particular
	* input buffer.
	*/
	@:overload @:abstract public function getMaxBytesPerChar() : Int;
	
	/**
	* Returns the length, in chars, of the input which caused a
	* MalformedInputException.  Always refers to the last
	* MalformedInputException thrown by the converter.  If none have
	* ever been thrown, returns 0.
	*/
	@:overload public function getBadInputLength() : Int;
	
	/**
	* Returns the index of the character just past
	* the last character successfully converted by the previous call
	* to convert.
	*/
	@:overload public function nextCharIndex() : Int;
	
	/**
	* Returns the index of the byte just past the last byte written by
	* the previous call to convert.
	*/
	@:overload public function nextByteIndex() : Int;
	
	/**
	* Sets converter into substitution mode.  In substitution mode,
	* the converter will replace untranslatable characters in the source
	* encoding with the substitution character set by setSubstitutionBytes.
	* When not in substitution mode, the converter will throw an
	* UnknownCharacterException when it encounters untranslatable input.
	*
	* @param doSub if true, enable substitution mode.
	* @see #setSubstitutionBytes
	*/
	@:overload public function setSubstitutionMode(doSub : Bool) : Void;
	
	/**
	* Sets the substitution bytes to use when the converter is in
	* substitution mode.  The given bytes should represent a valid
	* character in the target character encoding and must not be
	* longer than the value returned by getMaxBytesPerChar for this
	* converter.
	*
	* @param newSubBytes the substitution bytes
	* @exception IllegalArgumentException if given byte array is longer than
	*    the value returned by the method getMaxBytesPerChar.
	* @see #setSubstitutionMode
	* @see #getMaxBytesPerChar
	*/
	@:overload public function setSubstitutionBytes(newSubBytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Returns a string representation of the class.
	*/
	@:overload public function toString() : String;
	
	
}
