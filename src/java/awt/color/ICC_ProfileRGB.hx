package java.awt.color;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
/**********************************************************************
**********************************************************************
**********************************************************************
*** COPYRIGHT (c) Eastman Kodak Company, 1997                      ***
*** As  an unpublished  work pursuant to Title 17 of the United    ***
*** States Code.  All rights reserved.                             ***
**********************************************************************
**********************************************************************
**********************************************************************/
extern class ICC_ProfileRGB extends java.awt.color.ICC_Profile
{
	/**
	* Used to get a gamma value or TRC for the red component.
	*/
	@:public @:static @:final public static var REDCOMPONENT(default, null) : Int;
	
	/**
	* Used to get a gamma value or TRC for the green component.
	*/
	@:public @:static @:final public static var GREENCOMPONENT(default, null) : Int;
	
	/**
	* Used to get a gamma value or TRC for the blue component.
	*/
	@:public @:static @:final public static var BLUECOMPONENT(default, null) : Int;
	
	/**
	* Returns an array that contains the components of the profile's
	* <CODE>mediaWhitePointTag</CODE>.
	*
	* @return A 3-element <CODE>float</CODE> array containing the x, y,
	* and z components of the profile's <CODE>mediaWhitePointTag</CODE>.
	*/
	@:overload @:public public function getMediaWhitePoint() : java.NativeArray<Single>;
	
	/**
	* Returns a 3x3 <CODE>float</CODE> matrix constructed from the
	* X, Y, and Z components of the profile's <CODE>redColorantTag</CODE>,
	* <CODE>greenColorantTag</CODE>, and <CODE>blueColorantTag</CODE>.
	* <p>
	* This matrix can be used for color transforms in the forward
	* direction of the profile--from the profile color space
	* to the CIEXYZ PCS.
	*
	* @return A 3x3 <CODE>float</CODE> array that contains the x, y, and z
	* components of the profile's <CODE>redColorantTag</CODE>,
	* <CODE>greenColorantTag</CODE>, and <CODE>blueColorantTag</CODE>.
	*/
	@:overload @:public public function getMatrix() : java.NativeArray<java.NativeArray<Single>>;
	
	/**
	* Returns a gamma value representing the tone reproduction curve
	* (TRC) for a particular component.  The component parameter
	* must be one of REDCOMPONENT, GREENCOMPONENT, or BLUECOMPONENT.
	* <p>
	* If the profile
	* represents the TRC for the corresponding component
	* as a table rather than a single gamma value, an
	* exception is thrown.  In this case the actual table
	* can be obtained through the {@link #getTRC(int)} method.
	* When using a gamma value,
	* the linear component (R, G, or B) is computed as follows:
	* <pre>
	*
	* &nbsp;                                         gamma
	* &nbsp;        linearComponent = deviceComponent
	*
	*</pre>
	* @param component The <CODE>ICC_ProfileRGB</CODE> constant that
	* represents the component whose TRC you want to retrieve
	* @return the gamma value as a float.
	* @exception ProfileDataException if the profile does not specify
	*            the corresponding TRC as a single gamma value.
	*/
	@:overload @:public public function getGamma(component : Int) : Single;
	
	/**
	* Returns the TRC for a particular component as an array.
	* Component must be <code>REDCOMPONENT</code>,
	* <code>GREENCOMPONENT</code>, or <code>BLUECOMPONENT</code>.
	* Otherwise the returned array
	* represents a lookup table where the input component value
	* is conceptually in the range [0.0, 1.0].  Value 0.0 maps
	* to array index 0 and value 1.0 maps to array index length-1.
	* Interpolation might be used to generate output values for
	* input values that do not map exactly to an index in the
	* array.  Output values also map linearly to the range [0.0, 1.0].
	* Value 0.0 is represented by an array value of 0x0000 and
	* value 1.0 by 0xFFFF.  In other words, the values are really unsigned
	* <code>short</code> values even though they are returned in a
	* <code>short</code> array.
	*
	* If the profile has specified the corresponding TRC
	* as linear (gamma = 1.0) or as a simple gamma value, this method
	* throws an exception.  In this case, the {@link #getGamma(int)}
	* method should be used to get the gamma value.
	*
	* @param component The <CODE>ICC_ProfileRGB</CODE> constant that
	* represents the component whose TRC you want to retrieve:
	* <CODE>REDCOMPONENT</CODE>, <CODE>GREENCOMPONENT</CODE>, or
	* <CODE>BLUECOMPONENT</CODE>.
	*
	* @return a short array representing the TRC.
	* @exception ProfileDataException if the profile does not specify
	*            the corresponding TRC as a table.
	*/
	@:overload @:public public function getTRC(component : Int) : java.NativeArray<java.StdTypes.Int16>;
	
	
}
