package com.sun.org.apache.xerces.internal.jaxp.datatype;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2005 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
@:internal extern class DurationImpl extends javax.xml.datatype.Duration implements java.io.Serializable
{
	/**
	* These were final since Duration is immutable. But new subclasses need
	* to be able to set after conversion. It won't break the immutable nature
	* of them since there's no other way to set new values to them
	*/
	private var years : java.math.BigInteger;
	
	/**
	* <p>Months of this <code>Duration</code>.</p>
	*/
	private var months : java.math.BigInteger;
	
	/**
	* <p>Days of this <code>Duration</code>.</p>
	*/
	private var days : java.math.BigInteger;
	
	/**
	* <p>Hours of this <code>Duration</code>.</p>
	*/
	private var hours : java.math.BigInteger;
	
	/**
	* <p>Minutes of this <code>Duration</code>.</p>
	*/
	private var minutes : java.math.BigInteger;
	
	/**
	* <p>Seconds of this <code>Duration</code>.</p>
	*/
	private var seconds : java.math.BigDecimal;
	
	/**
	* Returns the sign of this duration in -1,0, or 1.
	*
	* @return
	*      -1 if this duration is negative, 0 if the duration is zero,
	*      and 1 if the duration is postive.
	*/
	@:overload override public function getSign() : Int;
	
	/**
	* TODO: Javadoc
	* @param isPositive Sign.
	*
	* @return 1 if positive, else -1.
	*/
	@:overload private function calcSignum(isPositive : Bool) : Int;
	
	/**
	* <p>Constructs a new Duration object by specifying each field individually.</p>
	*
	* <p>All the parameters are optional as long as at least one field is present.
	* If specified, parameters have to be zero or positive.</p>
	*
	* @param isPositive Set to <code>false</code> to create a negative duration. When the length
	*   of the duration is zero, this parameter will be ignored.
	* @param years of this <code>Duration</code>
	* @param months of this <code>Duration</code>
	* @param days of this <code>Duration</code>
	* @param hours of this <code>Duration</code>
	* @param minutes of this <code>Duration</code>
	* @param seconds of this <code>Duration</code>
	*
	* @throws IllegalArgumentException
	*    If years, months, days, hours, minutes and
	*    seconds parameters are all <code>null</code>. Or if any
	*    of those parameters are negative.
	*/
	@:overload private function new(isPositive : Bool, years : java.math.BigInteger, months : java.math.BigInteger, days : java.math.BigInteger, hours : java.math.BigInteger, minutes : java.math.BigInteger, seconds : java.math.BigDecimal) : Void;
	
	/**
	* <p>Makes sure that the given number is non-negative. If it is not,
	* throw {@link IllegalArgumentException}.</p>
	*
	* @param n Number to test.
	* @param f Field to test.
	*/
	@:overload private static function testNonNegative(n : java.math.BigInteger, f : javax.xml.datatype.DatatypeConstants.DatatypeConstants_Field) : Void;
	
	/**
	* <p>Makes sure that the given number is non-negative. If it is not,
	* throw {@link IllegalArgumentException}.</p>
	*
	* @param n Number to test.
	* @param f Field to test.
	*/
	@:overload private static function testNonNegative(n : java.math.BigDecimal, f : javax.xml.datatype.DatatypeConstants.DatatypeConstants_Field) : Void;
	
	/**
	* <p>Constructs a new Duration object by specifying each field
	* individually.</p>
	*
	* <p>This method is functionally equivalent to
	* invoking another constructor by wrapping
	* all non-zero parameters into {@link BigInteger} and {@link BigDecimal}.
	* Zero value of int parameter is equivalent of null value of
	* the corresponding field.</p>
	*
	* @see #DurationImpl(boolean, BigInteger, BigInteger, BigInteger, BigInteger,
	*   BigInteger, BigDecimal)
	*/
	@:overload private function new(isPositive : Bool, years : Int, months : Int, days : Int, hours : Int, minutes : Int, seconds : Int) : Void;
	
	/**
	* TODO: Javadoc
	*
	* @param i int to convert to BigInteger.
	*
	* @return BigInteger representation of int.
	*/
	@:overload private static function wrap(i : Int) : java.math.BigInteger;
	
	/**
	* <p>Constructs a new Duration object by specifying the duration
	* in milliseconds.</p>
	*
	* @param durationInMilliSeconds
	*      The length of the duration in milliseconds.
	*/
	@:overload private function new(durationInMilliSeconds : haxe.Int64) : Void;
	
	/**
	* Constructs a new Duration object by
	* parsing its string representation
	* "PnYnMnDTnHnMnS" as defined in XML Schema 1.0 section 3.2.6.1.
	*
	* <p>
	* The string representation may not have any leading
	* and trailing whitespaces.
	*
	* <p>
	* For example, this method parses strings like
	* "P1D" (1 day), "-PT100S" (-100 sec.), "P1DT12H" (1 days and 12 hours).
	*
	* <p>
	* The parsing is done field by field so that
	* the following holds for any lexically correct string x:
	* <pre>
	* new Duration(x).toString().equals(x)
	* </pre>
	*
	* Returns a non-null valid duration object that holds the value
	* indicated by the lexicalRepresentation parameter.
	*
	* @param lexicalRepresentation
	*      Lexical representation of a duration.
	* @throws IllegalArgumentException
	*      If the given string does not conform to the aforementioned
	*      specification.
	* @throws NullPointerException
	*      If the given string is null.
	*/
	@:overload private function new(lexicalRepresentation : String) : Void;
	
	/**
	* <p>Partial order relation comparison with this <code>Duration</code> instance.</p>
	*
	* <p>Comparison result must be in accordance with
	* <a href="http://www.w3.org/TR/xmlschema-2/#duration-order">W3C XML Schema 1.0 Part 2, Section 3.2.7.6.2,
	* <i>Order relation on duration</i></a>.</p>
	*
	* <p>Return:</p>
	* <ul>
	*   <li>{@link DatatypeConstants#LESSER} if this <code>Duration</code> is shorter than <code>duration</code> parameter</li>
	*   <li>{@link DatatypeConstants#EQUAL} if this <code>Duration</code> is equal to <code>duration</code> parameter</li>
	*   <li>{@link DatatypeConstants#GREATER} if this <code>Duration</code> is longer than <code>duration</code> parameter</li>
	*   <li>{@link DatatypeConstants#INDETERMINATE} if a conclusive partial order relation cannot be determined</li>
	* </ul>
	*
	* @param duration to compare
	*
	* @return the relationship between <code>this</code> <code>Duration</code>and <code>duration</code> parameter as
	*   {@link DatatypeConstants#LESSER}, {@link DatatypeConstants#EQUAL}, {@link DatatypeConstants#GREATER}
	*   or {@link DatatypeConstants#INDETERMINATE}.
	*
	* @throws UnsupportedOperationException If the underlying implementation
	*   cannot reasonably process the request, e.g. W3C XML Schema allows for
	*   arbitrarily large/small/precise values, the request may be beyond the
	*   implementations capability.
	* @throws NullPointerException if <code>duration</code> is <code>null</code>.
	*
	* @see #isShorterThan(Duration)
	* @see #isLongerThan(Duration)
	*/
	@:overload public function compare(rhs : javax.xml.datatype.Duration) : Int;
	
	/**
	* Returns a hash code consistent with the definition of the equals method.
	*
	* @see Object#hashCode()
	*/
	@:overload override public function hashCode() : Int;
	
	/**
	* Returns a string representation of this duration object.
	*
	* <p>
	* The result is formatter according to the XML Schema 1.0
	* spec and can be always parsed back later into the
	* equivalent duration object by
	* the {@link #DurationImpl(String)} constructor.
	*
	* <p>
	* Formally, the following holds for any {@link Duration}
	* object x.
	* <pre>
	* new Duration(x.toString()).equals(x)
	* </pre>
	*
	* @return
	*      Always return a non-null valid String object.
	*/
	@:overload override public function toString() : String;
	
	/**
	* Checks if a field is set.
	*
	* A field of a duration object may or may not be present.
	* This method can be used to test if a field is present.
	*
	* @param field
	*      one of the six Field constants (YEARS,MONTHS,DAYS,HOURS,
	*      MINUTES, or SECONDS.)
	* @return
	*      true if the field is present. false if not.
	*
	* @throws NullPointerException
	*      If the field parameter is null.
	*/
	@:overload override public function isSet(field : javax.xml.datatype.DatatypeConstants.DatatypeConstants_Field) : Bool;
	
	/**
	* Gets the value of a field.
	*
	* Fields of a duration object may contain arbitrary large value.
	* Therefore this method is designed to return a {@link Number} object.
	*
	* In case of YEARS, MONTHS, DAYS, HOURS, and MINUTES, the returned
	* number will be a non-negative integer. In case of seconds,
	* the returned number may be a non-negative decimal value.
	*
	* @param field
	*      one of the six Field constants (YEARS,MONTHS,DAYS,HOURS,
	*      MINUTES, or SECONDS.)
	* @return
	*      If the specified field is present, this method returns
	*      a non-null non-negative {@link Number} object that
	*      represents its value. If it is not present, return null.
	*      For YEARS, MONTHS, DAYS, HOURS, and MINUTES, this method
	*      returns a {@link BigInteger} object. For SECONDS, this
	*      method returns a {@link BigDecimal}.
	*
	* @throws NullPointerException
	*      If the field parameter is null.
	*/
	@:overload override public function getField(field : javax.xml.datatype.DatatypeConstants.DatatypeConstants_Field) : java.lang.Number;
	
	/**
	* Obtains the value of the YEARS field as an integer value,
	* or 0 if not present.
	*
	* <p>
	* This method is a convenience method around the
	* {@link #getField(DatatypeConstants.Field)} method.
	*
	* <p>
	* Note that since this method returns <tt>int</tt>, this
	* method will return an incorrect value for {@link Duration}s
	* with the year field that goes beyond the range of <tt>int</tt>.
	* Use <code>getField(YEARS)</code> to avoid possible loss of precision.</p>
	*
	* @return
	*      If the YEARS field is present, return
	*      its value as an integer by using the {@link Number#intValue()}
	*      method. If the YEARS field is not present, return 0.
	*/
	@:overload override public function getYears() : Int;
	
	/**
	* Obtains the value of the MONTHS field as an integer value,
	* or 0 if not present.
	*
	* This method works just like {@link #getYears()} except
	* that this method works on the MONTHS field.
	*
	* @return Months of this <code>Duration</code>.
	*/
	@:overload override public function getMonths() : Int;
	
	/**
	* Obtains the value of the DAYS field as an integer value,
	* or 0 if not present.
	*
	* This method works just like {@link #getYears()} except
	* that this method works on the DAYS field.
	*
	* @return Days of this <code>Duration</code>.
	*/
	@:overload override public function getDays() : Int;
	
	/**
	* Obtains the value of the HOURS field as an integer value,
	* or 0 if not present.
	*
	* This method works just like {@link #getYears()} except
	* that this method works on the HOURS field.
	*
	* @return Hours of this <code>Duration</code>.
	*
	*/
	@:overload override public function getHours() : Int;
	
	/**
	* Obtains the value of the MINUTES field as an integer value,
	* or 0 if not present.
	*
	* This method works just like {@link #getYears()} except
	* that this method works on the MINUTES field.
	*
	* @return Minutes of this <code>Duration</code>.
	*
	*/
	@:overload override public function getMinutes() : Int;
	
	/**
	* Obtains the value of the SECONDS field as an integer value,
	* or 0 if not present.
	*
	* This method works just like {@link #getYears()} except
	* that this method works on the SECONDS field.
	*
	* @return seconds in the integer value. The fraction of seconds
	*   will be discarded (for example, if the actual value is 2.5,
	*   this method returns 2)
	*/
	@:overload override public function getSeconds() : Int;
	
	/**
	* <p>Returns the length of the duration in milli-seconds.</p>
	*
	* <p>If the seconds field carries more digits than milli-second order,
	* those will be simply discarded (or in other words, rounded to zero.)
	* For example, for any Calendar value <code>x<code>,</p>
	* <pre>
	* <code>new Duration("PT10.00099S").getTimeInMills(x) == 10000</code>.
	* <code>new Duration("-PT10.00099S").getTimeInMills(x) == -10000</code>.
	* </pre>
	*
	* <p>
	* Note that this method uses the {@link #addTo(Calendar)} method,
	* which may work incorectly with {@link Duration} objects with
	* very large values in its fields. See the {@link #addTo(Calendar)}
	* method for details.
	*
	* @param startInstant
	*      The length of a month/year varies. The <code>startInstant</code> is
	*      used to disambiguate this variance. Specifically, this method
	*      returns the difference between <code>startInstant</code> and
	*      <code>startInstant+duration</code>
	*
	* @return milliseconds between <code>startInstant</code> and
	*   <code>startInstant</code> plus this <code>Duration</code>
	*
	* @throws NullPointerException if <code>startInstant</code> parameter
	* is null.
	*
	*/
	@:overload override public function getTimeInMillis(startInstant : java.util.Calendar) : haxe.Int64;
	
	/**
	* <p>Returns the length of the duration in milli-seconds.</p>
	*
	* <p>If the seconds field carries more digits than milli-second order,
	* those will be simply discarded (or in other words, rounded to zero.)
	* For example, for any <code>Date</code> value <code>x<code>,</p>
	* <pre>
	* <code>new Duration("PT10.00099S").getTimeInMills(x) == 10000</code>.
	* <code>new Duration("-PT10.00099S").getTimeInMills(x) == -10000</code>.
	* </pre>
	*
	* <p>
	* Note that this method uses the {@link #addTo(Date)} method,
	* which may work incorectly with {@link Duration} objects with
	* very large values in its fields. See the {@link #addTo(Date)}
	* method for details.
	*
	* @param startInstant
	*      The length of a month/year varies. The <code>startInstant</code> is
	*      used to disambiguate this variance. Specifically, this method
	*      returns the difference between <code>startInstant</code> and
	*      <code>startInstant+duration</code>.
	*
	* @throws NullPointerException
	*      If the startInstant parameter is null.
	*
	* @return milliseconds between <code>startInstant</code> and
	*   <code>startInstant</code> plus this <code>Duration</code>
	*
	* @see #getTimeInMillis(Calendar)
	*/
	@:overload override public function getTimeInMillis(startInstant : java.util.Date) : haxe.Int64;
	
	/**
	* <p>Converts the years and months fields into the days field
	* by using a specific time instant as the reference point.</p>
	*
	* <p>For example, duration of one month normalizes to 31 days
	* given the start time instance "July 8th 2003, 17:40:32".</p>
	*
	* <p>Formally, the computation is done as follows:</p>
	* <ol>
	*  <li>The given Calendar object is cloned.
	*  <li>The years, months and days fields will be added to
	*      the {@link Calendar} object
	*      by using the {@link Calendar#add(int,int)} method.
	*  <li>The difference between two Calendars are computed in terms of days.
	*  <li>The computed days, along with the hours, minutes and seconds
	*      fields of this duration object is used to construct a new
	*      Duration object.
	* </ol>
	*
	* <p>Note that since the Calendar class uses <code>int</code> to
	* hold the value of year and month, this method may produce
	* an unexpected result if this duration object holds
	* a very large value in the years or months fields.</p>
	*
	* @param startTimeInstant <code>Calendar</code> reference point.
	*
	* @return <code>Duration</code> of years and months of this <code>Duration</code> as days.
	*
	* @throws NullPointerException If the startTimeInstant parameter is null.
	*/
	@:overload override public function normalizeWith(startTimeInstant : java.util.Calendar) : javax.xml.datatype.Duration;
	
	/**
	* <p>Computes a new duration whose value is <code>factor</code> times
	* longer than the value of this duration.</p>
	*
	* <p>This method is provided for the convenience.
	* It is functionally equivalent to the following code:</p>
	* <pre>
	* multiply(new BigDecimal(String.valueOf(factor)))
	* </pre>
	*
	* @param factor Factor times longer of new <code>Duration</code> to create.
	*
	* @return New <code>Duration</code> that is <code>factor</code>times longer than this <code>Duration</code>.
	*
	* @see #multiply(BigDecimal)
	*/
	@:overload override public function multiply(factor : Int) : javax.xml.datatype.Duration;
	
	/**
	* Computes a new duration whose value is <code>factor</code> times
	* longer than the value of this duration.
	*
	* <p>
	* For example,
	* <pre>
	* "P1M" (1 month) * "12" = "P12M" (12 months)
	* "PT1M" (1 min) * "0.3" = "PT18S" (18 seconds)
	* "P1M" (1 month) * "1.5" = IllegalStateException
	* </pre>
	*
	* <p>
	* Since the {@link Duration} class is immutable, this method
	* doesn't change the value of this object. It simply computes
	* a new Duration object and returns it.
	*
	* <p>
	* The operation will be performed field by field with the precision
	* of {@link BigDecimal}. Since all the fields except seconds are
	* restricted to hold integers,
	* any fraction produced by the computation will be
	* carried down toward the next lower unit. For example,
	* if you multiply "P1D" (1 day) with "0.5", then it will be 0.5 day,
	* which will be carried down to "PT12H" (12 hours).
	* When fractions of month cannot be meaningfully carried down
	* to days, or year to months, this will cause an
	* {@link IllegalStateException} to be thrown.
	* For example if you multiple one month by 0.5.</p>
	*
	* <p>
	* To avoid {@link IllegalStateException}, use
	* the {@link #normalizeWith(Calendar)} method to remove the years
	* and months fields.
	*
	* @param factor to multiply by
	*
	* @return
	*      returns a non-null valid {@link Duration} object
	*
	* @throws IllegalStateException if operation produces fraction in
	* the months field.
	*
	* @throws NullPointerException if the <code>factor</code> parameter is
	* <code>null</code>.
	*
	*/
	@:overload override public function multiply(factor : java.math.BigDecimal) : javax.xml.datatype.Duration;
	
	/**
	* <p>Computes a new duration whose value is <code>this+rhs</code>.</p>
	*
	* <p>For example,</p>
	* <pre>
	* "1 day" + "-3 days" = "-2 days"
	* "1 year" + "1 day" = "1 year and 1 day"
	* "-(1 hour,50 minutes)" + "-20 minutes" = "-(1 hours,70 minutes)"
	* "15 hours" + "-3 days" = "-(2 days,9 hours)"
	* "1 year" + "-1 day" = IllegalStateException
	* </pre>
	*
	* <p>Since there's no way to meaningfully subtract 1 day from 1 month,
	* there are cases where the operation fails in
	* {@link IllegalStateException}.</p>
	*
	* <p>
	* Formally, the computation is defined as follows.</p>
	* <p>
	* Firstly, we can assume that two {@link Duration}s to be added
	* are both positive without losing generality (i.e.,
	* <code>(-X)+Y=Y-X</code>, <code>X+(-Y)=X-Y</code>,
	* <code>(-X)+(-Y)=-(X+Y)</code>)
	*
	* <p>
	* Addition of two positive {@link Duration}s are simply defined as
	* field by field addition where missing fields are treated as 0.
	* <p>
	* A field of the resulting {@link Duration} will be unset if and
	* only if respective fields of two input {@link Duration}s are unset.
	* <p>
	* Note that <code>lhs.add(rhs)</code> will be always successful if
	* <code>lhs.signum()*rhs.signum()!=-1</code> or both of them are
	* normalized.</p>
	*
	* @param rhs <code>Duration</code> to add to this <code>Duration</code>
	*
	* @return
	*      non-null valid Duration object.
	*
	* @throws NullPointerException
	*      If the rhs parameter is null.
	* @throws IllegalStateException
	*      If two durations cannot be meaningfully added. For
	*      example, adding negative one day to one month causes
	*      this exception.
	*
	*
	* @see #subtract(Duration)
	*/
	@:overload public function add(rhs : javax.xml.datatype.Duration) : javax.xml.datatype.Duration;
	
	/**
	* <p>Computes a new duration whose value is <code>this-rhs</code>.</p>
	*
	* <p>For example:</p>
	* <pre>
	* "1 day" - "-3 days" = "4 days"
	* "1 year" - "1 day" = IllegalStateException
	* "-(1 hour,50 minutes)" - "-20 minutes" = "-(1hours,30 minutes)"
	* "15 hours" - "-3 days" = "3 days and 15 hours"
	* "1 year" - "-1 day" = "1 year and 1 day"
	* </pre>
	*
	* <p>Since there's no way to meaningfully subtract 1 day from 1 month,
	* there are cases where the operation fails in {@link IllegalStateException}.</p>
	*
	* <p>Formally the computation is defined as follows.
	* First, we can assume that two {@link Duration}s are both positive
	* without losing generality.  (i.e.,
	* <code>(-X)-Y=-(X+Y)</code>, <code>X-(-Y)=X+Y</code>,
	* <code>(-X)-(-Y)=-(X-Y)</code>)</p>
	*
	* <p>Then two durations are subtracted field by field.
	* If the sign of any non-zero field <tt>F</tt> is different from
	* the sign of the most significant field,
	* 1 (if <tt>F</tt> is negative) or -1 (otherwise)
	* will be borrowed from the next bigger unit of <tt>F</tt>.</p>
	*
	* <p>This process is repeated until all the non-zero fields have
	* the same sign.</p>
	*
	* <p>If a borrow occurs in the days field (in other words, if
	* the computation needs to borrow 1 or -1 month to compensate
	* days), then the computation fails by throwing an
	* {@link IllegalStateException}.</p>
	*
	* @param rhs <code>Duration</code> to substract from this <code>Duration</code>.
	*
	* @return New <code>Duration</code> created from subtracting <code>rhs</code> from this <code>Duration</code>.
	*
	* @throws IllegalStateException
	*      If two durations cannot be meaningfully subtracted. For
	*      example, subtracting one day from one month causes
	*      this exception.
	*
	* @throws NullPointerException
	*      If the rhs parameter is null.
	*
	* @see #add(Duration)
	*/
	@:overload public function subtract(rhs : javax.xml.datatype.Duration) : javax.xml.datatype.Duration;
	
	/**
	* Returns a new {@link Duration} object whose
	* value is <code>-this</code>.
	*
	* <p>
	* Since the {@link Duration} class is immutable, this method
	* doesn't change the value of this object. It simply computes
	* a new Duration object and returns it.
	*
	* @return
	*      always return a non-null valid {@link Duration} object.
	*/
	@:overload override public function negate() : javax.xml.datatype.Duration;
	
	/**
	* Returns the sign of this duration in -1,0, or 1.
	*
	* @return
	*      -1 if this duration is negative, 0 if the duration is zero,
	*      and 1 if the duration is postive.
	*/
	@:overload public function signum() : Int;
	
	/**
	* Adds this duration to a {@link Calendar} object.
	*
	* <p>
	* Calls {@link java.util.Calendar#add(int,int)} in the
	* order of YEARS, MONTHS, DAYS, HOURS, MINUTES, SECONDS, and MILLISECONDS
	* if those fields are present. Because the {@link Calendar} class
	* uses int to hold values, there are cases where this method
	* won't work correctly (for example if values of fields
	* exceed the range of int.)
	* </p>
	*
	* <p>
	* Also, since this duration class is a Gregorian duration, this
	* method will not work correctly if the given {@link Calendar}
	* object is based on some other calendar systems.
	* </p>
	*
	* <p>
	* Any fractional parts of this {@link Duration} object
	* beyond milliseconds will be simply ignored. For example, if
	* this duration is "P1.23456S", then 1 is added to SECONDS,
	* 234 is added to MILLISECONDS, and the rest will be unused.
	* </p>
	*
	* <p>
	* Note that because {@link Calendar#add(int, int)} is using
	* <tt>int</tt>, {@link Duration} with values beyond the
	* range of <tt>int</tt> in its fields
	* will cause overflow/underflow to the given {@link Calendar}.
	* {@link XMLGregorianCalendar#add(Duration)} provides the same
	* basic operation as this method while avoiding
	* the overflow/underflow issues.
	*
	* @param calendar
	*      A calendar object whose value will be modified.
	* @throws NullPointerException
	*      if the calendar parameter is null.
	*/
	@:overload override public function addTo(calendar : java.util.Calendar) : Void;
	
	/**
	* Adds this duration to a {@link Date} object.
	*
	* <p>
	* The given date is first converted into
	* a {@link java.util.GregorianCalendar}, then the duration
	* is added exactly like the {@link #addTo(Calendar)} method.
	*
	* <p>
	* The updated time instant is then converted back into a
	* {@link Date} object and used to update the given {@link Date} object.
	*
	* <p>
	* This somewhat redundant computation is necessary to unambiguously
	* determine the duration of months and years.
	*
	* @param date
	*      A date object whose value will be modified.
	* @throws NullPointerException
	*      if the date parameter is null.
	*/
	@:overload override public function addTo(date : java.util.Date) : Void;
	
	
}
/**
* Representation of {@link Duration} in the object stream.
*
* @author Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
*/
@:native('com$sun$org$apache$xerces$internal$jaxp$datatype$DurationImpl$DurationStream') @:internal extern class DurationImpl_DurationStream implements java.io.Serializable
{
	
}
