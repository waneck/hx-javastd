package javax.xml.datatype;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class Duration
{
	/**
	* Default no-arg constructor.
	*
	* <p>Note: Always use the {@link DatatypeFactory} to
	* construct an instance of <code>Duration</code>.
	* The constructor on this class cannot be guaranteed to
	* produce an object with a consistent state and may be
	* removed in the future.</p>
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* <p>Return the name of the XML Schema date/time type that this instance
	* maps to. Type is computed based on fields that are set,
	* i.e. {@link #isSet(DatatypeConstants.Field field)} == <code>true</code>.</p>
	*
	* <table border="2" rules="all" cellpadding="2">
	*   <thead>
	*     <tr>
	*       <th align="center" colspan="7">
	*         Required fields for XML Schema 1.0 Date/Time Datatypes.<br/>
	*         <i>(timezone is optional for all date/time datatypes)</i>
	*       </th>
	*     </tr>
	*   </thead>
	*   <tbody>
	*     <tr>
	*       <td>Datatype</td>
	*       <td>year</td>
	*       <td>month</td>
	*       <td>day</td>
	*       <td>hour</td>
	*       <td>minute</td>
	*       <td>second</td>
	*     </tr>
	*     <tr>
	*       <td>{@link DatatypeConstants#DURATION}</td>
	*       <td>X</td>
	*       <td>X</td>
	*       <td>X</td>
	*       <td>X</td>
	*       <td>X</td>
	*       <td>X</td>
	*     </tr>
	*     <tr>
	*       <td>{@link DatatypeConstants#DURATION_DAYTIME}</td>
	*       <td></td>
	*       <td></td>
	*       <td>X</td>
	*       <td>X</td>
	*       <td>X</td>
	*       <td>X</td>
	*     </tr>
	*     <tr>
	*       <td>{@link DatatypeConstants#DURATION_YEARMONTH}</td>
	*       <td>X</td>
	*       <td>X</td>
	*       <td></td>
	*       <td></td>
	*       <td></td>
	*       <td></td>
	*     </tr>
	*   </tbody>
	* </table>
	*
	* @return one of the following constants:
	*   {@link DatatypeConstants#DURATION},
	*   {@link DatatypeConstants#DURATION_DAYTIME} or
	*   {@link DatatypeConstants#DURATION_YEARMONTH}.
	*
	* @throws IllegalStateException If the combination of set fields does not match one of the XML Schema date/time datatypes.
	*/
	@:overload @:public public function getXMLSchemaType() : javax.xml.namespace.QName;
	
	/**
	* Returns the sign of this duration in -1,0, or 1.
	*
	* @return
	*      -1 if this duration is negative, 0 if the duration is zero,
	*      and 1 if the duration is positive.
	*/
	@:overload @:public @:abstract public function getSign() : Int;
	
	/**
	* <p>Get the years value of this <code>Duration</code> as an <code>int</code> or <code>0</code> if not present.</p>
	*
	* <p><code>getYears()</code> is a convenience method for
	* {@link #getField(DatatypeConstants.Field field) getField(DatatypeConstants.YEARS)}.</p>
	*
	* <p>As the return value is an <code>int</code>, an incorrect value will be returned for <code>Duration</code>s
	* with years that go beyond the range of an <code>int</code>.
	* Use {@link #getField(DatatypeConstants.Field field) getField(DatatypeConstants.YEARS)} to avoid possible loss of precision.</p>
	*
	* @return If the years field is present, return its value as an <code>int</code>, else return <code>0</code>.
	*/
	@:overload @:public public function getYears() : Int;
	
	/**
	* Obtains the value of the MONTHS field as an integer value,
	* or 0 if not present.
	*
	* This method works just like {@link #getYears()} except
	* that this method works on the MONTHS field.
	*
	* @return Months of this <code>Duration</code>.
	*/
	@:overload @:public public function getMonths() : Int;
	
	/**
	* Obtains the value of the DAYS field as an integer value,
	* or 0 if not present.
	*
	* This method works just like {@link #getYears()} except
	* that this method works on the DAYS field.
	*
	* @return Days of this <code>Duration</code>.
	*/
	@:overload @:public public function getDays() : Int;
	
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
	@:overload @:public public function getHours() : Int;
	
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
	@:overload @:public public function getMinutes() : Int;
	
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
	@:overload @:public public function getSeconds() : Int;
	
	/**
	* <p>Returns the length of the duration in milli-seconds.</p>
	*
	* <p>If the seconds field carries more digits than milli-second order,
	* those will be simply discarded (or in other words, rounded to zero.)
	* For example, for any Calendar value <code>x</code>,</p>
	* <pre>
	* <code>new Duration("PT10.00099S").getTimeInMills(x) == 10000</code>.
	* <code>new Duration("-PT10.00099S").getTimeInMills(x) == -10000</code>.
	* </pre>
	*
	* <p>
	* Note that this method uses the {@link #addTo(Calendar)} method,
	* which may work incorrectly with <code>Duration</code> objects with
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
	@:overload @:public public function getTimeInMillis(startInstant : java.util.Calendar) : haxe.Int64;
	
	/**
	* <p>Returns the length of the duration in milli-seconds.</p>
	*
	* <p>If the seconds field carries more digits than milli-second order,
	* those will be simply discarded (or in other words, rounded to zero.)
	* For example, for any <code>Date</code> value <code>x</code>,</p>
	* <pre>
	* <code>new Duration("PT10.00099S").getTimeInMills(x) == 10000</code>.
	* <code>new Duration("-PT10.00099S").getTimeInMills(x) == -10000</code>.
	* </pre>
	*
	* <p>
	* Note that this method uses the {@link #addTo(Date)} method,
	* which may work incorrectly with <code>Duration</code> objects with
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
	@:overload @:public public function getTimeInMillis(startInstant : java.util.Date) : haxe.Int64;
	
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
	*      returns a {@link java.math.BigInteger} object. For SECONDS, this
	*      method returns a {@link java.math.BigDecimal}.
	*
	* @throws NullPointerException If the <code>field</code> is <code>null</code>.
	*/
	@:overload @:public @:abstract public function getField(field : javax.xml.datatype.DatatypeConstants.DatatypeConstants_Field) : java.lang.Number;
	
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
	@:overload @:public @:abstract public function isSet(field : javax.xml.datatype.DatatypeConstants.DatatypeConstants_Field) : Bool;
	
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
	* Firstly, we can assume that two <code>Duration</code>s to be added
	* are both positive without losing generality (i.e.,
	* <code>(-X)+Y=Y-X</code>, <code>X+(-Y)=X-Y</code>,
	* <code>(-X)+(-Y)=-(X+Y)</code>)
	*
	* <p>
	* Addition of two positive <code>Duration</code>s are simply defined as
	* field by field addition where missing fields are treated as 0.
	* <p>
	* A field of the resulting <code>Duration</code> will be unset if and
	* only if respective fields of two input <code>Duration</code>s are unset.
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
	@:overload @:public @:abstract public function add(rhs : javax.xml.datatype.Duration) : javax.xml.datatype.Duration;
	
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
	* Any fractional parts of this <code>Duration</code> object
	* beyond milliseconds will be simply ignored. For example, if
	* this duration is "P1.23456S", then 1 is added to SECONDS,
	* 234 is added to MILLISECONDS, and the rest will be unused.
	* </p>
	*
	* <p>
	* Note that because {@link Calendar#add(int, int)} is using
	* <code>int</code>, <code>Duration</code> with values beyond the
	* range of <code>int</code> in its fields
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
	@:overload @:public @:abstract public function addTo(calendar : java.util.Calendar) : Void;
	
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
	@:overload @:public public function addTo(date : java.util.Date) : Void;
	
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
	* First, we can assume that two <code>Duration</code>s are both positive
	* without losing generality.  (i.e.,
	* <code>(-X)-Y=-(X+Y)</code>, <code>X-(-Y)=X+Y</code>,
	* <code>(-X)-(-Y)=-(X-Y)</code>)</p>
	*
	* <p>Then two durations are subtracted field by field.
	* If the sign of any non-zero field <code>F</code> is different from
	* the sign of the most significant field,
	* 1 (if <code>F</code> is negative) or -1 (otherwise)
	* will be borrowed from the next bigger unit of <code>F</code>.</p>
	*
	* <p>This process is repeated until all the non-zero fields have
	* the same sign.</p>
	*
	* <p>If a borrow occurs in the days field (in other words, if
	* the computation needs to borrow 1 or -1 month to compensate
	* days), then the computation fails by throwing an
	* {@link IllegalStateException}.</p>
	*
	* @param rhs <code>Duration</code> to subtract from this <code>Duration</code>.
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
	@:overload @:public public function subtract(rhs : javax.xml.datatype.Duration) : javax.xml.datatype.Duration;
	
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
	@:overload @:public public function multiply(factor : Int) : javax.xml.datatype.Duration;
	
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
	* Since the <code>Duration</code> class is immutable, this method
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
	*      returns a non-null valid <code>Duration</code> object
	*
	* @throws IllegalStateException if operation produces fraction in
	* the months field.
	*
	* @throws NullPointerException if the <code>factor</code> parameter is
	* <code>null</code>.
	*
	*/
	@:overload @:public @:abstract public function multiply(factor : java.math.BigDecimal) : javax.xml.datatype.Duration;
	
	/**
	* Returns a new <code>Duration</code> object whose
	* value is <code>-this</code>.
	*
	* <p>
	* Since the <code>Duration</code> class is immutable, this method
	* doesn't change the value of this object. It simply computes
	* a new Duration object and returns it.
	*
	* @return
	*      always return a non-null valid <code>Duration</code> object.
	*/
	@:overload @:public @:abstract public function negate() : javax.xml.datatype.Duration;
	
	/**
	* <p>Converts the years and months fields into the days field
	* by using a specific time instant as the reference point.</p>
	*
	* <p>For example, duration of one month normalizes to 31 days
	* given the start time instance "July 8th 2003, 17:40:32".</p>
	*
	* <p>Formally, the computation is done as follows:</p>
	* <ol>
	*  <li>the given Calendar object is cloned</li>
	*  <li>the years, months and days fields will be added to the {@link Calendar} object
	*      by using the {@link Calendar#add(int,int)} method</li>
	*  <li>the difference between the two Calendars in computed in milliseconds and converted to days,
	*     if a remainder occurs due to Daylight Savings Time, it is discarded</li>
	*  <li>the computed days, along with the hours, minutes and seconds
	*      fields of this duration object is used to construct a new
	*      Duration object.</li>
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
	@:overload @:public @:abstract public function normalizeWith(startTimeInstant : java.util.Calendar) : javax.xml.datatype.Duration;
	
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
	@:overload @:public @:abstract public function compare(duration : javax.xml.datatype.Duration) : Int;
	
	/**
	* <p>Checks if this duration object is strictly longer than
	* another <code>Duration</code> object.</p>
	*
	* <p>Duration X is "longer" than Y if and only if X>Y
	* as defined in the section 3.2.6.2 of the XML Schema 1.0
	* specification.</p>
	*
	* <p>For example, "P1D" (one day) > "PT12H" (12 hours) and
	* "P2Y" (two years) > "P23M" (23 months).</p>
	*
	* @param duration <code>Duration</code> to test this <code>Duration</code> against.
	*
	* @throws UnsupportedOperationException If the underlying implementation
	*   cannot reasonably process the request, e.g. W3C XML Schema allows for
	*   arbitrarily large/small/precise values, the request may be beyond the
	*   implementations capability.
	* @throws NullPointerException If <code>duration</code> is null.
	*
	* @return
	*      true if the duration represented by this object
	*      is longer than the given duration. false otherwise.
	*
	* @see #isShorterThan(Duration)
	* @see #compare(Duration duration)
	*/
	@:overload @:public public function isLongerThan(duration : javax.xml.datatype.Duration) : Bool;
	
	/**
	* <p>Checks if this duration object is strictly shorter than
	* another <code>Duration</code> object.</p>
	*
	* @param duration <code>Duration</code> to test this <code>Duration</code> against.
	*
	* @return <code>true</code> if <code>duration</code> parameter is shorter than this <code>Duration</code>,
	*   else <code>false</code>.
	*
	* @throws UnsupportedOperationException If the underlying implementation
	*   cannot reasonably process the request, e.g. W3C XML Schema allows for
	*   arbitrarily large/small/precise values, the request may be beyond the
	*   implementations capability.
	* @throws NullPointerException if <code>duration</code> is null.
	*
	* @see #isLongerThan(Duration duration)
	* @see #compare(Duration duration)
	*/
	@:overload @:public public function isShorterThan(duration : javax.xml.datatype.Duration) : Bool;
	
	/**
	* <p>Checks if this duration object has the same duration
	* as another <code>Duration</code> object.</p>
	*
	* <p>For example, "P1D" (1 day) is equal to "PT24H" (24 hours).</p>
	*
	* <p>Duration X is equal to Y if and only if time instant
	* t+X and t+Y are the same for all the test time instants
	* specified in the section 3.2.6.2 of the XML Schema 1.0
	* specification.</p>
	*
	* <p>Note that there are cases where two <code>Duration</code>s are
	* "incomparable" to each other, like one month and 30 days.
	* For example,</p>
	* <pre>
	* !new Duration("P1M").isShorterThan(new Duration("P30D"))
	* !new Duration("P1M").isLongerThan(new Duration("P30D"))
	* !new Duration("P1M").equals(new Duration("P30D"))
	* </pre>
	*
	* @param duration
	*      The object to compare this <code>Duration</code> against.
	*
	* @return
	*      <code>true</code> if this duration is the same length as
	*         <code>duration</code>.
	*      <code>false</code> if <code>duration</code> is <code>null</code>,
	*         is not a
	*         <code>Duration</code> object,
	*         or its length is different from this duration.
	*
	* @throws UnsupportedOperationException If the underlying implementation
	*   cannot reasonably process the request, e.g. W3C XML Schema allows for
	*   arbitrarily large/small/precise values, the request may be beyond the
	*   implementations capability.
	*
	* @see #compare(Duration duration)
	*/
	@:overload @:public public function equals(duration : Dynamic) : Bool;
	
	/**
	* Returns a hash code consistent with the definition of the equals method.
	*
	* @see Object#hashCode()
	*/
	@:overload @:public @:abstract public function hashCode() : Int;
	
	/**
	* <p>Returns a <code>String</code> representation of this <code>Duration</code> <code>Object</code>.</p>
	*
	* <p>The result is formatted according to the XML Schema 1.0 spec and can be always parsed back later into the
	* equivalent <code>Duration</code> <code>Object</code> by {@link DatatypeFactory#newDuration(String  lexicalRepresentation)}.</p>
	*
	* <p>Formally, the following holds for any <code>Duration</code>
	* <code>Object</code> x:</p>
	* <pre>
	* new Duration(x.toString()).equals(x)
	* </pre>
	*
	* @return A non-<code>null</code> valid <code>String</code> representation of this <code>Duration</code>.
	*/
	@:overload @:public public function toString() : String;
	
	
}
