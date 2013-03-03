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
* An abstract base class for subclasses which convert character data
* in an external encoding into Unicode characters.
*
* @author Asmus Freytag
* @author Lloyd Honomichl
*
* @deprecated Replaced by {@link java.nio.charset}.  THIS API WILL BE
* REMOVED IN J2SE 1.6.
*/
extern class ByteToCharConverter
{
	/*
	* Substitution mode flag.
	*/
	@:protected private var subMode : Bool;
	
	/*
	* Characters to use for automatic substitution.
	*/
	@:protected private var subChars : java.NativeArray<java.StdTypes.Char16>;
	
	/*
	* Offset of next character to be output
	*/
	@:protected private var charOff : Int;
	
	/*
	* Offset of next byte to be converted
	*/
	@:protected private var byteOff : Int;
	
	/*
	* Length of bad input that caused a MalformedInputException.
	*/
	@:protected private var badInputLength : Int;
	
	/**
	* Create an instance of the default ByteToCharConverter subclass.
	*/
	@:overload @:public @:static public static function getDefault() : sun.io.ByteToCharConverter;
	
	/**
	* Returns appropriate ByteToCharConverter subclass instance.
	* @param string represents encoding
	*/
	@:overload @:public @:static public static function getConverter(encoding : String) : sun.io.ByteToCharConverter;
	
	/**
	* Returns the character set id for the conversion
	*/
	@:overload @:public @:abstract public function getCharacterEncoding() : String;
	
	/**
	* Converts an array of bytes containing characters in an external
	* encoding into an array of Unicode characters.  This  method allows
	* a buffer by buffer conversion of a data stream.  The state of the
	* conversion is saved between calls to convert.  Among other things,
	* this means multibyte input sequences can be split between calls.
	* If a call to convert results in an exception, the conversion may be
	* continued by calling convert again with suitably modified parameters.
	* All conversions should be finished with a call to the flush method.
	*
	* @return the number of bytes written to output.
	* @param input byte array containing text to be converted.
	* @param inStart begin conversion at this offset in input array.
	* @param inEnd stop conversion at this offset in input array (exclusive).
	* @param output character array to receive conversion result.
	* @param outStart start writing to output array at this offset.
	* @param outEnd stop writing to output array at this offset (exclusive).
	* @exception MalformedInputException if the input buffer contains any
	* sequence of bytes that is illegal for the input character set.
	* @exception UnknownCharacterException for any character that
	* that cannot be converted to Unicode. Thrown only when converter
	* is not in substitution mode.
	* @exception ConversionBufferFullException if output array is filled prior
	* to converting all the input.
	*/
	@:overload @:public @:abstract public function convert(input : java.NativeArray<java.StdTypes.Int8>, inStart : Int, inEnd : Int, output : java.NativeArray<java.StdTypes.Char16>, outStart : Int, outEnd : Int) : Int;
	
	/**
	* Converts an array of bytes containing characters in an external
	* encoding into an array of Unicode characters.  Unlike convert,
	* this method does not do incremental conversion.  It assumes that
	* the given input array contains all the characters to be
	* converted. The state of the converter is reset at the beginning
	* of this method and is left in the reset state on successful
	* termination.  The converter is not reset if an exception is
	* thrown.  This allows the caller to determine where the bad input
	* was encountered by calling nextByteIndex.
	* <p>
	* This method uses substitution mode when performing the
	* conversion.  The method setSubstitutionChars may be used to
	* determine what characters are substituted.  Even though substitution
	* mode is used, the state of the converter's substitution mode is
	* not changed at the end of this method.
	*
	* @return an array of chars containing the converted characters.
	* @param input array containing Unicode characters to be converted.
	* @exception MalformedInputException if the input buffer contains any
	* sequence of chars that is illegal in the input character encoding.
	* After this exception is thrown,
	* the method nextByteIndex can be called to obtain the index of the
	* first invalid input byte and getBadInputLength can be called
	* to determine the length of the invalid input.
	*
	* @see   #nextByteIndex
	* @see   #setSubstitutionMode
	* @see   sun.io.CharToByteConverter#setSubstitutionBytes(byte[])
	* @see   #getBadInputLength
	*/
	@:overload @:public public function convertAll(input : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* Writes any remaining output to the output buffer and resets the
	* converter to its initial state.
	*
	* @param output char array to receive flushed output.
	* @param outStart start writing to output array at this offset.
	* @param outEnd stop writing to output array at this offset (exclusive).
	* @exception MalformedInputException if the output to be flushed contained
	* a partial or invalid multibyte character sequence.  flush will
	* write what it can to the output buffer and reset the converter before
	* throwing this exception.  An additional call to flush is not required.
	* @exception ConversionBufferFullException if output array is filled
	* before all the output can be flushed. flush will write what it can
	* to the output buffer and remember its state.  An additional call to
	* flush with a new output buffer will conclude the operation.
	*/
	@:overload @:public @:abstract public function flush(output : java.NativeArray<java.StdTypes.Char16>, outStart : Int, outEnd : Int) : Int;
	
	/**
	* Resets converter to its initial state.
	*/
	@:overload @:public @:abstract public function reset() : Void;
	
	/**
	* Returns the maximum number of characters needed to convert a byte. Useful
	* for calculating the maximum output buffer size needed for a particular
	* input buffer.
	*/
	@:overload @:public public function getMaxCharsPerByte() : Int;
	
	/**
	* Returns the length, in bytes, of the input which caused a
	* MalformedInputException.  Always refers to the last
	* MalformedInputException thrown by the converter.  If none have
	* ever been thrown, returns 0.
	*/
	@:overload @:public public function getBadInputLength() : Int;
	
	/**
	* Returns the index of the  character just past the last character
	* written by the previous call to convert.
	*/
	@:overload @:public public function nextCharIndex() : Int;
	
	/**
	* Returns the index of the byte just past the last byte successfully
	* converted by the previous call to convert.
	*/
	@:overload @:public public function nextByteIndex() : Int;
	
	/**
	* Sets converter into substitution mode.  In substitution mode,
	* the converter will replace untranslatable characters in the source
	* encoding with the substitution character set by setSubstitionChars.
	* When not in substitution mode, the converter will throw an
	* UnknownCharacterException when it encounters untranslatable input.
	*
	* @param doSub if true, enable substitution mode.
	* @see #setSubstitutionChars
	*/
	@:overload @:public public function setSubstitutionMode(doSub : Bool) : Void;
	
	/**
	* sets the substitution character to use
	* @param c the substitution character
	*/
	@:overload @:public public function setSubstitutionChars(c : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	* returns a string representation of the character conversion
	*/
	@:overload @:public public function toString() : String;
	
	
}
