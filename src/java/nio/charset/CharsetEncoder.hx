package java.nio.charset;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
//// -- This file was mechanically generated: Do not edit! -- //
extern class CharsetEncoder
{
	/**
	* Initializes a new encoder.  The new encoder will have the given
	* bytes-per-char and replacement values. </p>
	*
	* @param  averageBytesPerChar
	*         A positive float value indicating the expected number of
	*         bytes that will be produced for each input character
	*
	* @param  maxBytesPerChar
	*         A positive float value indicating the maximum number of
	*         bytes that will be produced for each input character
	*
	* @param  replacement
	*         The initial replacement; must not be <tt>null</tt>, must have
	*         non-zero length, must not be longer than maxBytesPerChar,
	*         and must be {@link #isLegalReplacement </code>legal<code>}
	*
	* @throws  IllegalArgumentException
	*          If the preconditions on the parameters do not hold
	*/
	@:overload private function new(cs : java.nio.charset.Charset, averageBytesPerChar : Single, maxBytesPerChar : Single, replacement : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Initializes a new encoder.  The new encoder will have the given
	* bytes-per-char values and its replacement will be the
	* byte array <tt>{</tt>&nbsp;<tt>(byte)'?'</tt>&nbsp;<tt>}</tt>. </p>
	*
	* @param  averageBytesPerChar
	*         A positive float value indicating the expected number of
	*         bytes that will be produced for each input character
	*
	* @param  maxBytesPerChar
	*         A positive float value indicating the maximum number of
	*         bytes that will be produced for each input character
	*
	* @throws  IllegalArgumentException
	*          If the preconditions on the parameters do not hold
	*/
	@:overload private function new(cs : java.nio.charset.Charset, averageBytesPerChar : Single, maxBytesPerChar : Single) : Void;
	
	/**
	* Returns the charset that created this encoder.  </p>
	*
	* @return  This encoder's charset
	*/
	@:overload @:final public function charset() : java.nio.charset.Charset;
	
	/**
	* Returns this encoder's replacement value. </p>
	*
	* @return  This encoder's current replacement,
	*          which is never <tt>null</tt> and is never empty
	*/
	@:overload @:final public function replacement() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Changes this encoder's replacement value.
	*
	* <p> This method invokes the {@link #implReplaceWith implReplaceWith}
	* method, passing the new replacement, after checking that the new
	* replacement is acceptable.  </p>
	*
	* @param  newReplacement
	*





	*         The new replacement; must not be <tt>null</tt>, must have
	*         non-zero length, must not be longer than the value returned by
	*         the {@link #maxBytesPerChar() maxBytesPerChar} method, and
	*         must be {@link #isLegalReplacement </code>legal<code>}

	*
	* @return  This encoder
	*
	* @throws  IllegalArgumentException
	*          If the preconditions on the parameter do not hold
	*/
	@:overload @:final public function replaceWith(newReplacement : java.NativeArray<java.StdTypes.Int8>) : java.nio.charset.CharsetEncoder;
	
	/**
	* Reports a change to this encoder's replacement value.
	*
	* <p> The default implementation of this method does nothing.  This method
	* should be overridden by encoders that require notification of changes to
	* the replacement.  </p>
	*
	* @param  newReplacement
	*/
	@:overload private function implReplaceWith(newReplacement : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Tells whether or not the given byte array is a legal replacement value
	* for this encoder.
	*
	* <p> A replacement is legal if, and only if, it is a legal sequence of
	* bytes in this encoder's charset; that is, it must be possible to decode
	* the replacement into one or more sixteen-bit Unicode characters.
	*
	* <p> The default implementation of this method is not very efficient; it
	* should generally be overridden to improve performance.  </p>
	*
	* @param  repl  The byte array to be tested
	*
	* @return  <tt>true</tt> if, and only if, the given byte array
	*          is a legal replacement value for this encoder
	*/
	@:overload public function isLegalReplacement(repl : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	/**
	* Returns this encoder's current action for malformed-input errors.  </p>
	*
	* @return The current malformed-input action, which is never <tt>null</tt>
	*/
	@:overload public function malformedInputAction() : java.nio.charset.CodingErrorAction;
	
	/**
	* Changes this encoder's action for malformed-input errors.  </p>
	*
	* <p> This method invokes the {@link #implOnMalformedInput
	* implOnMalformedInput} method, passing the new action.  </p>
	*
	* @param  newAction  The new action; must not be <tt>null</tt>
	*
	* @return  This encoder
	*
	* @throws IllegalArgumentException
	*         If the precondition on the parameter does not hold
	*/
	@:overload @:final public function onMalformedInput(newAction : java.nio.charset.CodingErrorAction) : java.nio.charset.CharsetEncoder;
	
	/**
	* Reports a change to this encoder's malformed-input action.
	*
	* <p> The default implementation of this method does nothing.  This method
	* should be overridden by encoders that require notification of changes to
	* the malformed-input action.  </p>
	*/
	@:overload private function implOnMalformedInput(newAction : java.nio.charset.CodingErrorAction) : Void;
	
	/**
	* Returns this encoder's current action for unmappable-character errors.
	* </p>
	*
	* @return The current unmappable-character action, which is never
	*         <tt>null</tt>
	*/
	@:overload public function unmappableCharacterAction() : java.nio.charset.CodingErrorAction;
	
	/**
	* Changes this encoder's action for unmappable-character errors.
	*
	* <p> This method invokes the {@link #implOnUnmappableCharacter
	* implOnUnmappableCharacter} method, passing the new action.  </p>
	*
	* @param  newAction  The new action; must not be <tt>null</tt>
	*
	* @return  This encoder
	*
	* @throws IllegalArgumentException
	*         If the precondition on the parameter does not hold
	*/
	@:overload @:final public function onUnmappableCharacter(newAction : java.nio.charset.CodingErrorAction) : java.nio.charset.CharsetEncoder;
	
	/**
	* Reports a change to this encoder's unmappable-character action.
	*
	* <p> The default implementation of this method does nothing.  This method
	* should be overridden by encoders that require notification of changes to
	* the unmappable-character action.  </p>
	*/
	@:overload private function implOnUnmappableCharacter(newAction : java.nio.charset.CodingErrorAction) : Void;
	
	/**
	* Returns the average number of bytes that will be produced for each
	* character of input.  This heuristic value may be used to estimate the size
	* of the output buffer required for a given input sequence. </p>
	*
	* @return  The average number of bytes produced
	*          per character of input
	*/
	@:overload @:final public function averageBytesPerChar() : Single;
	
	/**
	* Returns the maximum number of bytes that will be produced for each
	* character of input.  This value may be used to compute the worst-case size
	* of the output buffer required for a given input sequence. </p>
	*
	* @return  The maximum number of bytes that will be produced per
	*          character of input
	*/
	@:overload @:final public function maxBytesPerChar() : Single;
	
	/**
	* Encodes as many characters as possible from the given input buffer,
	* writing the results to the given output buffer.
	*
	* <p> The buffers are read from, and written to, starting at their current
	* positions.  At most {@link Buffer#remaining in.remaining()} characters
	* will be read and at most {@link Buffer#remaining out.remaining()}
	* bytes will be written.  The buffers' positions will be advanced to
	* reflect the characters read and the bytes written, but their marks and
	* limits will not be modified.
	*
	* <p> In addition to reading characters from the input buffer and writing
	* bytes to the output buffer, this method returns a {@link CoderResult}
	* object to describe its reason for termination:
	*
	* <ul>
	*
	*   <li><p> {@link CoderResult#UNDERFLOW} indicates that as much of the
	*   input buffer as possible has been encoded.  If there is no further
	*   input then the invoker can proceed to the next step of the
	*   <a href="#steps">encoding operation</a>.  Otherwise this method
	*   should be invoked again with further input.  </p></li>
	*
	*   <li><p> {@link CoderResult#OVERFLOW} indicates that there is
	*   insufficient space in the output buffer to encode any more characters.
	*   This method should be invoked again with an output buffer that has
	*   more {@linkplain Buffer#remaining remaining} bytes. This is
	*   typically done by draining any encoded bytes from the output
	*   buffer.  </p></li>
	*
	*   <li><p> A {@link CoderResult#malformedForLength
	*   </code>malformed-input<code>} result indicates that a malformed-input
	*   error has been detected.  The malformed characters begin at the input
	*   buffer's (possibly incremented) position; the number of malformed
	*   characters may be determined by invoking the result object's {@link
	*   CoderResult#length() length} method.  This case applies only if the
	*   {@link #onMalformedInput </code>malformed action<code>} of this encoder
	*   is {@link CodingErrorAction#REPORT}; otherwise the malformed input
	*   will be ignored or replaced, as requested.  </p></li>
	*
	*   <li><p> An {@link CoderResult#unmappableForLength
	*   </code>unmappable-character<code>} result indicates that an
	*   unmappable-character error has been detected.  The characters that
	*   encode the unmappable character begin at the input buffer's (possibly
	*   incremented) position; the number of such characters may be determined
	*   by invoking the result object's {@link CoderResult#length() length}
	*   method.  This case applies only if the {@link #onUnmappableCharacter
	*   </code>unmappable action<code>} of this encoder is {@link
	*   CodingErrorAction#REPORT}; otherwise the unmappable character will be
	*   ignored or replaced, as requested.  </p></li>
	*
	* </ul>
	*
	* In any case, if this method is to be reinvoked in the same encoding
	* operation then care should be taken to preserve any characters remaining
	* in the input buffer so that they are available to the next invocation.
	*
	* <p> The <tt>endOfInput</tt> parameter advises this method as to whether
	* the invoker can provide further input beyond that contained in the given
	* input buffer.  If there is a possibility of providing additional input
	* then the invoker should pass <tt>false</tt> for this parameter; if there
	* is no possibility of providing further input then the invoker should
	* pass <tt>true</tt>.  It is not erroneous, and in fact it is quite
	* common, to pass <tt>false</tt> in one invocation and later discover that
	* no further input was actually available.  It is critical, however, that
	* the final invocation of this method in a sequence of invocations always
	* pass <tt>true</tt> so that any remaining unencoded input will be treated
	* as being malformed.
	*
	* <p> This method works by invoking the {@link #encodeLoop encodeLoop}
	* method, interpreting its results, handling error conditions, and
	* reinvoking it as necessary.  </p>
	*
	*
	* @param  in
	*         The input character buffer
	*
	* @param  out
	*         The output byte buffer
	*
	* @param  endOfInput
	*         <tt>true</tt> if, and only if, the invoker can provide no
	*         additional input characters beyond those in the given buffer
	*
	* @return  A coder-result object describing the reason for termination
	*
	* @throws  IllegalStateException
	*          If an encoding operation is already in progress and the previous
	*          step was an invocation neither of the {@link #reset reset}
	*          method, nor of this method with a value of <tt>false</tt> for
	*          the <tt>endOfInput</tt> parameter, nor of this method with a
	*          value of <tt>true</tt> for the <tt>endOfInput</tt> parameter
	*          but a return value indicating an incomplete encoding operation
	*
	* @throws  CoderMalfunctionError
	*          If an invocation of the encodeLoop method threw
	*          an unexpected exception
	*/
	@:overload @:final public function encode(_in : java.nio.CharBuffer, out : java.nio.ByteBuffer, endOfInput : Bool) : java.nio.charset.CoderResult;
	
	/**
	* Flushes this encoder.
	*
	* <p> Some encoders maintain internal state and may need to write some
	* final bytes to the output buffer once the overall input sequence has
	* been read.
	*
	* <p> Any additional output is written to the output buffer beginning at
	* its current position.  At most {@link Buffer#remaining out.remaining()}
	* bytes will be written.  The buffer's position will be advanced
	* appropriately, but its mark and limit will not be modified.
	*
	* <p> If this method completes successfully then it returns {@link
	* CoderResult#UNDERFLOW}.  If there is insufficient room in the output
	* buffer then it returns {@link CoderResult#OVERFLOW}.  If this happens
	* then this method must be invoked again, with an output buffer that has
	* more room, in order to complete the current <a href="#steps">encoding
	* operation</a>.
	*
	* <p> If this encoder has already been flushed then invoking this method
	* has no effect.
	*
	* <p> This method invokes the {@link #implFlush implFlush} method to
	* perform the actual flushing operation.  </p>
	*
	* @param  out
	*         The output byte buffer
	*
	* @return  A coder-result object, either {@link CoderResult#UNDERFLOW} or
	*          {@link CoderResult#OVERFLOW}
	*
	* @throws  IllegalStateException
	*          If the previous step of the current encoding operation was an
	*          invocation neither of the {@link #flush flush} method nor of
	*          the three-argument {@link
	*          #encode(CharBuffer,ByteBuffer,boolean) encode} method
	*          with a value of <tt>true</tt> for the <tt>endOfInput</tt>
	*          parameter
	*/
	@:overload @:final public function flush(out : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	/**
	* Flushes this encoder.
	*
	* <p> The default implementation of this method does nothing, and always
	* returns {@link CoderResult#UNDERFLOW}.  This method should be overridden
	* by encoders that may need to write final bytes to the output buffer
	* once the entire input sequence has been read. </p>
	*
	* @param  out
	*         The output byte buffer
	*
	* @return  A coder-result object, either {@link CoderResult#UNDERFLOW} or
	*          {@link CoderResult#OVERFLOW}
	*/
	@:overload private function implFlush(out : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	/**
	* Resets this encoder, clearing any internal state.
	*
	* <p> This method resets charset-independent state and also invokes the
	* {@link #implReset() implReset} method in order to perform any
	* charset-specific reset actions.  </p>
	*
	* @return  This encoder
	*
	*/
	@:overload @:final public function reset() : java.nio.charset.CharsetEncoder;
	
	/**
	* Resets this encoder, clearing any charset-specific internal state.
	*
	* <p> The default implementation of this method does nothing.  This method
	* should be overridden by encoders that maintain internal state.  </p>
	*/
	@:overload private function implReset() : Void;
	
	/**
	* Encodes one or more characters into one or more bytes.
	*
	* <p> This method encapsulates the basic encoding loop, encoding as many
	* characters as possible until it either runs out of input, runs out of room
	* in the output buffer, or encounters an encoding error.  This method is
	* invoked by the {@link #encode encode} method, which handles result
	* interpretation and error recovery.
	*
	* <p> The buffers are read from, and written to, starting at their current
	* positions.  At most {@link Buffer#remaining in.remaining()} characters
	* will be read, and at most {@link Buffer#remaining out.remaining()}
	* bytes will be written.  The buffers' positions will be advanced to
	* reflect the characters read and the bytes written, but their marks and
	* limits will not be modified.
	*
	* <p> This method returns a {@link CoderResult} object to describe its
	* reason for termination, in the same manner as the {@link #encode encode}
	* method.  Most implementations of this method will handle encoding errors
	* by returning an appropriate result object for interpretation by the
	* {@link #encode encode} method.  An optimized implementation may instead
	* examine the relevant error action and implement that action itself.
	*
	* <p> An implementation of this method may perform arbitrary lookahead by
	* returning {@link CoderResult#UNDERFLOW} until it receives sufficient
	* input.  </p>
	*
	* @param  in
	*         The input character buffer
	*
	* @param  out
	*         The output byte buffer
	*
	* @return  A coder-result object describing the reason for termination
	*/
	@:overload @:abstract private function encodeLoop(_in : java.nio.CharBuffer, out : java.nio.ByteBuffer) : java.nio.charset.CoderResult;
	
	/**
	* Convenience method that encodes the remaining content of a single input
	* character buffer into a newly-allocated byte buffer.
	*
	* <p> This method implements an entire <a href="#steps">encoding
	* operation</a>; that is, it resets this encoder, then it encodes the
	* characters in the given character buffer, and finally it flushes this
	* encoder.  This method should therefore not be invoked if an encoding
	* operation is already in progress.  </p>
	*
	* @param  in
	*         The input character buffer
	*
	* @return A newly-allocated byte buffer containing the result of the
	*         encoding operation.  The buffer's position will be zero and its
	*         limit will follow the last byte written.
	*
	* @throws  IllegalStateException
	*          If an encoding operation is already in progress
	*
	* @throws  MalformedInputException
	*          If the character sequence starting at the input buffer's current
	*          position is not a legal sixteen-bit Unicode sequence and the current malformed-input action
	*          is {@link CodingErrorAction#REPORT}
	*
	* @throws  UnmappableCharacterException
	*          If the character sequence starting at the input buffer's current
	*          position cannot be mapped to an equivalent byte sequence and
	*          the current unmappable-character action is {@link
	*          CodingErrorAction#REPORT}
	*/
	@:overload @:final public function encode(_in : java.nio.CharBuffer) : java.nio.ByteBuffer;
	
	/**
	* Tells whether or not this encoder can encode the given character.
	*
	* <p> This method returns <tt>false</tt> if the given character is a
	* surrogate character; such characters can be interpreted only when they
	* are members of a pair consisting of a high surrogate followed by a low
	* surrogate.  The {@link #canEncode(java.lang.CharSequence)
	* canEncode(CharSequence)} method may be used to test whether or not a
	* character sequence can be encoded.
	*
	* <p> This method may modify this encoder's state; it should therefore not
	* be invoked if an <a href="#steps">encoding operation</a> is already in
	* progress.
	*
	* <p> The default implementation of this method is not very efficient; it
	* should generally be overridden to improve performance.  </p>
	*
	* @return  <tt>true</tt> if, and only if, this encoder can encode
	*          the given character
	*
	* @throws  IllegalStateException
	*          If an encoding operation is already in progress
	*/
	@:overload public function canEncode(c : java.StdTypes.Char16) : Bool;
	
	/**
	* Tells whether or not this encoder can encode the given character
	* sequence.
	*
	* <p> If this method returns <tt>false</tt> for a particular character
	* sequence then more information about why the sequence cannot be encoded
	* may be obtained by performing a full <a href="#steps">encoding
	* operation</a>.
	*
	* <p> This method may modify this encoder's state; it should therefore not
	* be invoked if an encoding operation is already in progress.
	*
	* <p> The default implementation of this method is not very efficient; it
	* should generally be overridden to improve performance.  </p>
	*
	* @return  <tt>true</tt> if, and only if, this encoder can encode
	*          the given character without throwing any exceptions and without
	*          performing any replacements
	*
	* @throws  IllegalStateException
	*          If an encoding operation is already in progress
	*/
	@:overload public function canEncode(cs : java.lang.CharSequence) : Bool;
	
	
}
