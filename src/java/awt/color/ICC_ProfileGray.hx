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
extern class ICC_ProfileGray extends java.awt.color.ICC_Profile
{
	/**
	* Returns a float array of length 3 containing the X, Y, and Z
	* components of the mediaWhitePointTag in the ICC profile.
	* @return an array containing the components of the
	* mediaWhitePointTag in the ICC profile.
	*/
	@:overload public function getMediaWhitePoint() : java.NativeArray<Single>;
	
	/**
	* Returns a gamma value representing the tone reproduction
	* curve (TRC).  If the profile represents the TRC as a table rather
	* than a single gamma value, then an exception is thrown.  In this
	* case the actual table can be obtained via getTRC().  When
	* using a gamma value, the PCS Y component is computed as follows:
<pre>

&nbsp;                         gamma
&nbsp;        PCSY = deviceGray

</pre>
	* @return the gamma value as a float.
	* @exception ProfileDataException if the profile does not specify
	*            the TRC as a single gamma value.
	*/
	@:overload public function getGamma() : Single;
	
	/**
	* Returns the TRC as an array of shorts.  If the profile has
	* specified the TRC as linear (gamma = 1.0) or as a simple gamma
	* value, this method throws an exception, and the getGamma() method
	* should be used to get the gamma value.  Otherwise the short array
	* returned here represents a lookup table where the input Gray value
	* is conceptually in the range [0.0, 1.0].  Value 0.0 maps
	* to array index 0 and value 1.0 maps to array index length-1.
	* Interpolation may be used to generate output values for
	* input values which do not map exactly to an index in the
	* array.  Output values also map linearly to the range [0.0, 1.0].
	* Value 0.0 is represented by an array value of 0x0000 and
	* value 1.0 by 0xFFFF, i.e. the values are really unsigned
	* short values, although they are returned in a short array.
	* @return a short array representing the TRC.
	* @exception ProfileDataException if the profile does not specify
	*            the TRC as a table.
	*/
	@:overload public function getTRC() : java.NativeArray<java.StdTypes.Int16>;
	
	
}
