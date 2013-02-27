package com.sun.org.apache.xalan.internal.lib;
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
* $Id: ExsltMath.java,v 1.1.2.1 2005/08/01 02:08:50 jeffsuttor Exp $
*/
extern class ExsltMath extends com.sun.org.apache.xalan.internal.lib.ExsltBase
{
	/**
	* The math:max function returns the maximum value of the nodes passed as the argument.
	* The maximum value is defined as follows. The node set passed as an argument is sorted
	* in descending order as it would be by xsl:sort with a data type of number. The maximum
	* is the result of converting the string value of the first node in this sorted list to
	* a number using the number function.
	* <p>
	* If the node set is empty, or if the result of converting the string values of any of the
	* nodes to a number is NaN, then NaN is returned.
	*
	* @param nl The NodeList for the node-set to be evaluated.
	*
	* @return the maximum value found, NaN if any node cannot be converted to a number.
	*
	* @see <a href="http://www.exslt.org/">EXSLT</a>
	*/
	@:overload public static function max(nl : org.w3c.dom.NodeList) : Float;
	
	/**
	* The math:min function returns the minimum value of the nodes passed as the argument.
	* The minimum value is defined as follows. The node set passed as an argument is sorted
	* in ascending order as it would be by xsl:sort with a data type of number. The minimum
	* is the result of converting the string value of the first node in this sorted list to
	* a number using the number function.
	* <p>
	* If the node set is empty, or if the result of converting the string values of any of
	* the nodes to a number is NaN, then NaN is returned.
	*
	* @param nl The NodeList for the node-set to be evaluated.
	*
	* @return the minimum value found, NaN if any node cannot be converted to a number.
	*
	* @see <a href="http://www.exslt.org/">EXSLT</a>
	*/
	@:overload public static function min(nl : org.w3c.dom.NodeList) : Float;
	
	/**
	* The math:highest function returns the nodes in the node set whose value is the maximum
	* value for the node set. The maximum value for the node set is the same as the value as
	* calculated by math:max. A node has this maximum value if the result of converting its
	* string value to a number as if by the number function is equal to the maximum value,
	* where the equality comparison is defined as a numerical comparison using the = operator.
	* <p>
	* If any of the nodes in the node set has a non-numeric value, the math:max function will
	* return NaN. The definition numeric comparisons entails that NaN != NaN. Therefore if any
	* of the nodes in the node set has a non-numeric value, math:highest will return an empty
	* node set.
	*
	* @param nl The NodeList for the node-set to be evaluated.
	*
	* @return node-set with nodes containing the maximum value found, an empty node-set
	* if any node cannot be converted to a number.
	*/
	@:overload public static function highest(nl : org.w3c.dom.NodeList) : org.w3c.dom.NodeList;
	
	/**
	* The math:lowest function returns the nodes in the node set whose value is the minimum value
	* for the node set. The minimum value for the node set is the same as the value as calculated
	* by math:min. A node has this minimum value if the result of converting its string value to
	* a number as if by the number function is equal to the minimum value, where the equality
	* comparison is defined as a numerical comparison using the = operator.
	* <p>
	* If any of the nodes in the node set has a non-numeric value, the math:min function will return
	* NaN. The definition numeric comparisons entails that NaN != NaN. Therefore if any of the nodes
	* in the node set has a non-numeric value, math:lowest will return an empty node set.
	*
	* @param nl The NodeList for the node-set to be evaluated.
	*
	* @return node-set with nodes containing the minimum value found, an empty node-set
	* if any node cannot be converted to a number.
	*
	*/
	@:overload public static function lowest(nl : org.w3c.dom.NodeList) : org.w3c.dom.NodeList;
	
	/**
	* The math:abs function returns the absolute value of a number.
	*
	* @param num A number
	* @return The absolute value of the number
	*/
	@:overload public static function abs(num : Float) : Float;
	
	/**
	* The math:acos function returns the arccosine value of a number.
	*
	* @param num A number
	* @return The arccosine value of the number
	*/
	@:overload public static function acos(num : Float) : Float;
	
	/**
	* The math:asin function returns the arcsine value of a number.
	*
	* @param num A number
	* @return The arcsine value of the number
	*/
	@:overload public static function asin(num : Float) : Float;
	
	/**
	* The math:atan function returns the arctangent value of a number.
	*
	* @param num A number
	* @return The arctangent value of the number
	*/
	@:overload public static function atan(num : Float) : Float;
	
	/**
	* The math:atan2 function returns the angle ( in radians ) from the X axis to a point (y,x).
	*
	* @param num1 The X axis value
	* @param num2 The Y axis value
	* @return The angle (in radians) from the X axis to a point (y,x)
	*/
	@:overload public static function atan2(num1 : Float, num2 : Float) : Float;
	
	/**
	* The math:cos function returns cosine of the passed argument.
	*
	* @param num A number
	* @return The cosine value of the number
	*/
	@:overload public static function cos(num : Float) : Float;
	
	/**
	* The math:exp function returns e (the base of natural logarithms) raised to a power.
	*
	* @param num A number
	* @return The value of e raised to the given power
	*/
	@:overload public static function exp(num : Float) : Float;
	
	/**
	* The math:log function returns the natural logarithm of a number.
	*
	* @param num A number
	* @return The natural logarithm of the number
	*/
	@:overload public static function log(num : Float) : Float;
	
	/**
	* The math:power function returns the value of a base expression taken to a specified power.
	*
	* @param num1 The base
	* @param num2 The power
	* @return The value of the base expression taken to the specified power
	*/
	@:overload public static function power(num1 : Float, num2 : Float) : Float;
	
	/**
	* The math:random function returns a random number from 0 to 1.
	*
	* @return A random double from 0 to 1
	*/
	@:overload public static function random() : Float;
	
	/**
	* The math:sin function returns the sine of the number.
	*
	* @param num A number
	* @return The sine value of the number
	*/
	@:overload public static function sin(num : Float) : Float;
	
	/**
	* The math:sqrt function returns the square root of a number.
	*
	* @param num A number
	* @return The square root of the number
	*/
	@:overload public static function sqrt(num : Float) : Float;
	
	/**
	* The math:tan function returns the tangent of the number passed as an argument.
	*
	* @param num A number
	* @return The tangent value of the number
	*/
	@:overload public static function tan(num : Float) : Float;
	
	/**
	* The math:constant function returns the specified constant to a set precision.
	* The possible constants are:
	* <pre>
	*  PI
	*  E
	*  SQRRT2
	*  LN2
	*  LN10
	*  LOG2E
	*  SQRT1_2
	* </pre>
	* @param name The name of the constant
	* @param precision The precision
	* @return The value of the specified constant to the given precision
	*/
	@:overload public static function constant(name : String, precision : Float) : Float;
	
	
}
