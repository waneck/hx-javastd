package java.awt.color;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class ICC_Profile implements java.io.Serializable
{
	/**
	* Profile class is input.
	*/
	public static var CLASS_INPUT(default, null) : Int;
	
	/**
	* Profile class is display.
	*/
	public static var CLASS_DISPLAY(default, null) : Int;
	
	/**
	* Profile class is output.
	*/
	public static var CLASS_OUTPUT(default, null) : Int;
	
	/**
	* Profile class is device link.
	*/
	public static var CLASS_DEVICELINK(default, null) : Int;
	
	/**
	* Profile class is color space conversion.
	*/
	public static var CLASS_COLORSPACECONVERSION(default, null) : Int;
	
	/**
	* Profile class is abstract.
	*/
	public static var CLASS_ABSTRACT(default, null) : Int;
	
	/**
	* Profile class is named color.
	*/
	public static var CLASS_NAMEDCOLOR(default, null) : Int;
	
	/**
	* ICC Profile Color Space Type Signature: 'XYZ '.
	*/
	public static var icSigXYZData(default, null) : Int;
	
	/**
	* ICC Profile Color Space Type Signature: 'Lab '.
	*/
	public static var icSigLabData(default, null) : Int;
	
	/**
	* ICC Profile Color Space Type Signature: 'Luv '.
	*/
	public static var icSigLuvData(default, null) : Int;
	
	/**
	* ICC Profile Color Space Type Signature: 'YCbr'.
	*/
	public static var icSigYCbCrData(default, null) : Int;
	
	/**
	* ICC Profile Color Space Type Signature: 'Yxy '.
	*/
	public static var icSigYxyData(default, null) : Int;
	
	/**
	* ICC Profile Color Space Type Signature: 'RGB '.
	*/
	public static var icSigRgbData(default, null) : Int;
	
	/**
	* ICC Profile Color Space Type Signature: 'GRAY'.
	*/
	public static var icSigGrayData(default, null) : Int;
	
	/**
	* ICC Profile Color Space Type Signature: 'HSV'.
	*/
	public static var icSigHsvData(default, null) : Int;
	
	/**
	* ICC Profile Color Space Type Signature: 'HLS'.
	*/
	public static var icSigHlsData(default, null) : Int;
	
	/**
	* ICC Profile Color Space Type Signature: 'CMYK'.
	*/
	public static var icSigCmykData(default, null) : Int;
	
	/**
	* ICC Profile Color Space Type Signature: 'CMY '.
	*/
	public static var icSigCmyData(default, null) : Int;
	
	/**
	* ICC Profile Color Space Type Signature: '2CLR'.
	*/
	public static var icSigSpace2CLR(default, null) : Int;
	
	/**
	* ICC Profile Color Space Type Signature: '3CLR'.
	*/
	public static var icSigSpace3CLR(default, null) : Int;
	
	/**
	* ICC Profile Color Space Type Signature: '4CLR'.
	*/
	public static var icSigSpace4CLR(default, null) : Int;
	
	/**
	* ICC Profile Color Space Type Signature: '5CLR'.
	*/
	public static var icSigSpace5CLR(default, null) : Int;
	
	/**
	* ICC Profile Color Space Type Signature: '6CLR'.
	*/
	public static var icSigSpace6CLR(default, null) : Int;
	
	/**
	* ICC Profile Color Space Type Signature: '7CLR'.
	*/
	public static var icSigSpace7CLR(default, null) : Int;
	
	/**
	* ICC Profile Color Space Type Signature: '8CLR'.
	*/
	public static var icSigSpace8CLR(default, null) : Int;
	
	/**
	* ICC Profile Color Space Type Signature: '9CLR'.
	*/
	public static var icSigSpace9CLR(default, null) : Int;
	
	/**
	* ICC Profile Color Space Type Signature: 'ACLR'.
	*/
	public static var icSigSpaceACLR(default, null) : Int;
	
	/**
	* ICC Profile Color Space Type Signature: 'BCLR'.
	*/
	public static var icSigSpaceBCLR(default, null) : Int;
	
	/**
	* ICC Profile Color Space Type Signature: 'CCLR'.
	*/
	public static var icSigSpaceCCLR(default, null) : Int;
	
	/**
	* ICC Profile Color Space Type Signature: 'DCLR'.
	*/
	public static var icSigSpaceDCLR(default, null) : Int;
	
	/**
	* ICC Profile Color Space Type Signature: 'ECLR'.
	*/
	public static var icSigSpaceECLR(default, null) : Int;
	
	/**
	* ICC Profile Color Space Type Signature: 'FCLR'.
	*/
	public static var icSigSpaceFCLR(default, null) : Int;
	
	/**
	* ICC Profile Class Signature: 'scnr'.
	*/
	public static var icSigInputClass(default, null) : Int;
	
	/**
	* ICC Profile Class Signature: 'mntr'.
	*/
	public static var icSigDisplayClass(default, null) : Int;
	
	/**
	* ICC Profile Class Signature: 'prtr'.
	*/
	public static var icSigOutputClass(default, null) : Int;
	
	/**
	* ICC Profile Class Signature: 'link'.
	*/
	public static var icSigLinkClass(default, null) : Int;
	
	/**
	* ICC Profile Class Signature: 'abst'.
	*/
	public static var icSigAbstractClass(default, null) : Int;
	
	/**
	* ICC Profile Class Signature: 'spac'.
	*/
	public static var icSigColorSpaceClass(default, null) : Int;
	
	/**
	* ICC Profile Class Signature: 'nmcl'.
	*/
	public static var icSigNamedColorClass(default, null) : Int;
	
	/**
	* ICC Profile Rendering Intent: Perceptual.
	*/
	public static var icPerceptual(default, null) : Int;
	
	/**
	* ICC Profile Rendering Intent: RelativeColorimetric.
	*/
	public static var icRelativeColorimetric(default, null) : Int;
	
	/**
	* ICC Profile Rendering Intent: Media-RelativeColorimetric.
	* @since 1.5
	*/
	@:require(java5) public static var icMediaRelativeColorimetric(default, null) : Int;
	
	/**
	* ICC Profile Rendering Intent: Saturation.
	*/
	public static var icSaturation(default, null) : Int;
	
	/**
	* ICC Profile Rendering Intent: AbsoluteColorimetric.
	*/
	public static var icAbsoluteColorimetric(default, null) : Int;
	
	/**
	* ICC Profile Rendering Intent: ICC-AbsoluteColorimetric.
	* @since 1.5
	*/
	@:require(java5) public static var icICCAbsoluteColorimetric(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'head' - special.
	*/
	public static var icSigHead(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'A2B0'.
	*/
	public static var icSigAToB0Tag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'A2B1'.
	*/
	public static var icSigAToB1Tag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'A2B2'.
	*/
	public static var icSigAToB2Tag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'bXYZ'.
	*/
	public static var icSigBlueColorantTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'bXYZ'.
	* @since 1.5
	*/
	@:require(java5) public static var icSigBlueMatrixColumnTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'bTRC'.
	*/
	public static var icSigBlueTRCTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'B2A0'.
	*/
	public static var icSigBToA0Tag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'B2A1'.
	*/
	public static var icSigBToA1Tag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'B2A2'.
	*/
	public static var icSigBToA2Tag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'calt'.
	*/
	public static var icSigCalibrationDateTimeTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'targ'.
	*/
	public static var icSigCharTargetTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'cprt'.
	*/
	public static var icSigCopyrightTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'crdi'.
	*/
	public static var icSigCrdInfoTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'dmnd'.
	*/
	public static var icSigDeviceMfgDescTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'dmdd'.
	*/
	public static var icSigDeviceModelDescTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'devs'.
	*/
	public static var icSigDeviceSettingsTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'gamt'.
	*/
	public static var icSigGamutTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'kTRC'.
	*/
	public static var icSigGrayTRCTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'gXYZ'.
	*/
	public static var icSigGreenColorantTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'gXYZ'.
	* @since 1.5
	*/
	@:require(java5) public static var icSigGreenMatrixColumnTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'gTRC'.
	*/
	public static var icSigGreenTRCTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'lumi'.
	*/
	public static var icSigLuminanceTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'meas'.
	*/
	public static var icSigMeasurementTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'bkpt'.
	*/
	public static var icSigMediaBlackPointTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'wtpt'.
	*/
	public static var icSigMediaWhitePointTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'ncl2'.
	*/
	public static var icSigNamedColor2Tag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'resp'.
	*/
	public static var icSigOutputResponseTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'pre0'.
	*/
	public static var icSigPreview0Tag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'pre1'.
	*/
	public static var icSigPreview1Tag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'pre2'.
	*/
	public static var icSigPreview2Tag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'desc'.
	*/
	public static var icSigProfileDescriptionTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'pseq'.
	*/
	public static var icSigProfileSequenceDescTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'psd0'.
	*/
	public static var icSigPs2CRD0Tag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'psd1'.
	*/
	public static var icSigPs2CRD1Tag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'psd2'.
	*/
	public static var icSigPs2CRD2Tag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'psd3'.
	*/
	public static var icSigPs2CRD3Tag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'ps2s'.
	*/
	public static var icSigPs2CSATag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'ps2i'.
	*/
	public static var icSigPs2RenderingIntentTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'rXYZ'.
	*/
	public static var icSigRedColorantTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'rXYZ'.
	* @since 1.5
	*/
	@:require(java5) public static var icSigRedMatrixColumnTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'rTRC'.
	*/
	public static var icSigRedTRCTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'scrd'.
	*/
	public static var icSigScreeningDescTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'scrn'.
	*/
	public static var icSigScreeningTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'tech'.
	*/
	public static var icSigTechnologyTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'bfd '.
	*/
	public static var icSigUcrBgTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'vued'.
	*/
	public static var icSigViewingCondDescTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'view'.
	*/
	public static var icSigViewingConditionsTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'chrm'.
	*/
	public static var icSigChromaticityTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'chad'.
	* @since 1.5
	*/
	@:require(java5) public static var icSigChromaticAdaptationTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'clro'.
	* @since 1.5
	*/
	@:require(java5) public static var icSigColorantOrderTag(default, null) : Int;
	
	/**
	* ICC Profile Tag Signature: 'clrt'.
	* @since 1.5
	*/
	@:require(java5) public static var icSigColorantTableTag(default, null) : Int;
	
	/**
	* ICC Profile Header Location: profile size in bytes.
	*/
	public static var icHdrSize(default, null) : Int;
	
	/**
	* ICC Profile Header Location: CMM for this profile.
	*/
	public static var icHdrCmmId(default, null) : Int;
	
	/**
	* ICC Profile Header Location: format version number.
	*/
	public static var icHdrVersion(default, null) : Int;
	
	/**
	* ICC Profile Header Location: type of profile.
	*/
	public static var icHdrDeviceClass(default, null) : Int;
	
	/**
	* ICC Profile Header Location: color space of data.
	*/
	public static var icHdrColorSpace(default, null) : Int;
	
	/**
	* ICC Profile Header Location: PCS - XYZ or Lab only.
	*/
	public static var icHdrPcs(default, null) : Int;
	
	/**
	* ICC Profile Header Location: date profile was created.
	*/
	public static var icHdrDate(default, null) : Int;
	
	/**
	* ICC Profile Header Location: icMagicNumber.
	*/
	public static var icHdrMagic(default, null) : Int;
	
	/**
	* ICC Profile Header Location: primary platform.
	*/
	public static var icHdrPlatform(default, null) : Int;
	
	/**
	* ICC Profile Header Location: various bit settings.
	*/
	public static var icHdrFlags(default, null) : Int;
	
	/**
	* ICC Profile Header Location: device manufacturer.
	*/
	public static var icHdrManufacturer(default, null) : Int;
	
	/**
	* ICC Profile Header Location: device model number.
	*/
	public static var icHdrModel(default, null) : Int;
	
	/**
	* ICC Profile Header Location: device attributes.
	*/
	public static var icHdrAttributes(default, null) : Int;
	
	/**
	* ICC Profile Header Location: rendering intent.
	*/
	public static var icHdrRenderingIntent(default, null) : Int;
	
	/**
	* ICC Profile Header Location: profile illuminant.
	*/
	public static var icHdrIlluminant(default, null) : Int;
	
	/**
	* ICC Profile Header Location: profile creator.
	*/
	public static var icHdrCreator(default, null) : Int;
	
	/**
	* ICC Profile Header Location: profile's ID.
	* @since 1.5
	*/
	@:require(java5) public static var icHdrProfileID(default, null) : Int;
	
	/**
	* ICC Profile Constant: tag type signaturE.
	*/
	public static var icTagType(default, null) : Int;
	
	/**
	* ICC Profile Constant: reserved.
	*/
	public static var icTagReserved(default, null) : Int;
	
	/**
	* ICC Profile Constant: curveType count.
	*/
	public static var icCurveCount(default, null) : Int;
	
	/**
	* ICC Profile Constant: curveType data.
	*/
	public static var icCurveData(default, null) : Int;
	
	/**
	* ICC Profile Constant: XYZNumber X.
	*/
	public static var icXYZNumberX(default, null) : Int;
	
	/**
	* Frees the resources associated with an ICC_Profile object.
	*/
	@:overload private function finalize() : Void;
	
	/**
	* Constructs an ICC_Profile object corresponding to the data in
	* a byte array.  Throws an IllegalArgumentException if the data
	* does not correspond to a valid ICC Profile.
	* @param data the specified ICC Profile data
	* @return an <code>ICC_Profile</code> object corresponding to
	*          the data in the specified <code>data</code> array.
	*/
	@:overload public static function getInstance(data : java.NativeArray<java.StdTypes.Int8>) : java.awt.color.ICC_Profile;
	
	/**
	* Constructs an ICC_Profile corresponding to one of the specific color
	* spaces defined by the ColorSpace class (for example CS_sRGB).
	* Throws an IllegalArgumentException if cspace is not one of the
	* defined color spaces.
	*
	* @param cspace the type of color space to create a profile for.
	* The specified type is one of the color
	* space constants defined in the  <CODE>ColorSpace</CODE> class.
	*
	* @return an <code>ICC_Profile</code> object corresponding to
	*          the specified <code>ColorSpace</code> type.
	* @exception IllegalArgumentException If <CODE>cspace</CODE> is not
	* one of the predefined color space types.
	*/
	@:overload public static function getInstance(cspace : Int) : java.awt.color.ICC_Profile;
	
	/**
	* Constructs an ICC_Profile corresponding to the data in a file.
	* fileName may be an absolute or a relative file specification.
	* Relative file names are looked for in several places: first, relative
	* to any directories specified by the java.iccprofile.path property;
	* second, relative to any directories specified by the java.class.path
	* property; finally, in a directory used to store profiles always
	* available, such as the profile for sRGB.  Built-in profiles use .pf as
	* the file name extension for profiles, e.g. sRGB.pf.
	* This method throws an IOException if the specified file cannot be
	* opened or if an I/O error occurs while reading the file.  It throws
	* an IllegalArgumentException if the file does not contain valid ICC
	* Profile data.
	* @param fileName The file that contains the data for the profile.
	*
	* @return an <code>ICC_Profile</code> object corresponding to
	*          the data in the specified file.
	* @exception IOException If the specified file cannot be opened or
	* an I/O error occurs while reading the file.
	*
	* @exception IllegalArgumentException If the file does not
	* contain valid ICC Profile data.
	*
	* @exception SecurityException If a security manager is installed
	* and it does not permit read access to the given file.
	*/
	@:overload public static function getInstance(fileName : String) : java.awt.color.ICC_Profile;
	
	/**
	* Constructs an ICC_Profile corresponding to the data in an InputStream.
	* This method throws an IllegalArgumentException if the stream does not
	* contain valid ICC Profile data.  It throws an IOException if an I/O
	* error occurs while reading the stream.
	* @param s The input stream from which to read the profile data.
	*
	* @return an <CODE>ICC_Profile</CODE> object corresponding to the
	*     data in the specified <code>InputStream</code>.
	*
	* @exception IOException If an I/O error occurs while reading the stream.
	*
	* @exception IllegalArgumentException If the stream does not
	* contain valid ICC Profile data.
	*/
	@:overload public static function getInstance(s : java.io.InputStream) : java.awt.color.ICC_Profile;
	
	/**
	* Returns profile major version.
	* @return  The major version of the profile.
	*/
	@:overload public function getMajorVersion() : Int;
	
	/**
	* Returns profile minor version.
	* @return The minor version of the profile.
	*/
	@:overload public function getMinorVersion() : Int;
	
	/**
	* Returns the profile class.
	* @return One of the predefined profile class constants.
	*/
	@:overload public function getProfileClass() : Int;
	
	/**
	* Returns the color space type.  Returns one of the color space type
	* constants defined by the ColorSpace class.  This is the
	* "input" color space of the profile.  The type defines the
	* number of components of the color space and the interpretation,
	* e.g. TYPE_RGB identifies a color space with three components - red,
	* green, and blue.  It does not define the particular color
	* characteristics of the space, e.g. the chromaticities of the
	* primaries.
	* @return One of the color space type constants defined in the
	* <CODE>ColorSpace</CODE> class.
	*/
	@:overload public function getColorSpaceType() : Int;
	
	/**
	* Returns the color space type of the Profile Connection Space (PCS).
	* Returns one of the color space type constants defined by the
	* ColorSpace class.  This is the "output" color space of the
	* profile.  For an input, display, or output profile useful
	* for tagging colors or images, this will be either TYPE_XYZ or
	* TYPE_Lab and should be interpreted as the corresponding specific
	* color space defined in the ICC specification.  For a device
	* link profile, this could be any of the color space type constants.
	* @return One of the color space type constants defined in the
	* <CODE>ColorSpace</CODE> class.
	*/
	@:overload public function getPCSType() : Int;
	
	/**
	* Write this ICC_Profile to a file.
	*
	* @param fileName The file to write the profile data to.
	*
	* @exception IOException If the file cannot be opened for writing
	* or an I/O error occurs while writing to the file.
	*/
	@:overload public function write(fileName : String) : Void;
	
	/**
	* Write this ICC_Profile to an OutputStream.
	*
	* @param s The stream to write the profile data to.
	*
	* @exception IOException If an I/O error occurs while writing to the
	* stream.
	*/
	@:overload public function write(s : java.io.OutputStream) : Void;
	
	/**
	* Returns a byte array corresponding to the data of this ICC_Profile.
	* @return A byte array that contains the profile data.
	* @see #setData(int, byte[])
	*/
	@:overload public function getData() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns a particular tagged data element from the profile as
	* a byte array.  Elements are identified by signatures
	* as defined in the ICC specification.  The signature
	* icSigHead can be used to get the header.  This method is useful
	* for advanced applets or applications which need to access
	* profile data directly.
	*
	* @param tagSignature The ICC tag signature for the data element you
	* want to get.
	*
	* @return A byte array that contains the tagged data element. Returns
	* <code>null</code> if the specified tag doesn't exist.
	* @see #setData(int, byte[])
	*/
	@:overload public function getData(tagSignature : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Sets a particular tagged data element in the profile from
	* a byte array. The array should contain data in a format, corresponded
	* to the {@code tagSignature} as defined in the ICC specification, section 10.
	* This method is useful for advanced applets or applications which need to
	* access profile data directly.
	*
	* @param tagSignature The ICC tag signature for the data element
	* you want to set.
	* @param tagData the data to set for the specified tag signature
	* @throws IllegalArgumentException if {@code tagSignature} is not a signature
	*         as defined in the ICC specification.
	* @throws IllegalArgumentException if a content of the {@code tagData}
	*         array can not be interpreted as valid tag data, corresponding
	*         to the {@code tagSignature}.
	* @see #getData
	*/
	@:overload public function setData(tagSignature : Int, tagData : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Returns the number of color components in the "input" color
	* space of this profile.  For example if the color space type
	* of this profile is TYPE_RGB, then this method will return 3.
	*
	* @return The number of color components in the profile's input
	* color space.
	*
	* @throws ProfileDataException if color space is in the profile
	*         is invalid
	*/
	@:overload public function getNumComponents() : Int;
	
	/**
	* Resolves instances being deserialized into instances registered
	* with CMM.
	* @return ICC_Profile object for profile registered with CMM.
	* @throws ObjectStreamException
	*     never thrown, but mandated by the serialization spec.
	* @since 1.3
	*/
	@:require(java3) @:overload private function readResolve() : Dynamic;
	
	
}
