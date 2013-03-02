package javax.swing;
/*
* Copyright (c) 2001, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class Spring
{
	/**
	* An integer value signifying that a property value has not yet been calculated.
	*/
	public static var UNSET(default, null) : Int;
	
	/**
	* Used by factory methods to create a <code>Spring</code>.
	*
	* @see #constant(int)
	* @see #constant(int, int, int)
	* @see #max
	* @see #minus
	* @see #sum
	* @see SpringLayout.Constraints
	*/
	@:overload private function new() : Void;
	
	/**
	* Returns the <em>minimum</em> value of this <code>Spring</code>.
	*
	* @return the <code>minimumValue</code> property of this <code>Spring</code>
	*/
	@:overload @:abstract public function getMinimumValue() : Int;
	
	/**
	* Returns the <em>preferred</em> value of this <code>Spring</code>.
	*
	* @return the <code>preferredValue</code> of this <code>Spring</code>
	*/
	@:overload @:abstract public function getPreferredValue() : Int;
	
	/**
	* Returns the <em>maximum</em> value of this <code>Spring</code>.
	*
	* @return the <code>maximumValue</code> property of this <code>Spring</code>
	*/
	@:overload @:abstract public function getMaximumValue() : Int;
	
	/**
	* Returns the current <em>value</em> of this <code>Spring</code>.
	*
	* @return  the <code>value</code> property of this <code>Spring</code>
	*
	* @see #setValue
	*/
	@:overload @:abstract public function getValue() : Int;
	
	/**
	* Sets the current <em>value</em> of this <code>Spring</code> to <code>value</code>.
	*
	* @param   value the new setting of the <code>value</code> property
	*
	* @see #getValue
	*/
	@:overload @:abstract public function setValue(value : Int) : Void;
	
	/**
	* Returns a strut -- a spring whose <em>minimum</em>, <em>preferred</em>, and
	* <em>maximum</em> values each have the value <code>pref</code>.
	*
	* @param  pref the <em>minimum</em>, <em>preferred</em>, and
	*         <em>maximum</em> values of the new spring
	* @return a spring whose <em>minimum</em>, <em>preferred</em>, and
	*         <em>maximum</em> values each have the value <code>pref</code>
	*
	* @see Spring
	*/
	@:overload public static function constant(pref : Int) : javax.swing.Spring;
	
	/**
	* Returns a spring whose <em>minimum</em>, <em>preferred</em>, and
	* <em>maximum</em> values have the values: <code>min</code>, <code>pref</code>,
	* and <code>max</code> respectively.
	*
	* @param  min the <em>minimum</em> value of the new spring
	* @param  pref the <em>preferred</em> value of the new spring
	* @param  max the <em>maximum</em> value of the new spring
	* @return a spring whose <em>minimum</em>, <em>preferred</em>, and
	*         <em>maximum</em> values have the values: <code>min</code>, <code>pref</code>,
	*         and <code>max</code> respectively
	*
	* @see Spring
	*/
	@:overload public static function constant(min : Int, pref : Int, max : Int) : javax.swing.Spring;
	
	/**
	* Returns <code>-s</code>: a spring running in the opposite direction to <code>s</code>.
	*
	* @return <code>-s</code>: a spring running in the opposite direction to <code>s</code>
	*
	* @see Spring
	*/
	@:overload public static function minus(s : javax.swing.Spring) : javax.swing.Spring;
	
	/**
	* Returns <code>s1+s2</code>: a spring representing <code>s1</code> and <code>s2</code>
	* in series. In a sum, <code>s3</code>, of two springs, <code>s1</code> and <code>s2</code>,
	* the <em>strains</em> of <code>s1</code>, <code>s2</code>, and <code>s3</code> are maintained
	* at the same level (to within the precision implied by their integer <em>value</em>s).
	* The strain of a spring in compression is:
	* <pre>
	*         value - pref
	*         ------------
	*          pref - min
	* </pre>
	* and the strain of a spring in tension is:
	* <pre>
	*         value - pref
	*         ------------
	*          max - pref
	* </pre>
	* When <code>setValue</code> is called on the sum spring, <code>s3</code>, the strain
	* in <code>s3</code> is calculated using one of the formulas above. Once the strain of
	* the sum is known, the <em>value</em>s of <code>s1</code> and <code>s2</code> are
	* then set so that they are have a strain equal to that of the sum. The formulas are
	* evaluated so as to take rounding errors into account and ensure that the sum of
	* the <em>value</em>s of <code>s1</code> and <code>s2</code> is exactly equal to
	* the <em>value</em> of <code>s3</code>.
	*
	* @return <code>s1+s2</code>: a spring representing <code>s1</code> and <code>s2</code> in series
	*
	* @see Spring
	*/
	@:overload public static function sum(s1 : javax.swing.Spring, s2 : javax.swing.Spring) : javax.swing.Spring;
	
	/**
	* Returns <code>max(s1, s2)</code>: a spring whose value is always greater than (or equal to)
	*         the values of both <code>s1</code> and <code>s2</code>.
	*
	* @return <code>max(s1, s2)</code>: a spring whose value is always greater than (or equal to)
	*         the values of both <code>s1</code> and <code>s2</code>
	* @see Spring
	*/
	@:overload public static function max(s1 : javax.swing.Spring, s2 : javax.swing.Spring) : javax.swing.Spring;
	
	/**
	* Returns a spring whose <em>minimum</em>, <em>preferred</em>, <em>maximum</em>
	* and <em>value</em> properties are each multiples of the properties of the
	* argument spring, <code>s</code>. Minimum and maximum properties are
	* swapped when <code>factor</code> is negative (in accordance with the
	* rules of interval arithmetic).
	* <p>
	* When factor is, for example, 0.5f the result represents 'the mid-point'
	* of its input - an operation that is useful for centering components in
	* a container.
	*
	* @param s the spring to scale
	* @param factor amount to scale by.
	* @return  a spring whose properties are those of the input spring <code>s</code>
	* multiplied by <code>factor</code>
	* @throws NullPointerException if <code>s</code> is null
	* @since 1.5
	*/
	@:require(java5) @:overload public static function scale(s : javax.swing.Spring, factor : Single) : javax.swing.Spring;
	
	/**
	* Returns a spring whose <em>minimum</em>, <em>preferred</em>, <em>maximum</em>
	* and <em>value</em> properties are defined by the widths of the <em>minimumSize</em>,
	* <em>preferredSize</em>, <em>maximumSize</em> and <em>size</em> properties
	* of the supplied component. The returned spring is a 'wrapper' implementation
	* whose methods call the appropriate size methods of the supplied component.
	* The minimum, preferred, maximum and value properties of the returned spring
	* therefore report the current state of the appropriate properties in the
	* component and track them as they change.
	*
	* @param c Component used for calculating size
	* @return  a spring whose properties are defined by the horizontal component
	* of the component's size methods.
	* @throws NullPointerException if <code>c</code> is null
	* @since 1.5
	*/
	@:require(java5) @:overload public static function width(c : java.awt.Component) : javax.swing.Spring;
	
	/**
	* Returns a spring whose <em>minimum</em>, <em>preferred</em>, <em>maximum</em>
	* and <em>value</em> properties are defined by the heights of the <em>minimumSize</em>,
	* <em>preferredSize</em>, <em>maximumSize</em> and <em>size</em> properties
	* of the supplied component. The returned spring is a 'wrapper' implementation
	* whose methods call the appropriate size methods of the supplied component.
	* The minimum, preferred, maximum and value properties of the returned spring
	* therefore report the current state of the appropriate properties in the
	* component and track them as they change.
	*
	* @param c Component used for calculating size
	* @return  a spring whose properties are defined by the vertical component
	* of the component's size methods.
	* @throws NullPointerException if <code>c</code> is null
	* @since 1.5
	*/
	@:require(java5) @:overload public static function height(c : java.awt.Component) : javax.swing.Spring;
	
	
}
/*pp*/
@:native('javax$swing$Spring$AbstractSpring') @:internal extern class Spring_AbstractSpring extends javax.swing.Spring
{
	private var size : Int;
	
	@:overload override public function getValue() : Int;
	
	@:overload @:final override public function setValue(size : Int) : Void;
	
	@:overload private function clear() : Void;
	
	@:overload private function setNonClearValue(size : Int) : Void;
	
	
}
@:native('javax$swing$Spring$StaticSpring') @:internal extern class Spring_StaticSpring extends javax.swing.Spring.Spring_AbstractSpring
{
	private var min : Int;
	
	private var pref : Int;
	
	private var max : Int;
	
	@:overload public function new(pref : Int) : Void;
	
	@:overload public function new(min : Int, pref : Int, max : Int) : Void;
	
	@:overload public function toString() : String;
	
	@:overload override public function getMinimumValue() : Int;
	
	@:overload override public function getPreferredValue() : Int;
	
	@:overload override public function getMaximumValue() : Int;
	
	
}
@:native('javax$swing$Spring$NegativeSpring') @:internal extern class Spring_NegativeSpring extends javax.swing.Spring
{
	@:overload public function new(s : javax.swing.Spring) : Void;
	
	@:overload override public function getMinimumValue() : Int;
	
	@:overload override public function getPreferredValue() : Int;
	
	@:overload override public function getMaximumValue() : Int;
	
	@:overload override public function getValue() : Int;
	
	@:overload override public function setValue(size : Int) : Void;
	
	
}
@:native('javax$swing$Spring$ScaleSpring') @:internal extern class Spring_ScaleSpring extends javax.swing.Spring
{
	@:overload override public function getMinimumValue() : Int;
	
	@:overload override public function getPreferredValue() : Int;
	
	@:overload override public function getMaximumValue() : Int;
	
	@:overload override public function getValue() : Int;
	
	@:overload override public function setValue(value : Int) : Void;
	
	
}
/*pp*/
@:native('javax$swing$Spring$WidthSpring') @:internal extern class Spring_WidthSpring extends javax.swing.Spring.Spring_AbstractSpring
{
	@:overload public function new(c : java.awt.Component) : Void;
	
	@:overload override public function getMinimumValue() : Int;
	
	@:overload override public function getPreferredValue() : Int;
	
	@:overload override public function getMaximumValue() : Int;
	
	
}
/*pp*/
@:native('javax$swing$Spring$HeightSpring') @:internal extern class Spring_HeightSpring extends javax.swing.Spring.Spring_AbstractSpring
{
	@:overload public function new(c : java.awt.Component) : Void;
	
	@:overload override public function getMinimumValue() : Int;
	
	@:overload override public function getPreferredValue() : Int;
	
	@:overload override public function getMaximumValue() : Int;
	
	
}
/*pp*/
@:native('javax$swing$Spring$SpringMap') @:internal extern class Spring_SpringMap extends javax.swing.Spring
{
	@:overload public function new(s : javax.swing.Spring) : Void;
	
	@:overload @:abstract private function map(i : Int) : Int;
	
	@:overload @:abstract private function inv(i : Int) : Int;
	
	@:overload override public function getMinimumValue() : Int;
	
	@:overload override public function getPreferredValue() : Int;
	
	@:overload override public function getMaximumValue() : Int;
	
	@:overload override public function getValue() : Int;
	
	@:overload override public function setValue(value : Int) : Void;
	
	
}
/*pp*/
@:native('javax$swing$Spring$CompoundSpring') @:internal extern class Spring_CompoundSpring extends javax.swing.Spring.Spring_StaticSpring
{
	private var s1 : javax.swing.Spring;
	
	private var s2 : javax.swing.Spring;
	
	@:overload public function new(s1 : javax.swing.Spring, s2 : javax.swing.Spring) : Void;
	
	@:overload override public function toString() : String;
	
	@:overload override private function clear() : Void;
	
	@:overload @:abstract private function op(x : Int, y : Int) : Int;
	
	@:overload override public function getMinimumValue() : Int;
	
	@:overload override public function getPreferredValue() : Int;
	
	@:overload override public function getMaximumValue() : Int;
	
	@:overload override public function getValue() : Int;
	
	
}
@:native('javax$swing$Spring$SumSpring') @:internal extern class Spring_SumSpring extends javax.swing.Spring.Spring_CompoundSpring
{
	@:overload public function new(s1 : javax.swing.Spring, s2 : javax.swing.Spring) : Void;
	
	@:overload override private function op(x : Int, y : Int) : Int;
	
	@:overload override private function setNonClearValue(size : Int) : Void;
	
	
}
@:native('javax$swing$Spring$MaxSpring') @:internal extern class Spring_MaxSpring extends javax.swing.Spring.Spring_CompoundSpring
{
	@:overload public function new(s1 : javax.swing.Spring, s2 : javax.swing.Spring) : Void;
	
	@:overload override private function op(x : Int, y : Int) : Int;
	
	@:overload override private function setNonClearValue(size : Int) : Void;
	
	
}
