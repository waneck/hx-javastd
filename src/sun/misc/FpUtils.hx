package sun.misc;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class FpUtils
{
	/**
	* Returns unbiased exponent of a {@code double}.
	*/
	@:overload @:public @:static public static function getExponent(d : Float) : Int;
	
	/**
	* Returns unbiased exponent of a {@code float}.
	*/
	@:overload @:public @:static public static function getExponent(f : Single) : Int;
	
	/**
	* Returns the first floating-point argument with the sign of the
	* second floating-point argument.  Note that unlike the {@link
	* FpUtils#copySign(double, double) copySign} method, this method
	* does not require NaN {@code sign} arguments to be treated
	* as positive values; implementations are permitted to treat some
	* NaN arguments as positive and other NaN arguments as negative
	* to allow greater performance.
	*
	* @param magnitude  the parameter providing the magnitude of the result
	* @param sign   the parameter providing the sign of the result
	* @return a value with the magnitude of {@code magnitude}
	* and the sign of {@code sign}.
	* @author Joseph D. Darcy
	*/
	@:overload @:public @:static public static function rawCopySign(magnitude : Float, sign : Float) : Float;
	
	/**
	* Returns the first floating-point argument with the sign of the
	* second floating-point argument.  Note that unlike the {@link
	* FpUtils#copySign(float, float) copySign} method, this method
	* does not require NaN {@code sign} arguments to be treated
	* as positive values; implementations are permitted to treat some
	* NaN arguments as positive and other NaN arguments as negative
	* to allow greater performance.
	*
	* @param magnitude  the parameter providing the magnitude of the result
	* @param sign   the parameter providing the sign of the result
	* @return a value with the magnitude of {@code magnitude}
	* and the sign of {@code sign}.
	* @author Joseph D. Darcy
	*/
	@:overload @:public @:static public static function rawCopySign(magnitude : Single, sign : Single) : Single;
	
	/**
	* Returns {@code true} if the argument is a finite
	* floating-point value; returns {@code false} otherwise (for
	* NaN and infinity arguments).
	*
	* @param d the {@code double} value to be tested
	* @return {@code true} if the argument is a finite
	* floating-point value, {@code false} otherwise.
	*/
	@:overload @:public @:static public static function isFinite(d : Float) : Bool;
	
	/**
	* Returns {@code true} if the argument is a finite
	* floating-point value; returns {@code false} otherwise (for
	* NaN and infinity arguments).
	*
	* @param f the {@code float} value to be tested
	* @return {@code true} if the argument is a finite
	* floating-point value, {@code false} otherwise.
	*/
	@:overload @:public @:static public static function isFinite(f : Single) : Bool;
	
	/**
	* Returns {@code true} if the specified number is infinitely
	* large in magnitude, {@code false} otherwise.
	*
	* <p>Note that this method is equivalent to the {@link
	* Double#isInfinite(double) Double.isInfinite} method; the
	* functionality is included in this class for convenience.
	*
	* @param   d   the value to be tested.
	* @return  {@code true} if the value of the argument is positive
	*          infinity or negative infinity; {@code false} otherwise.
	*/
	@:overload @:public @:static public static function isInfinite(d : Float) : Bool;
	
	/**
	* Returns {@code true} if the specified number is infinitely
	* large in magnitude, {@code false} otherwise.
	*
	* <p>Note that this method is equivalent to the {@link
	* Float#isInfinite(float) Float.isInfinite} method; the
	* functionality is included in this class for convenience.
	*
	* @param   f   the value to be tested.
	* @return  {@code true} if the argument is positive infinity or
	*          negative infinity; {@code false} otherwise.
	*/
	@:overload @:public @:static public static function isInfinite(f : Single) : Bool;
	
	/**
	* Returns {@code true} if the specified number is a
	* Not-a-Number (NaN) value, {@code false} otherwise.
	*
	* <p>Note that this method is equivalent to the {@link
	* Double#isNaN(double) Double.isNaN} method; the functionality is
	* included in this class for convenience.
	*
	* @param   d   the value to be tested.
	* @return  {@code true} if the value of the argument is NaN;
	*          {@code false} otherwise.
	*/
	@:overload @:public @:static public static function isNaN(d : Float) : Bool;
	
	/**
	* Returns {@code true} if the specified number is a
	* Not-a-Number (NaN) value, {@code false} otherwise.
	*
	* <p>Note that this method is equivalent to the {@link
	* Float#isNaN(float) Float.isNaN} method; the functionality is
	* included in this class for convenience.
	*
	* @param   f   the value to be tested.
	* @return  {@code true} if the argument is NaN;
	*          {@code false} otherwise.
	*/
	@:overload @:public @:static public static function isNaN(f : Single) : Bool;
	
	/**
	* Returns {@code true} if the unordered relation holds
	* between the two arguments.  When two floating-point values are
	* unordered, one value is neither less than, equal to, nor
	* greater than the other.  For the unordered relation to be true,
	* at least one argument must be a {@code NaN}.
	*
	* @param arg1      the first argument
	* @param arg2      the second argument
	* @return {@code true} if at least one argument is a NaN,
	* {@code false} otherwise.
	*/
	@:overload @:public @:static public static function isUnordered(arg1 : Float, arg2 : Float) : Bool;
	
	/**
	* Returns {@code true} if the unordered relation holds
	* between the two arguments.  When two floating-point values are
	* unordered, one value is neither less than, equal to, nor
	* greater than the other.  For the unordered relation to be true,
	* at least one argument must be a {@code NaN}.
	*
	* @param arg1      the first argument
	* @param arg2      the second argument
	* @return {@code true} if at least one argument is a NaN,
	* {@code false} otherwise.
	*/
	@:overload @:public @:static public static function isUnordered(arg1 : Single, arg2 : Single) : Bool;
	
	/**
	* Returns unbiased exponent of a {@code double}; for
	* subnormal values, the number is treated as if it were
	* normalized.  That is for all finite, non-zero, positive numbers
	* <i>x</i>, <code>scalb(<i>x</i>, -ilogb(<i>x</i>))</code> is
	* always in the range [1, 2).
	* <p>
	* Special cases:
	* <ul>
	* <li> If the argument is NaN, then the result is 2<sup>30</sup>.
	* <li> If the argument is infinite, then the result is 2<sup>28</sup>.
	* <li> If the argument is zero, then the result is -(2<sup>28</sup>).
	* </ul>
	*
	* @param d floating-point number whose exponent is to be extracted
	* @return unbiased exponent of the argument.
	* @author Joseph D. Darcy
	*/
	@:overload @:public @:static public static function ilogb(d : Float) : Int;
	
	/**
	* Returns unbiased exponent of a {@code float}; for
	* subnormal values, the number is treated as if it were
	* normalized.  That is for all finite, non-zero, positive numbers
	* <i>x</i>, <code>scalb(<i>x</i>, -ilogb(<i>x</i>))</code> is
	* always in the range [1, 2).
	* <p>
	* Special cases:
	* <ul>
	* <li> If the argument is NaN, then the result is 2<sup>30</sup>.
	* <li> If the argument is infinite, then the result is 2<sup>28</sup>.
	* <li> If the argument is zero, then the result is -(2<sup>28</sup>).
	* </ul>
	*
	* @param f floating-point number whose exponent is to be extracted
	* @return unbiased exponent of the argument.
	* @author Joseph D. Darcy
	*/
	@:overload @:public @:static public static function ilogb(f : Single) : Int;
	
	/**
	* Return {@code d} &times;
	* 2<sup>{@code scale_factor}</sup> rounded as if performed
	* by a single correctly rounded floating-point multiply to a
	* member of the double value set.  See section 4.2.3 of
	* <cite>The Java&trade; Language Specification</cite>
	* for a discussion of floating-point
	* value sets.  If the exponent of the result is between the
	* {@code double}'s minimum exponent and maximum exponent,
	* the answer is calculated exactly.  If the exponent of the
	* result would be larger than {@code doubles}'s maximum
	* exponent, an infinity is returned.  Note that if the result is
	* subnormal, precision may be lost; that is, when {@code scalb(x,
	* n)} is subnormal, {@code scalb(scalb(x, n), -n)} may
	* not equal <i>x</i>.  When the result is non-NaN, the result has
	* the same sign as {@code d}.
	*
	*<p>
	* Special cases:
	* <ul>
	* <li> If the first argument is NaN, NaN is returned.
	* <li> If the first argument is infinite, then an infinity of the
	* same sign is returned.
	* <li> If the first argument is zero, then a zero of the same
	* sign is returned.
	* </ul>
	*
	* @param d number to be scaled by a power of two.
	* @param scale_factor power of 2 used to scale {@code d}
	* @return {@code d * }2<sup>{@code scale_factor}</sup>
	* @author Joseph D. Darcy
	*/
	@:overload @:public @:static public static function scalb(d : Float, scale_factor : Int) : Float;
	
	/**
	* Return {@code f} &times;
	* 2<sup>{@code scale_factor}</sup> rounded as if performed
	* by a single correctly rounded floating-point multiply to a
	* member of the float value set.  See section 4.2.3 of
	* <cite>The Java&trade; Language Specification</cite>
	* for a discussion of floating-point
	* value sets. If the exponent of the result is between the
	* {@code float}'s minimum exponent and maximum exponent, the
	* answer is calculated exactly.  If the exponent of the result
	* would be larger than {@code float}'s maximum exponent, an
	* infinity is returned.  Note that if the result is subnormal,
	* precision may be lost; that is, when {@code scalb(x, n)}
	* is subnormal, {@code scalb(scalb(x, n), -n)} may not equal
	* <i>x</i>.  When the result is non-NaN, the result has the same
	* sign as {@code f}.
	*
	*<p>
	* Special cases:
	* <ul>
	* <li> If the first argument is NaN, NaN is returned.
	* <li> If the first argument is infinite, then an infinity of the
	* same sign is returned.
	* <li> If the first argument is zero, then a zero of the same
	* sign is returned.
	* </ul>
	*
	* @param f number to be scaled by a power of two.
	* @param scale_factor power of 2 used to scale {@code f}
	* @return {@code f * }2<sup>{@code scale_factor}</sup>
	* @author Joseph D. Darcy
	*/
	@:overload @:public @:static public static function scalb(f : Single, scale_factor : Int) : Single;
	
	/**
	* Returns the floating-point number adjacent to the first
	* argument in the direction of the second argument.  If both
	* arguments compare as equal the second argument is returned.
	*
	* <p>
	* Special cases:
	* <ul>
	* <li> If either argument is a NaN, then NaN is returned.
	*
	* <li> If both arguments are signed zeros, {@code direction}
	* is returned unchanged (as implied by the requirement of
	* returning the second argument if the arguments compare as
	* equal).
	*
	* <li> If {@code start} is
	* &plusmn;{@code Double.MIN_VALUE} and {@code direction}
	* has a value such that the result should have a smaller
	* magnitude, then a zero with the same sign as {@code start}
	* is returned.
	*
	* <li> If {@code start} is infinite and
	* {@code direction} has a value such that the result should
	* have a smaller magnitude, {@code Double.MAX_VALUE} with the
	* same sign as {@code start} is returned.
	*
	* <li> If {@code start} is equal to &plusmn;
	* {@code Double.MAX_VALUE} and {@code direction} has a
	* value such that the result should have a larger magnitude, an
	* infinity with same sign as {@code start} is returned.
	* </ul>
	*
	* @param start     starting floating-point value
	* @param direction value indicating which of
	* {@code start}'s neighbors or {@code start} should
	* be returned
	* @return The floating-point number adjacent to {@code start} in the
	* direction of {@code direction}.
	* @author Joseph D. Darcy
	*/
	@:overload @:public @:static public static function nextAfter(start : Float, direction : Float) : Float;
	
	/**
	* Returns the floating-point number adjacent to the first
	* argument in the direction of the second argument.  If both
	* arguments compare as equal, the second argument is returned.
	*
	* <p>
	* Special cases:
	* <ul>
	* <li> If either argument is a NaN, then NaN is returned.
	*
	* <li> If both arguments are signed zeros, a {@code float}
	* zero with the same sign as {@code direction} is returned
	* (as implied by the requirement of returning the second argument
	* if the arguments compare as equal).
	*
	* <li> If {@code start} is
	* &plusmn;{@code Float.MIN_VALUE} and {@code direction}
	* has a value such that the result should have a smaller
	* magnitude, then a zero with the same sign as {@code start}
	* is returned.
	*
	* <li> If {@code start} is infinite and
	* {@code direction} has a value such that the result should
	* have a smaller magnitude, {@code Float.MAX_VALUE} with the
	* same sign as {@code start} is returned.
	*
	* <li> If {@code start} is equal to &plusmn;
	* {@code Float.MAX_VALUE} and {@code direction} has a
	* value such that the result should have a larger magnitude, an
	* infinity with same sign as {@code start} is returned.
	* </ul>
	*
	* @param start     starting floating-point value
	* @param direction value indicating which of
	* {@code start}'s neighbors or {@code start} should
	* be returned
	* @return The floating-point number adjacent to {@code start} in the
	* direction of {@code direction}.
	* @author Joseph D. Darcy
	*/
	@:overload @:public @:static public static function nextAfter(start : Single, direction : Float) : Single;
	
	/**
	* Returns the floating-point value adjacent to {@code d} in
	* the direction of positive infinity.  This method is
	* semantically equivalent to {@code nextAfter(d,
	* Double.POSITIVE_INFINITY)}; however, a {@code nextUp}
	* implementation may run faster than its equivalent
	* {@code nextAfter} call.
	*
	* <p>Special Cases:
	* <ul>
	* <li> If the argument is NaN, the result is NaN.
	*
	* <li> If the argument is positive infinity, the result is
	* positive infinity.
	*
	* <li> If the argument is zero, the result is
	* {@code Double.MIN_VALUE}
	*
	* </ul>
	*
	* @param d  starting floating-point value
	* @return The adjacent floating-point value closer to positive
	* infinity.
	* @author Joseph D. Darcy
	*/
	@:overload @:public @:static public static function nextUp(d : Float) : Float;
	
	/**
	* Returns the floating-point value adjacent to {@code f} in
	* the direction of positive infinity.  This method is
	* semantically equivalent to {@code nextAfter(f,
	* Double.POSITIVE_INFINITY)}; however, a {@code nextUp}
	* implementation may run faster than its equivalent
	* {@code nextAfter} call.
	*
	* <p>Special Cases:
	* <ul>
	* <li> If the argument is NaN, the result is NaN.
	*
	* <li> If the argument is positive infinity, the result is
	* positive infinity.
	*
	* <li> If the argument is zero, the result is
	* {@code Float.MIN_VALUE}
	*
	* </ul>
	*
	* @param f  starting floating-point value
	* @return The adjacent floating-point value closer to positive
	* infinity.
	* @author Joseph D. Darcy
	*/
	@:overload @:public @:static public static function nextUp(f : Single) : Single;
	
	/**
	* Returns the floating-point value adjacent to {@code d} in
	* the direction of negative infinity.  This method is
	* semantically equivalent to {@code nextAfter(d,
	* Double.NEGATIVE_INFINITY)}; however, a
	* {@code nextDown} implementation may run faster than its
	* equivalent {@code nextAfter} call.
	*
	* <p>Special Cases:
	* <ul>
	* <li> If the argument is NaN, the result is NaN.
	*
	* <li> If the argument is negative infinity, the result is
	* negative infinity.
	*
	* <li> If the argument is zero, the result is
	* {@code -Double.MIN_VALUE}
	*
	* </ul>
	*
	* @param d  starting floating-point value
	* @return The adjacent floating-point value closer to negative
	* infinity.
	* @author Joseph D. Darcy
	*/
	@:overload @:public @:static public static function nextDown(d : Float) : Float;
	
	/**
	* Returns the floating-point value adjacent to {@code f} in
	* the direction of negative infinity.  This method is
	* semantically equivalent to {@code nextAfter(f,
	* Float.NEGATIVE_INFINITY)}; however, a
	* {@code nextDown} implementation may run faster than its
	* equivalent {@code nextAfter} call.
	*
	* <p>Special Cases:
	* <ul>
	* <li> If the argument is NaN, the result is NaN.
	*
	* <li> If the argument is negative infinity, the result is
	* negative infinity.
	*
	* <li> If the argument is zero, the result is
	* {@code -Float.MIN_VALUE}
	*
	* </ul>
	*
	* @param f  starting floating-point value
	* @return The adjacent floating-point value closer to negative
	* infinity.
	* @author Joseph D. Darcy
	*/
	@:overload @:public @:static public static function nextDown(f : Single) : Float;
	
	/**
	* Returns the first floating-point argument with the sign of the
	* second floating-point argument.  For this method, a NaN
	* {@code sign} argument is always treated as if it were
	* positive.
	*
	* @param magnitude  the parameter providing the magnitude of the result
	* @param sign   the parameter providing the sign of the result
	* @return a value with the magnitude of {@code magnitude}
	* and the sign of {@code sign}.
	* @author Joseph D. Darcy
	* @since 1.5
	*/
	@:require(java5) @:overload @:public @:static public static function copySign(magnitude : Float, sign : Float) : Float;
	
	/**
	* Returns the first floating-point argument with the sign of the
	* second floating-point argument.  For this method, a NaN
	* {@code sign} argument is always treated as if it were
	* positive.
	*
	* @param magnitude  the parameter providing the magnitude of the result
	* @param sign   the parameter providing the sign of the result
	* @return a value with the magnitude of {@code magnitude}
	* and the sign of {@code sign}.
	* @author Joseph D. Darcy
	*/
	@:overload @:public @:static public static function copySign(magnitude : Single, sign : Single) : Single;
	
	/**
	* Returns the size of an ulp of the argument.  An ulp of a
	* {@code double} value is the positive distance between this
	* floating-point value and the {@code double} value next
	* larger in magnitude.  Note that for non-NaN <i>x</i>,
	* <code>ulp(-<i>x</i>) == ulp(<i>x</i>)</code>.
	*
	* <p>Special Cases:
	* <ul>
	* <li> If the argument is NaN, then the result is NaN.
	* <li> If the argument is positive or negative infinity, then the
	* result is positive infinity.
	* <li> If the argument is positive or negative zero, then the result is
	* {@code Double.MIN_VALUE}.
	* <li> If the argument is &plusmn;{@code Double.MAX_VALUE}, then
	* the result is equal to 2<sup>971</sup>.
	* </ul>
	*
	* @param d the floating-point value whose ulp is to be returned
	* @return the size of an ulp of the argument
	* @author Joseph D. Darcy
	* @since 1.5
	*/
	@:require(java5) @:overload @:public @:static public static function ulp(d : Float) : Float;
	
	/**
	* Returns the size of an ulp of the argument.  An ulp of a
	* {@code float} value is the positive distance between this
	* floating-point value and the {@code float} value next
	* larger in magnitude.  Note that for non-NaN <i>x</i>,
	* <code>ulp(-<i>x</i>) == ulp(<i>x</i>)</code>.
	*
	* <p>Special Cases:
	* <ul>
	* <li> If the argument is NaN, then the result is NaN.
	* <li> If the argument is positive or negative infinity, then the
	* result is positive infinity.
	* <li> If the argument is positive or negative zero, then the result is
	* {@code Float.MIN_VALUE}.
	* <li> If the argument is &plusmn;{@code Float.MAX_VALUE}, then
	* the result is equal to 2<sup>104</sup>.
	* </ul>
	*
	* @param f the floating-point value whose ulp is to be returned
	* @return the size of an ulp of the argument
	* @author Joseph D. Darcy
	* @since 1.5
	*/
	@:require(java5) @:overload @:public @:static public static function ulp(f : Single) : Single;
	
	/**
	* Returns the signum function of the argument; zero if the argument
	* is zero, 1.0 if the argument is greater than zero, -1.0 if the
	* argument is less than zero.
	*
	* <p>Special Cases:
	* <ul>
	* <li> If the argument is NaN, then the result is NaN.
	* <li> If the argument is positive zero or negative zero, then the
	*      result is the same as the argument.
	* </ul>
	*
	* @param d the floating-point value whose signum is to be returned
	* @return the signum function of the argument
	* @author Joseph D. Darcy
	* @since 1.5
	*/
	@:require(java5) @:overload @:public @:static public static function signum(d : Float) : Float;
	
	/**
	* Returns the signum function of the argument; zero if the argument
	* is zero, 1.0f if the argument is greater than zero, -1.0f if the
	* argument is less than zero.
	*
	* <p>Special Cases:
	* <ul>
	* <li> If the argument is NaN, then the result is NaN.
	* <li> If the argument is positive zero or negative zero, then the
	*      result is the same as the argument.
	* </ul>
	*
	* @param f the floating-point value whose signum is to be returned
	* @return the signum function of the argument
	* @author Joseph D. Darcy
	* @since 1.5
	*/
	@:require(java5) @:overload @:public @:static public static function signum(f : Single) : Single;
	
	
}
