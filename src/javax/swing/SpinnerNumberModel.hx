package javax.swing;
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
extern class SpinnerNumberModel extends javax.swing.AbstractSpinnerModel implements java.io.Serializable
{
	/**
	* Constructs a <code>SpinnerModel</code> that represents
	* a closed sequence of
	* numbers from <code>minimum</code> to <code>maximum</code>.  The
	* <code>nextValue</code> and <code>previousValue</code> methods
	* compute elements of the sequence by adding or subtracting
	* <code>stepSize</code> respectively.  All of the parameters
	* must be mutually <code>Comparable</code>, <code>value</code>
	* and <code>stepSize</code> must be instances of <code>Integer</code>
	* <code>Long</code>, <code>Float</code>, or <code>Double</code>.
	* <p>
	* The <code>minimum</code> and <code>maximum</code> parameters
	* can be <code>null</code> to indicate that the range doesn't
	* have an upper or lower bound.
	* If <code>value</code> or <code>stepSize</code> is <code>null</code>,
	* or if both <code>minimum</code> and <code>maximum</code>
	* are specified and <code>mininum &gt; maximum</code> then an
	* <code>IllegalArgumentException</code> is thrown.
	* Similarly if <code>(minimum &lt;= value &lt;= maximum</code>) is false,
	* an <code>IllegalArgumentException</code> is thrown.
	*
	* @param value the current (non <code>null</code>) value of the model
	* @param minimum the first number in the sequence or <code>null</code>
	* @param maximum the last number in the sequence or <code>null</code>
	* @param stepSize the difference between elements of the sequence
	*
	* @throws IllegalArgumentException if stepSize or value is
	*     <code>null</code> or if the following expression is false:
	*     <code>minimum &lt;= value &lt;= maximum</code>
	*/
	@:overload public function new(value : java.lang.Number, minimum : java.lang.Comparable<Dynamic>, maximum : java.lang.Comparable<Dynamic>, stepSize : java.lang.Number) : Void;
	
	/**
	* Constructs a <code>SpinnerNumberModel</code> with the specified
	* <code>value</code>, <code>minimum</code>/<code>maximum</code> bounds,
	* and <code>stepSize</code>.
	*
	* @param value the current value of the model
	* @param minimum the first number in the sequence
	* @param maximum the last number in the sequence
	* @param stepSize the difference between elements of the sequence
	* @throws IllegalArgumentException if the following expression is false:
	*     <code>minimum &lt;= value &lt;= maximum</code>
	*/
	@:overload public function new(value : Int, minimum : Int, maximum : Int, stepSize : Int) : Void;
	
	/**
	* Constructs a <code>SpinnerNumberModel</code> with the specified
	* <code>value</code>, <code>minimum</code>/<code>maximum</code> bounds,
	* and <code>stepSize</code>.
	*
	* @param value the current value of the model
	* @param minimum the first number in the sequence
	* @param maximum the last number in the sequence
	* @param stepSize the difference between elements of the sequence
	* @throws IllegalArgumentException   if the following expression is false:
	*     <code>minimum &lt;= value &lt;= maximum</code>
	*/
	@:overload public function new(value : Float, minimum : Float, maximum : Float, stepSize : Float) : Void;
	
	/**
	* Constructs a <code>SpinnerNumberModel</code> with no
	* <code>minimum</code> or <code>maximum</code> value,
	* <code>stepSize</code> equal to one, and an initial value of zero.
	*/
	@:overload public function new() : Void;
	
	/**
	* Changes the lower bound for numbers in this sequence.
	* If <code>minimum</code> is <code>null</code>,
	* then there is no lower bound.  No bounds checking is done here;
	* the new <code>minimum</code> value may invalidate the
	* <code>(minimum &lt;= value &lt= maximum)</code>
	* invariant enforced by the constructors.  This is to simplify updating
	* the model, naturally one should ensure that the invariant is true
	* before calling the <code>getNextValue</code>,
	* <code>getPreviousValue</code>, or <code>setValue</code> methods.
	* <p>
	* Typically this property is a <code>Number</code> of the same type
	* as the <code>value</code> however it's possible to use any
	* <code>Comparable</code> with a <code>compareTo</code>
	* method for a <code>Number</code> with the same type as the value.
	* For example if value was a <code>Long</code>,
	* <code>minimum</code> might be a Date subclass defined like this:
	* <pre>
	* MyDate extends Date {  // Date already implements Comparable
	*     public int compareTo(Long o) {
	*         long t = getTime();
	*         return (t < o.longValue() ? -1 : (t == o.longValue() ? 0 : 1));
	*     }
	* }
	* </pre>
	* <p>
	* This method fires a <code>ChangeEvent</code>
	* if the <code>minimum</code> has changed.
	*
	* @param minimum a <code>Comparable</code> that has a
	*     <code>compareTo</code> method for <code>Number</code>s with
	*     the same type as <code>value</code>
	* @see #getMinimum
	* @see #setMaximum
	* @see SpinnerModel#addChangeListener
	*/
	@:overload public function setMinimum(minimum : java.lang.Comparable<Dynamic>) : Void;
	
	/**
	* Returns the first number in this sequence.
	*
	* @return the value of the <code>minimum</code> property
	* @see #setMinimum
	*/
	@:overload public function getMinimum() : java.lang.Comparable<Dynamic>;
	
	/**
	* Changes the upper bound for numbers in this sequence.
	* If <code>maximum</code> is <code>null</code>, then there
	* is no upper bound.  No bounds checking is done here; the new
	* <code>maximum</code> value may invalidate the
	* <code>(minimum <= value < maximum)</code>
	* invariant enforced by the constructors.  This is to simplify updating
	* the model, naturally one should ensure that the invariant is true
	* before calling the <code>next</code>, <code>previous</code>,
	* or <code>setValue</code> methods.
	* <p>
	* Typically this property is a <code>Number</code> of the same type
	* as the <code>value</code> however it's possible to use any
	* <code>Comparable</code> with a <code>compareTo</code>
	* method for a <code>Number</code> with the same type as the value.
	* See <a href="#setMinimum(java.lang.Comparable)">
	* <code>setMinimum</code></a> for an example.
	* <p>
	* This method fires a <code>ChangeEvent</code> if the
	* <code>maximum</code> has changed.
	*
	* @param maximum a <code>Comparable</code> that has a
	*     <code>compareTo</code> method for <code>Number</code>s with
	*     the same type as <code>value</code>
	* @see #getMaximum
	* @see #setMinimum
	* @see SpinnerModel#addChangeListener
	*/
	@:overload public function setMaximum(maximum : java.lang.Comparable<Dynamic>) : Void;
	
	/**
	* Returns the last number in the sequence.
	*
	* @return the value of the <code>maximum</code> property
	* @see #setMaximum
	*/
	@:overload public function getMaximum() : java.lang.Comparable<Dynamic>;
	
	/**
	* Changes the size of the value change computed by the
	* <code>getNextValue</code> and <code>getPreviousValue</code>
	* methods.  An <code>IllegalArgumentException</code>
	* is thrown if <code>stepSize</code> is <code>null</code>.
	* <p>
	* This method fires a <code>ChangeEvent</code> if the
	* <code>stepSize</code> has changed.
	*
	* @param stepSize the size of the value change computed by the
	*     <code>getNextValue</code> and <code>getPreviousValue</code> methods
	* @see #getNextValue
	* @see #getPreviousValue
	* @see #getStepSize
	* @see SpinnerModel#addChangeListener
	*/
	@:overload public function setStepSize(stepSize : java.lang.Number) : Void;
	
	/**
	* Returns the size of the value change computed by the
	* <code>getNextValue</code>
	* and <code>getPreviousValue</code> methods.
	*
	* @return the value of the <code>stepSize</code> property
	* @see #setStepSize
	*/
	@:overload public function getStepSize() : java.lang.Number;
	
	/**
	* Returns the next number in the sequence.
	*
	* @return <code>value + stepSize</code> or <code>null</code> if the sum
	*     exceeds <code>maximum</code>.
	*
	* @see SpinnerModel#getNextValue
	* @see #getPreviousValue
	* @see #setStepSize
	*/
	@:overload public function getNextValue() : Dynamic;
	
	/**
	* Returns the previous number in the sequence.
	*
	* @return <code>value - stepSize</code>, or
	*     <code>null</code> if the sum is less
	*     than <code>minimum</code>.
	*
	* @see SpinnerModel#getPreviousValue
	* @see #getNextValue
	* @see #setStepSize
	*/
	@:overload public function getPreviousValue() : Dynamic;
	
	/**
	* Returns the value of the current element of the sequence.
	*
	* @return the value property
	* @see #setValue
	*/
	@:overload public function getNumber() : java.lang.Number;
	
	/**
	* Returns the value of the current element of the sequence.
	*
	* @return the value property
	* @see #setValue
	* @see #getNumber
	*/
	@:overload public function getValue() : Dynamic;
	
	/**
	* Sets the current value for this sequence.  If <code>value</code> is
	* <code>null</code>, or not a <code>Number</code>, an
	* <code>IllegalArgumentException</code> is thrown.  No
	* bounds checking is done here; the new value may invalidate the
	* <code>(minimum &lt;= value &lt;= maximum)</code>
	* invariant enforced by the constructors.   It's also possible to set
	* the value to be something that wouldn't naturally occur in the sequence,
	* i.e. a value that's not modulo the <code>stepSize</code>.
	* This is to simplify updating the model, and to accommodate
	* spinners that don't want to restrict values that have been
	* directly entered by the user. Naturally, one should ensure that the
	* <code>(minimum &lt;= value &lt;= maximum)</code> invariant is true
	* before calling the <code>next</code>, <code>previous</code>, or
	* <code>setValue</code> methods.
	* <p>
	* This method fires a <code>ChangeEvent</code> if the value has changed.
	*
	* @param value the current (non <code>null</code>) <code>Number</code>
	*         for this sequence
	* @throws IllegalArgumentException if <code>value</code> is
	*         <code>null</code> or not a <code>Number</code>
	* @see #getNumber
	* @see #getValue
	* @see SpinnerModel#addChangeListener
	*/
	@:overload public function setValue(value : Dynamic) : Void;
	
	
}
