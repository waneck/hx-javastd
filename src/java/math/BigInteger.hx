package java.math;
/*
* Copyright (c) 1996, 2007, Oracle and/or its affiliates. All rights reserved.
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
* Portions Copyright (c) 1995  Colin Plumb.  All rights reserved.
*/
/**
* Immutable arbitrary-precision integers.  All operations behave as if
* BigIntegers were represented in two's-complement notation (like Java's
* primitive integer types).  BigInteger provides analogues to all of Java's
* primitive integer operators, and all relevant methods from java.lang.Math.
* Additionally, BigInteger provides operations for modular arithmetic, GCD
* calculation, primality testing, prime generation, bit manipulation,
* and a few other miscellaneous operations.
*
* <p>Semantics of arithmetic operations exactly mimic those of Java's integer
* arithmetic operators, as defined in <i>The Java Language Specification</i>.
* For example, division by zero throws an {@code ArithmeticException}, and
* division of a negative by a positive yields a negative (or zero) remainder.
* All of the details in the Spec concerning overflow are ignored, as
* BigIntegers are made as large as necessary to accommodate the results of an
* operation.
*
* <p>Semantics of shift operations extend those of Java's shift operators
* to allow for negative shift distances.  A right-shift with a negative
* shift distance results in a left shift, and vice-versa.  The unsigned
* right shift operator ({@code >>>}) is omitted, as this operation makes
* little sense in combination with the "infinite word size" abstraction
* provided by this class.
*
* <p>Semantics of bitwise logical operations exactly mimic those of Java's
* bitwise integer operators.  The binary operators ({@code and},
* {@code or}, {@code xor}) implicitly perform sign extension on the shorter
* of the two operands prior to performing the operation.
*
* <p>Comparison operations perform signed integer comparisons, analogous to
* those performed by Java's relational and equality operators.
*
* <p>Modular arithmetic operations are provided to compute residues, perform
* exponentiation, and compute multiplicative inverses.  These methods always
* return a non-negative result, between {@code 0} and {@code (modulus - 1)},
* inclusive.
*
* <p>Bit operations operate on a single bit of the two's-complement
* representation of their operand.  If necessary, the operand is sign-
* extended so that it contains the designated bit.  None of the single-bit
* operations can produce a BigInteger with a different sign from the
* BigInteger being operated on, as they affect only a single bit, and the
* "infinite word size" abstraction provided by this class ensures that there
* are infinitely many "virtual sign bits" preceding each BigInteger.
*
* <p>For the sake of brevity and clarity, pseudo-code is used throughout the
* descriptions of BigInteger methods.  The pseudo-code expression
* {@code (i + j)} is shorthand for "a BigInteger whose value is
* that of the BigInteger {@code i} plus that of the BigInteger {@code j}."
* The pseudo-code expression {@code (i == j)} is shorthand for
* "{@code true} if and only if the BigInteger {@code i} represents the same
* value as the BigInteger {@code j}."  Other pseudo-code expressions are
* interpreted similarly.
*
* <p>All methods and constructors in this class throw
* {@code NullPointerException} when passed
* a null object reference for any input parameter.
*
* @see     BigDecimal
* @author  Josh Bloch
* @author  Michael McCloskey
* @since JDK1.1
*/
@:require(java1) extern class BigInteger extends java.lang.Number implements java.lang.Comparable<java.math.BigInteger>
{
	/**
	* Translates a byte array containing the two's-complement binary
	* representation of a BigInteger into a BigInteger.  The input array is
	* assumed to be in <i>big-endian</i> byte-order: the most significant
	* byte is in the zeroth element.
	*
	* @param  val big-endian two's-complement binary representation of
	*         BigInteger.
	* @throws NumberFormatException {@code val} is zero bytes long.
	*/
	@:overload @:public public function new(val : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Translates the sign-magnitude representation of a BigInteger into a
	* BigInteger.  The sign is represented as an integer signum value: -1 for
	* negative, 0 for zero, or 1 for positive.  The magnitude is a byte array
	* in <i>big-endian</i> byte-order: the most significant byte is in the
	* zeroth element.  A zero-length magnitude array is permissible, and will
	* result in a BigInteger value of 0, whether signum is -1, 0 or 1.
	*
	* @param  signum signum of the number (-1 for negative, 0 for zero, 1
	*         for positive).
	* @param  magnitude big-endian binary representation of the magnitude of
	*         the number.
	* @throws NumberFormatException {@code signum} is not one of the three
	*         legal values (-1, 0, and 1), or {@code signum} is 0 and
	*         {@code magnitude} contains one or more non-zero bytes.
	*/
	@:overload @:public public function new(signum : Int, magnitude : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Translates the String representation of a BigInteger in the
	* specified radix into a BigInteger.  The String representation
	* consists of an optional minus or plus sign followed by a
	* sequence of one or more digits in the specified radix.  The
	* character-to-digit mapping is provided by {@code
	* Character.digit}.  The String may not contain any extraneous
	* characters (whitespace, for example).
	*
	* @param val String representation of BigInteger.
	* @param radix radix to be used in interpreting {@code val}.
	* @throws NumberFormatException {@code val} is not a valid representation
	*         of a BigInteger in the specified radix, or {@code radix} is
	*         outside the range from {@link Character#MIN_RADIX} to
	*         {@link Character#MAX_RADIX}, inclusive.
	* @see    Character#digit
	*/
	@:overload @:public public function new(val : String, radix : Int) : Void;
	
	/**
	* Translates the decimal String representation of a BigInteger into a
	* BigInteger.  The String representation consists of an optional minus
	* sign followed by a sequence of one or more decimal digits.  The
	* character-to-digit mapping is provided by {@code Character.digit}.
	* The String may not contain any extraneous characters (whitespace, for
	* example).
	*
	* @param val decimal String representation of BigInteger.
	* @throws NumberFormatException {@code val} is not a valid representation
	*         of a BigInteger.
	* @see    Character#digit
	*/
	@:overload @:public public function new(val : String) : Void;
	
	/**
	* Constructs a randomly generated BigInteger, uniformly distributed over
	* the range 0 to (2<sup>{@code numBits}</sup> - 1), inclusive.
	* The uniformity of the distribution assumes that a fair source of random
	* bits is provided in {@code rnd}.  Note that this constructor always
	* constructs a non-negative BigInteger.
	*
	* @param  numBits maximum bitLength of the new BigInteger.
	* @param  rnd source of randomness to be used in computing the new
	*         BigInteger.
	* @throws IllegalArgumentException {@code numBits} is negative.
	* @see #bitLength()
	*/
	@:overload @:public public function new(numBits : Int, rnd : java.util.Random) : Void;
	
	/**
	* Constructs a randomly generated positive BigInteger that is probably
	* prime, with the specified bitLength.
	*
	* <p>It is recommended that the {@link #probablePrime probablePrime}
	* method be used in preference to this constructor unless there
	* is a compelling need to specify a certainty.
	*
	* @param  bitLength bitLength of the returned BigInteger.
	* @param  certainty a measure of the uncertainty that the caller is
	*         willing to tolerate.  The probability that the new BigInteger
	*         represents a prime number will exceed
	*         (1 - 1/2<sup>{@code certainty}</sup>).  The execution time of
	*         this constructor is proportional to the value of this parameter.
	* @param  rnd source of random bits used to select candidates to be
	*         tested for primality.
	* @throws ArithmeticException {@code bitLength < 2}.
	* @see    #bitLength()
	*/
	@:overload @:public public function new(bitLength : Int, certainty : Int, rnd : java.util.Random) : Void;
	
	/**
	* Returns a positive BigInteger that is probably prime, with the
	* specified bitLength. The probability that a BigInteger returned
	* by this method is composite does not exceed 2<sup>-100</sup>.
	*
	* @param  bitLength bitLength of the returned BigInteger.
	* @param  rnd source of random bits used to select candidates to be
	*         tested for primality.
	* @return a BigInteger of {@code bitLength} bits that is probably prime
	* @throws ArithmeticException {@code bitLength < 2}.
	* @see    #bitLength()
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:static public static function probablePrime(bitLength : Int, rnd : java.util.Random) : java.math.BigInteger;
	
	/**
	* Returns the first integer greater than this {@code BigInteger} that
	* is probably prime.  The probability that the number returned by this
	* method is composite does not exceed 2<sup>-100</sup>. This method will
	* never skip over a prime when searching: if it returns {@code p}, there
	* is no prime {@code q} such that {@code this < q < p}.
	*
	* @return the first integer greater than this {@code BigInteger} that
	*         is probably prime.
	* @throws ArithmeticException {@code this < 0}.
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function nextProbablePrime() : java.math.BigInteger;
	
	/**
	* Returns a BigInteger whose value is equal to that of the
	* specified {@code long}.  This "static factory method" is
	* provided in preference to a ({@code long}) constructor
	* because it allows for reuse of frequently used BigIntegers.
	*
	* @param  val value of the BigInteger to return.
	* @return a BigInteger with the specified value.
	*/
	@:overload @:public @:static public static function valueOf(val : haxe.Int64) : java.math.BigInteger;
	
	/**
	* The BigInteger constant zero.
	*
	* @since   1.2
	*/
	@:require(java2) @:public @:static @:final public static var ZERO(default, null) : java.math.BigInteger;
	
	/**
	* The BigInteger constant one.
	*
	* @since   1.2
	*/
	@:require(java2) @:public @:static @:final public static var ONE(default, null) : java.math.BigInteger;
	
	/**
	* The BigInteger constant ten.
	*
	* @since   1.5
	*/
	@:require(java5) @:public @:static @:final public static var TEN(default, null) : java.math.BigInteger;
	
	/**
	* Returns a BigInteger whose value is {@code (this + val)}.
	*
	* @param  val value to be added to this BigInteger.
	* @return {@code this + val}
	*/
	@:overload @:public public function add(val : java.math.BigInteger) : java.math.BigInteger;
	
	/**
	* Returns a BigInteger whose value is {@code (this - val)}.
	*
	* @param  val value to be subtracted from this BigInteger.
	* @return {@code this - val}
	*/
	@:overload @:public public function subtract(val : java.math.BigInteger) : java.math.BigInteger;
	
	/**
	* Returns a BigInteger whose value is {@code (this * val)}.
	*
	* @param  val value to be multiplied by this BigInteger.
	* @return {@code this * val}
	*/
	@:overload @:public public function multiply(val : java.math.BigInteger) : java.math.BigInteger;
	
	/**
	* Returns a BigInteger whose value is {@code (this / val)}.
	*
	* @param  val value by which this BigInteger is to be divided.
	* @return {@code this / val}
	* @throws ArithmeticException if {@code val} is zero.
	*/
	@:overload @:public public function divide(val : java.math.BigInteger) : java.math.BigInteger;
	
	/**
	* Returns an array of two BigIntegers containing {@code (this / val)}
	* followed by {@code (this % val)}.
	*
	* @param  val value by which this BigInteger is to be divided, and the
	*         remainder computed.
	* @return an array of two BigIntegers: the quotient {@code (this / val)}
	*         is the initial element, and the remainder {@code (this % val)}
	*         is the final element.
	* @throws ArithmeticException if {@code val} is zero.
	*/
	@:overload @:public public function divideAndRemainder(val : java.math.BigInteger) : java.NativeArray<java.math.BigInteger>;
	
	/**
	* Returns a BigInteger whose value is {@code (this % val)}.
	*
	* @param  val value by which this BigInteger is to be divided, and the
	*         remainder computed.
	* @return {@code this % val}
	* @throws ArithmeticException if {@code val} is zero.
	*/
	@:overload @:public public function remainder(val : java.math.BigInteger) : java.math.BigInteger;
	
	/**
	* Returns a BigInteger whose value is <tt>(this<sup>exponent</sup>)</tt>.
	* Note that {@code exponent} is an integer rather than a BigInteger.
	*
	* @param  exponent exponent to which this BigInteger is to be raised.
	* @return <tt>this<sup>exponent</sup></tt>
	* @throws ArithmeticException {@code exponent} is negative.  (This would
	*         cause the operation to yield a non-integer value.)
	*/
	@:overload @:public public function pow(exponent : Int) : java.math.BigInteger;
	
	/**
	* Returns a BigInteger whose value is the greatest common divisor of
	* {@code abs(this)} and {@code abs(val)}.  Returns 0 if
	* {@code this==0 && val==0}.
	*
	* @param  val value with which the GCD is to be computed.
	* @return {@code GCD(abs(this), abs(val))}
	*/
	@:overload @:public public function gcd(val : java.math.BigInteger) : java.math.BigInteger;
	
	/**
	* Returns a BigInteger whose value is the absolute value of this
	* BigInteger.
	*
	* @return {@code abs(this)}
	*/
	@:overload @:public public function abs() : java.math.BigInteger;
	
	/**
	* Returns a BigInteger whose value is {@code (-this)}.
	*
	* @return {@code -this}
	*/
	@:overload @:public public function negate() : java.math.BigInteger;
	
	/**
	* Returns the signum function of this BigInteger.
	*
	* @return -1, 0 or 1 as the value of this BigInteger is negative, zero or
	*         positive.
	*/
	@:overload @:public public function signum() : Int;
	
	/**
	* Returns a BigInteger whose value is {@code (this mod m}).  This method
	* differs from {@code remainder} in that it always returns a
	* <i>non-negative</i> BigInteger.
	*
	* @param  m the modulus.
	* @return {@code this mod m}
	* @throws ArithmeticException {@code m} &le; 0
	* @see    #remainder
	*/
	@:overload @:public public function mod(m : java.math.BigInteger) : java.math.BigInteger;
	
	/**
	* Returns a BigInteger whose value is
	* <tt>(this<sup>exponent</sup> mod m)</tt>.  (Unlike {@code pow}, this
	* method permits negative exponents.)
	*
	* @param  exponent the exponent.
	* @param  m the modulus.
	* @return <tt>this<sup>exponent</sup> mod m</tt>
	* @throws ArithmeticException {@code m} &le; 0 or the exponent is
	*         negative and this BigInteger is not <i>relatively
	*         prime</i> to {@code m}.
	* @see    #modInverse
	*/
	@:overload @:public public function modPow(exponent : java.math.BigInteger, m : java.math.BigInteger) : java.math.BigInteger;
	
	/**
	* Returns a BigInteger whose value is {@code (this}<sup>-1</sup> {@code mod m)}.
	*
	* @param  m the modulus.
	* @return {@code this}<sup>-1</sup> {@code mod m}.
	* @throws ArithmeticException {@code  m} &le; 0, or this BigInteger
	*         has no multiplicative inverse mod m (that is, this BigInteger
	*         is not <i>relatively prime</i> to m).
	*/
	@:overload @:public public function modInverse(m : java.math.BigInteger) : java.math.BigInteger;
	
	/**
	* Returns a BigInteger whose value is {@code (this << n)}.
	* The shift distance, {@code n}, may be negative, in which case
	* this method performs a right shift.
	* (Computes <tt>floor(this * 2<sup>n</sup>)</tt>.)
	*
	* @param  n shift distance, in bits.
	* @return {@code this << n}
	* @throws ArithmeticException if the shift distance is {@code
	*         Integer.MIN_VALUE}.
	* @see #shiftRight
	*/
	@:overload @:public public function shiftLeft(n : Int) : java.math.BigInteger;
	
	/**
	* Returns a BigInteger whose value is {@code (this >> n)}.  Sign
	* extension is performed.  The shift distance, {@code n}, may be
	* negative, in which case this method performs a left shift.
	* (Computes <tt>floor(this / 2<sup>n</sup>)</tt>.)
	*
	* @param  n shift distance, in bits.
	* @return {@code this >> n}
	* @throws ArithmeticException if the shift distance is {@code
	*         Integer.MIN_VALUE}.
	* @see #shiftLeft
	*/
	@:overload @:public public function shiftRight(n : Int) : java.math.BigInteger;
	
	/**
	* Returns a BigInteger whose value is {@code (this & val)}.  (This
	* method returns a negative BigInteger if and only if this and val are
	* both negative.)
	*
	* @param val value to be AND'ed with this BigInteger.
	* @return {@code this & val}
	*/
	@:overload @:public public function and(val : java.math.BigInteger) : java.math.BigInteger;
	
	/**
	* Returns a BigInteger whose value is {@code (this | val)}.  (This method
	* returns a negative BigInteger if and only if either this or val is
	* negative.)
	*
	* @param val value to be OR'ed with this BigInteger.
	* @return {@code this | val}
	*/
	@:overload @:public public function or(val : java.math.BigInteger) : java.math.BigInteger;
	
	/**
	* Returns a BigInteger whose value is {@code (this ^ val)}.  (This method
	* returns a negative BigInteger if and only if exactly one of this and
	* val are negative.)
	*
	* @param val value to be XOR'ed with this BigInteger.
	* @return {@code this ^ val}
	*/
	@:overload @:public public function xor(val : java.math.BigInteger) : java.math.BigInteger;
	
	/**
	* Returns a BigInteger whose value is {@code (~this)}.  (This method
	* returns a negative value if and only if this BigInteger is
	* non-negative.)
	*
	* @return {@code ~this}
	*/
	@:overload @:public public function not() : java.math.BigInteger;
	
	/**
	* Returns a BigInteger whose value is {@code (this & ~val)}.  This
	* method, which is equivalent to {@code and(val.not())}, is provided as
	* a convenience for masking operations.  (This method returns a negative
	* BigInteger if and only if {@code this} is negative and {@code val} is
	* positive.)
	*
	* @param val value to be complemented and AND'ed with this BigInteger.
	* @return {@code this & ~val}
	*/
	@:overload @:public public function andNot(val : java.math.BigInteger) : java.math.BigInteger;
	
	/**
	* Returns {@code true} if and only if the designated bit is set.
	* (Computes {@code ((this & (1<<n)) != 0)}.)
	*
	* @param  n index of bit to test.
	* @return {@code true} if and only if the designated bit is set.
	* @throws ArithmeticException {@code n} is negative.
	*/
	@:overload @:public public function testBit(n : Int) : Bool;
	
	/**
	* Returns a BigInteger whose value is equivalent to this BigInteger
	* with the designated bit set.  (Computes {@code (this | (1<<n))}.)
	*
	* @param  n index of bit to set.
	* @return {@code this | (1<<n)}
	* @throws ArithmeticException {@code n} is negative.
	*/
	@:overload @:public public function setBit(n : Int) : java.math.BigInteger;
	
	/**
	* Returns a BigInteger whose value is equivalent to this BigInteger
	* with the designated bit cleared.
	* (Computes {@code (this & ~(1<<n))}.)
	*
	* @param  n index of bit to clear.
	* @return {@code this & ~(1<<n)}
	* @throws ArithmeticException {@code n} is negative.
	*/
	@:overload @:public public function clearBit(n : Int) : java.math.BigInteger;
	
	/**
	* Returns a BigInteger whose value is equivalent to this BigInteger
	* with the designated bit flipped.
	* (Computes {@code (this ^ (1<<n))}.)
	*
	* @param  n index of bit to flip.
	* @return {@code this ^ (1<<n)}
	* @throws ArithmeticException {@code n} is negative.
	*/
	@:overload @:public public function flipBit(n : Int) : java.math.BigInteger;
	
	/**
	* Returns the index of the rightmost (lowest-order) one bit in this
	* BigInteger (the number of zero bits to the right of the rightmost
	* one bit).  Returns -1 if this BigInteger contains no one bits.
	* (Computes {@code (this==0? -1 : log2(this & -this))}.)
	*
	* @return index of the rightmost one bit in this BigInteger.
	*/
	@:overload @:public public function getLowestSetBit() : Int;
	
	/**
	* Returns the number of bits in the minimal two's-complement
	* representation of this BigInteger, <i>excluding</i> a sign bit.
	* For positive BigIntegers, this is equivalent to the number of bits in
	* the ordinary binary representation.  (Computes
	* {@code (ceil(log2(this < 0 ? -this : this+1)))}.)
	*
	* @return number of bits in the minimal two's-complement
	*         representation of this BigInteger, <i>excluding</i> a sign bit.
	*/
	@:overload @:public public function bitLength() : Int;
	
	/**
	* Returns the number of bits in the two's complement representation
	* of this BigInteger that differ from its sign bit.  This method is
	* useful when implementing bit-vector style sets atop BigIntegers.
	*
	* @return number of bits in the two's complement representation
	*         of this BigInteger that differ from its sign bit.
	*/
	@:overload @:public public function bitCount() : Int;
	
	/**
	* Returns {@code true} if this BigInteger is probably prime,
	* {@code false} if it's definitely composite.  If
	* {@code certainty} is &le; 0, {@code true} is
	* returned.
	*
	* @param  certainty a measure of the uncertainty that the caller is
	*         willing to tolerate: if the call returns {@code true}
	*         the probability that this BigInteger is prime exceeds
	*         (1 - 1/2<sup>{@code certainty}</sup>).  The execution time of
	*         this method is proportional to the value of this parameter.
	* @return {@code true} if this BigInteger is probably prime,
	*         {@code false} if it's definitely composite.
	*/
	@:overload @:public public function isProbablePrime(certainty : Int) : Bool;
	
	/**
	* Compares this BigInteger with the specified BigInteger.  This
	* method is provided in preference to individual methods for each
	* of the six boolean comparison operators ({@literal <}, ==,
	* {@literal >}, {@literal >=}, !=, {@literal <=}).  The suggested
	* idiom for performing these comparisons is: {@code
	* (x.compareTo(y)} &lt;<i>op</i>&gt; {@code 0)}, where
	* &lt;<i>op</i>&gt; is one of the six comparison operators.
	*
	* @param  val BigInteger to which this BigInteger is to be compared.
	* @return -1, 0 or 1 as this BigInteger is numerically less than, equal
	*         to, or greater than {@code val}.
	*/
	@:overload @:public public function compareTo(val : java.math.BigInteger) : Int;
	
	/**
	* Compares this BigInteger with the specified Object for equality.
	*
	* @param  x Object to which this BigInteger is to be compared.
	* @return {@code true} if and only if the specified Object is a
	*         BigInteger whose value is numerically equal to this BigInteger.
	*/
	@:overload @:public public function equals(x : Dynamic) : Bool;
	
	/**
	* Returns the minimum of this BigInteger and {@code val}.
	*
	* @param  val value with which the minimum is to be computed.
	* @return the BigInteger whose value is the lesser of this BigInteger and
	*         {@code val}.  If they are equal, either may be returned.
	*/
	@:overload @:public public function min(val : java.math.BigInteger) : java.math.BigInteger;
	
	/**
	* Returns the maximum of this BigInteger and {@code val}.
	*
	* @param  val value with which the maximum is to be computed.
	* @return the BigInteger whose value is the greater of this and
	*         {@code val}.  If they are equal, either may be returned.
	*/
	@:overload @:public public function max(val : java.math.BigInteger) : java.math.BigInteger;
	
	/**
	* Returns the hash code for this BigInteger.
	*
	* @return hash code for this BigInteger.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns the String representation of this BigInteger in the
	* given radix.  If the radix is outside the range from {@link
	* Character#MIN_RADIX} to {@link Character#MAX_RADIX} inclusive,
	* it will default to 10 (as is the case for
	* {@code Integer.toString}).  The digit-to-character mapping
	* provided by {@code Character.forDigit} is used, and a minus
	* sign is prepended if appropriate.  (This representation is
	* compatible with the {@link #BigInteger(String, int) (String,
	* int)} constructor.)
	*
	* @param  radix  radix of the String representation.
	* @return String representation of this BigInteger in the given radix.
	* @see    Integer#toString
	* @see    Character#forDigit
	* @see    #BigInteger(java.lang.String, int)
	*/
	@:overload @:public public function toString(radix : Int) : String;
	
	/**
	* Returns the decimal String representation of this BigInteger.
	* The digit-to-character mapping provided by
	* {@code Character.forDigit} is used, and a minus sign is
	* prepended if appropriate.  (This representation is compatible
	* with the {@link #BigInteger(String) (String)} constructor, and
	* allows for String concatenation with Java's + operator.)
	*
	* @return decimal String representation of this BigInteger.
	* @see    Character#forDigit
	* @see    #BigInteger(java.lang.String)
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Returns a byte array containing the two's-complement
	* representation of this BigInteger.  The byte array will be in
	* <i>big-endian</i> byte-order: the most significant byte is in
	* the zeroth element.  The array will contain the minimum number
	* of bytes required to represent this BigInteger, including at
	* least one sign bit, which is {@code (ceil((this.bitLength() +
	* 1)/8))}.  (This representation is compatible with the
	* {@link #BigInteger(byte[]) (byte[])} constructor.)
	*
	* @return a byte array containing the two's-complement representation of
	*         this BigInteger.
	* @see    #BigInteger(byte[])
	*/
	@:overload @:public public function toByteArray() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Converts this BigInteger to an {@code int}.  This
	* conversion is analogous to a
	* <i>narrowing primitive conversion</i> from {@code long} to
	* {@code int} as defined in section 5.1.3 of
	* <cite>The Java&trade; Language Specification</cite>:
	* if this BigInteger is too big to fit in an
	* {@code int}, only the low-order 32 bits are returned.
	* Note that this conversion can lose information about the
	* overall magnitude of the BigInteger value as well as return a
	* result with the opposite sign.
	*
	* @return this BigInteger converted to an {@code int}.
	*/
	@:overload @:public override public function intValue() : Int;
	
	/**
	* Converts this BigInteger to a {@code long}.  This
	* conversion is analogous to a
	* <i>narrowing primitive conversion</i> from {@code long} to
	* {@code int} as defined in section 5.1.3 of
	* <cite>The Java&trade; Language Specification</cite>:
	* if this BigInteger is too big to fit in a
	* {@code long}, only the low-order 64 bits are returned.
	* Note that this conversion can lose information about the
	* overall magnitude of the BigInteger value as well as return a
	* result with the opposite sign.
	*
	* @return this BigInteger converted to a {@code long}.
	*/
	@:overload @:public override public function longValue() : haxe.Int64;
	
	/**
	* Converts this BigInteger to a {@code float}.  This
	* conversion is similar to the
	* <i>narrowing primitive conversion</i> from {@code double} to
	* {@code float} as defined in section 5.1.3 of
	* <cite>The Java&trade; Language Specification</cite>:
	* if this BigInteger has too great a magnitude
	* to represent as a {@code float}, it will be converted to
	* {@link Float#NEGATIVE_INFINITY} or {@link
	* Float#POSITIVE_INFINITY} as appropriate.  Note that even when
	* the return value is finite, this conversion can lose
	* information about the precision of the BigInteger value.
	*
	* @return this BigInteger converted to a {@code float}.
	*/
	@:overload @:public override public function floatValue() : Single;
	
	/**
	* Converts this BigInteger to a {@code double}.  This
	* conversion is similar to the
	* <i>narrowing primitive conversion</i> from {@code double} to
	* {@code float} as defined in section 5.1.3 of
	* <cite>The Java&trade; Language Specification</cite>:
	* if this BigInteger has too great a magnitude
	* to represent as a {@code double}, it will be converted to
	* {@link Double#NEGATIVE_INFINITY} or {@link
	* Double#POSITIVE_INFINITY} as appropriate.  Note that even when
	* the return value is finite, this conversion can lose
	* information about the precision of the BigInteger value.
	*
	* @return this BigInteger converted to a {@code double}.
	*/
	@:overload @:public override public function doubleValue() : Float;
	
	
}
