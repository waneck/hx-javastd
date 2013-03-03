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
extern class ICC_ColorSpace extends java.awt.color.ColorSpace
{
	/**
	* Constructs a new ICC_ColorSpace from an ICC_Profile object.
	* @param profile the specified ICC_Profile object
	* @exception IllegalArgumentException if profile is inappropriate for
	*            representing a ColorSpace.
	*/
	@:overload @:public public function new(profile : java.awt.color.ICC_Profile) : Void;
	
	/**
	* Returns the ICC_Profile for this ICC_ColorSpace.
	* @return the ICC_Profile for this ICC_ColorSpace.
	*/
	@:overload @:public public function getProfile() : java.awt.color.ICC_Profile;
	
	/**
	* Transforms a color value assumed to be in this ColorSpace
	* into a value in the default CS_sRGB color space.
	* <p>
	* This method transforms color values using algorithms designed
	* to produce the best perceptual match between input and output
	* colors.  In order to do colorimetric conversion of color values,
	* you should use the <code>toCIEXYZ</code>
	* method of this color space to first convert from the input
	* color space to the CS_CIEXYZ color space, and then use the
	* <code>fromCIEXYZ</code> method of the CS_sRGB color space to
	* convert from CS_CIEXYZ to the output color space.
	* See {@link #toCIEXYZ(float[]) toCIEXYZ} and
	* {@link #fromCIEXYZ(float[]) fromCIEXYZ} for further information.
	* <p>
	* @param colorvalue a float array with length of at least the number
	*      of components in this ColorSpace.
	* @return a float array of length 3.
	* @throws ArrayIndexOutOfBoundsException if array length is not
	* at least the number of components in this ColorSpace.
	*/
	@:overload @:public override public function toRGB(colorvalue : java.NativeArray<Single>) : java.NativeArray<Single>;
	
	/**
	* Transforms a color value assumed to be in the default CS_sRGB
	* color space into this ColorSpace.
	* <p>
	* This method transforms color values using algorithms designed
	* to produce the best perceptual match between input and output
	* colors.  In order to do colorimetric conversion of color values,
	* you should use the <code>toCIEXYZ</code>
	* method of the CS_sRGB color space to first convert from the input
	* color space to the CS_CIEXYZ color space, and then use the
	* <code>fromCIEXYZ</code> method of this color space to
	* convert from CS_CIEXYZ to the output color space.
	* See {@link #toCIEXYZ(float[]) toCIEXYZ} and
	* {@link #fromCIEXYZ(float[]) fromCIEXYZ} for further information.
	* <p>
	* @param rgbvalue a float array with length of at least 3.
	* @return a float array with length equal to the number of
	*       components in this ColorSpace.
	* @throws ArrayIndexOutOfBoundsException if array length is not
	* at least 3.
	*/
	@:overload @:public override public function fromRGB(rgbvalue : java.NativeArray<Single>) : java.NativeArray<Single>;
	
	/**
	* Transforms a color value assumed to be in this ColorSpace
	* into the CS_CIEXYZ conversion color space.
	* <p>
	* This method transforms color values using relative colorimetry,
	* as defined by the ICC Specification.  This
	* means that the XYZ values returned by this method are represented
	* relative to the D50 white point of the CS_CIEXYZ color space.
	* This representation is useful in a two-step color conversion
	* process in which colors are transformed from an input color
	* space to CS_CIEXYZ and then to an output color space.  This
	* representation is not the same as the XYZ values that would
	* be measured from the given color value by a colorimeter.
	* A further transformation is necessary to compute the XYZ values
	* that would be measured using current CIE recommended practices.
	* The paragraphs below explain this in more detail.
	* <p>
	* The ICC standard uses a device independent color space (DICS) as the
	* mechanism for converting color from one device to another device.  In
	* this architecture, colors are converted from the source device's color
	* space to the ICC DICS and then from the ICC DICS to the destination
	* device's color space.  The ICC standard defines device profiles which
	* contain transforms which will convert between a device's color space
	* and the ICC DICS.  The overall conversion of colors from a source
	* device to colors of a destination device is done by connecting the
	* device-to-DICS transform of the profile for the source device to the
	* DICS-to-device transform of the profile for the destination device.
	* For this reason, the ICC DICS is commonly referred to as the profile
	* connection space (PCS).  The color space used in the methods
	* toCIEXYZ and fromCIEXYZ is the CIEXYZ PCS defined by the ICC
	* Specification.  This is also the color space represented by
	* ColorSpace.CS_CIEXYZ.
	* <p>
	* The XYZ values of a color are often represented as relative to some
	* white point, so the actual meaning of the XYZ values cannot be known
	* without knowing the white point of those values.  This is known as
	* relative colorimetry.  The PCS uses a white point of D50, so the XYZ
	* values of the PCS are relative to D50.  For example, white in the PCS
	* will have the XYZ values of D50, which is defined to be X=.9642,
	* Y=1.000, and Z=0.8249.  This white point is commonly used for graphic
	* arts applications, but others are often used in other applications.
	* <p>
	* To quantify the color characteristics of a device such as a printer
	* or monitor, measurements of XYZ values for particular device colors
	* are typically made.  For purposes of this discussion, the term
	* device XYZ values is used to mean the XYZ values that would be
	* measured from device colors using current CIE recommended practices.
	* <p>
	* Converting between device XYZ values and the PCS XYZ values returned
	* by this method corresponds to converting between the device's color
	* space, as represented by CIE colorimetric values, and the PCS.  There
	* are many factors involved in this process, some of which are quite
	* subtle.  The most important, however, is the adjustment made to account
	* for differences between the device's white point and the white point of
	* the PCS.  There are many techniques for doing this and it is the
	* subject of much current research and controversy.  Some commonly used
	* methods are XYZ scaling, the von Kries transform, and the Bradford
	* transform.  The proper method to use depends upon each particular
	* application.
	* <p>
	* The simplest method is XYZ scaling.  In this method each device XYZ
	* value is  converted to a PCS XYZ value by multiplying it by the ratio
	* of the PCS white point (D50) to the device white point.
	* <pre>
	*
	* Xd, Yd, Zd are the device XYZ values
	* Xdw, Ydw, Zdw are the device XYZ white point values
	* Xp, Yp, Zp are the PCS XYZ values
	* Xd50, Yd50, Zd50 are the PCS XYZ white point values
	*
	* Xp = Xd * (Xd50 / Xdw)
	* Yp = Yd * (Yd50 / Ydw)
	* Zp = Zd * (Zd50 / Zdw)
	*
	* </pre>
	* <p>
	* Conversion from the PCS to the device would be done by inverting these
	* equations:
	* <pre>
	*
	* Xd = Xp * (Xdw / Xd50)
	* Yd = Yp * (Ydw / Yd50)
	* Zd = Zp * (Zdw / Zd50)
	*
	* </pre>
	* <p>
	* Note that the media white point tag in an ICC profile is not the same
	* as the device white point.  The media white point tag is expressed in
	* PCS values and is used to represent the difference between the XYZ of
	* device illuminant and the XYZ of the device media when measured under
	* that illuminant.  The device white point is expressed as the device
	* XYZ values corresponding to white displayed on the device.  For
	* example, displaying the RGB color (1.0, 1.0, 1.0) on an sRGB device
	* will result in a measured device XYZ value of D65.  This will not
	* be the same as the media white point tag XYZ value in the ICC
	* profile for an sRGB device.
	* <p>
	* @param colorvalue a float array with length of at least the number
	*        of components in this ColorSpace.
	* @return a float array of length 3.
	* @throws ArrayIndexOutOfBoundsException if array length is not
	* at least the number of components in this ColorSpace.
	*/
	@:overload @:public override public function toCIEXYZ(colorvalue : java.NativeArray<Single>) : java.NativeArray<Single>;
	
	/**
	* Transforms a color value assumed to be in the CS_CIEXYZ conversion
	* color space into this ColorSpace.
	* <p>
	* This method transforms color values using relative colorimetry,
	* as defined by the ICC Specification.  This
	* means that the XYZ argument values taken by this method are represented
	* relative to the D50 white point of the CS_CIEXYZ color space.
	* This representation is useful in a two-step color conversion
	* process in which colors are transformed from an input color
	* space to CS_CIEXYZ and then to an output color space.  The color
	* values returned by this method are not those that would produce
	* the XYZ value passed to the method when measured by a colorimeter.
	* If you have XYZ values corresponding to measurements made using
	* current CIE recommended practices, they must be converted to D50
	* relative values before being passed to this method.
	* The paragraphs below explain this in more detail.
	* <p>
	* The ICC standard uses a device independent color space (DICS) as the
	* mechanism for converting color from one device to another device.  In
	* this architecture, colors are converted from the source device's color
	* space to the ICC DICS and then from the ICC DICS to the destination
	* device's color space.  The ICC standard defines device profiles which
	* contain transforms which will convert between a device's color space
	* and the ICC DICS.  The overall conversion of colors from a source
	* device to colors of a destination device is done by connecting the
	* device-to-DICS transform of the profile for the source device to the
	* DICS-to-device transform of the profile for the destination device.
	* For this reason, the ICC DICS is commonly referred to as the profile
	* connection space (PCS).  The color space used in the methods
	* toCIEXYZ and fromCIEXYZ is the CIEXYZ PCS defined by the ICC
	* Specification.  This is also the color space represented by
	* ColorSpace.CS_CIEXYZ.
	* <p>
	* The XYZ values of a color are often represented as relative to some
	* white point, so the actual meaning of the XYZ values cannot be known
	* without knowing the white point of those values.  This is known as
	* relative colorimetry.  The PCS uses a white point of D50, so the XYZ
	* values of the PCS are relative to D50.  For example, white in the PCS
	* will have the XYZ values of D50, which is defined to be X=.9642,
	* Y=1.000, and Z=0.8249.  This white point is commonly used for graphic
	* arts applications, but others are often used in other applications.
	* <p>
	* To quantify the color characteristics of a device such as a printer
	* or monitor, measurements of XYZ values for particular device colors
	* are typically made.  For purposes of this discussion, the term
	* device XYZ values is used to mean the XYZ values that would be
	* measured from device colors using current CIE recommended practices.
	* <p>
	* Converting between device XYZ values and the PCS XYZ values taken as
	* arguments by this method corresponds to converting between the device's
	* color space, as represented by CIE colorimetric values, and the PCS.
	* There are many factors involved in this process, some of which are quite
	* subtle.  The most important, however, is the adjustment made to account
	* for differences between the device's white point and the white point of
	* the PCS.  There are many techniques for doing this and it is the
	* subject of much current research and controversy.  Some commonly used
	* methods are XYZ scaling, the von Kries transform, and the Bradford
	* transform.  The proper method to use depends upon each particular
	* application.
	* <p>
	* The simplest method is XYZ scaling.  In this method each device XYZ
	* value is  converted to a PCS XYZ value by multiplying it by the ratio
	* of the PCS white point (D50) to the device white point.
	* <pre>
	*
	* Xd, Yd, Zd are the device XYZ values
	* Xdw, Ydw, Zdw are the device XYZ white point values
	* Xp, Yp, Zp are the PCS XYZ values
	* Xd50, Yd50, Zd50 are the PCS XYZ white point values
	*
	* Xp = Xd * (Xd50 / Xdw)
	* Yp = Yd * (Yd50 / Ydw)
	* Zp = Zd * (Zd50 / Zdw)
	*
	* </pre>
	* <p>
	* Conversion from the PCS to the device would be done by inverting these
	* equations:
	* <pre>
	*
	* Xd = Xp * (Xdw / Xd50)
	* Yd = Yp * (Ydw / Yd50)
	* Zd = Zp * (Zdw / Zd50)
	*
	* </pre>
	* <p>
	* Note that the media white point tag in an ICC profile is not the same
	* as the device white point.  The media white point tag is expressed in
	* PCS values and is used to represent the difference between the XYZ of
	* device illuminant and the XYZ of the device media when measured under
	* that illuminant.  The device white point is expressed as the device
	* XYZ values corresponding to white displayed on the device.  For
	* example, displaying the RGB color (1.0, 1.0, 1.0) on an sRGB device
	* will result in a measured device XYZ value of D65.  This will not
	* be the same as the media white point tag XYZ value in the ICC
	* profile for an sRGB device.
	* <p>
	* <p>
	* @param colorvalue a float array with length of at least 3.
	* @return a float array with length equal to the number of
	*         components in this ColorSpace.
	* @throws ArrayIndexOutOfBoundsException if array length is not
	* at least 3.
	*/
	@:overload @:public override public function fromCIEXYZ(colorvalue : java.NativeArray<Single>) : java.NativeArray<Single>;
	
	/**
	* Returns the minimum normalized color component value for the
	* specified component.  For TYPE_XYZ spaces, this method returns
	* minimum values of 0.0 for all components.  For TYPE_Lab spaces,
	* this method returns 0.0 for L and -128.0 for a and b components.
	* This is consistent with the encoding of the XYZ and Lab Profile
	* Connection Spaces in the ICC specification.  For all other types, this
	* method returns 0.0 for all components.  When using an ICC_ColorSpace
	* with a profile that requires different minimum component values,
	* it is necessary to subclass this class and override this method.
	* @param component The component index.
	* @return The minimum normalized component value.
	* @throws IllegalArgumentException if component is less than 0 or
	*         greater than numComponents - 1.
	* @since 1.4
	*/
	@:require(java4) @:overload @:public override public function getMinValue(component : Int) : Single;
	
	/**
	* Returns the maximum normalized color component value for the
	* specified component.  For TYPE_XYZ spaces, this method returns
	* maximum values of 1.0 + (32767.0 / 32768.0) for all components.
	* For TYPE_Lab spaces,
	* this method returns 100.0 for L and 127.0 for a and b components.
	* This is consistent with the encoding of the XYZ and Lab Profile
	* Connection Spaces in the ICC specification.  For all other types, this
	* method returns 1.0 for all components.  When using an ICC_ColorSpace
	* with a profile that requires different maximum component values,
	* it is necessary to subclass this class and override this method.
	* @param component The component index.
	* @return The maximum normalized component value.
	* @throws IllegalArgumentException if component is less than 0 or
	*         greater than numComponents - 1.
	* @since 1.4
	*/
	@:require(java4) @:overload @:public override public function getMaxValue(component : Int) : Single;
	
	
}
