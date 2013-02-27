package java.awt.image;
/*
* Copyright (c) 1995, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class ColorModel implements java.awt.Transparency
{
	/**
	* The total number of bits in the pixel.
	*/
	private var pixel_bits : Int;
	
	/**
	* Data type of the array used to represent pixel values.
	*/
	private var transferType : Int;
	
	/**
	* Returns a <code>DirectColorModel</code> that describes the default
	* format for integer RGB values used in many of the methods in the
	* AWT image interfaces for the convenience of the programmer.
	* The color space is the default {@link ColorSpace}, sRGB.
	* The format for the RGB values is an integer with 8 bits
	* each of alpha, red, green, and blue color components ordered
	* correspondingly from the most significant byte to the least
	* significant byte, as in:  0xAARRGGBB.  Color components are
	* not premultiplied by the alpha component.  This format does not
	* necessarily represent the native or the most efficient
	* <code>ColorModel</code> for a particular device or for all images.
	* It is merely used as a common color model format.
	* @return a <code>DirectColorModel</code>object describing default
	*          RGB values.
	*/
	@:overload public static function getRGBdefault() : ColorModel;
	
	/**
	* Constructs a <code>ColorModel</code> that translates pixels of the
	* specified number of bits to color/alpha components.  The color
	* space is the default RGB <code>ColorSpace</code>, which is sRGB.
	* Pixel values are assumed to include alpha information.  If color
	* and alpha information are represented in the pixel value as
	* separate spatial bands, the color bands are assumed not to be
	* premultiplied with the alpha value. The transparency type is
	* java.awt.Transparency.TRANSLUCENT.  The transfer type will be the
	* smallest of DataBuffer.TYPE_BYTE, DataBuffer.TYPE_USHORT,
	* or DataBuffer.TYPE_INT that can hold a single pixel
	* (or DataBuffer.TYPE_UNDEFINED if bits is greater
	* than 32).  Since this constructor has no information about the
	* number of bits per color and alpha component, any subclass calling
	* this constructor should override any method that requires this
	* information.
	* @param bits the number of bits of a pixel
	* @throws IllegalArgumentException if the number
	*          of bits in <code>bits</code> is less than 1
	*/
	@:overload public function new(bits : Int) : Void;
	
	/**
	* Constructs a <code>ColorModel</code> that translates pixel values
	* to color/alpha components.  Color components will be in the
	* specified <code>ColorSpace</code>. <code>pixel_bits</code> is the
	* number of bits in the pixel values.  The bits array
	* specifies the number of significant bits per color and alpha component.
	* Its length should be the number of components in the
	* <code>ColorSpace</code> if there is no alpha information in the
	* pixel values, or one more than this number if there is alpha
	* information.  <code>hasAlpha</code> indicates whether or not alpha
	* information is present.  The <code>boolean</code>
	* <code>isAlphaPremultiplied</code> specifies how to interpret pixel
	* values in which color and alpha information are represented as
	* separate spatial bands.  If the <code>boolean</code>
	* is <code>true</code>, color samples are assumed to have been
	* multiplied by the alpha sample.  The <code>transparency</code>
	* specifies what alpha values can be represented by this color model.
	* The transfer type is the type of primitive array used to represent
	* pixel values.  Note that the bits array contains the number of
	* significant bits per color/alpha component after the translation
	* from pixel values.  For example, for an
	* <code>IndexColorModel</code> with <code>pixel_bits</code> equal to
	* 16, the bits array might have four elements with each element set
	* to 8.
	* @param pixel_bits the number of bits in the pixel values
	* @param bits array that specifies the number of significant bits
	*          per color and alpha component
	* @param cspace the specified <code>ColorSpace</code>
	* @param hasAlpha <code>true</code> if alpha information is present;
	*          <code>false</code> otherwise
	* @param isAlphaPremultiplied <code>true</code> if color samples are
	*          assumed to be premultiplied by the alpha samples;
	*          <code>false</code> otherwise
	* @param transparency what alpha values can be represented by this
	*          color model
	* @param transferType the type of the array used to represent pixel
	*          values
	* @throws IllegalArgumentException if the length of
	*          the bit array is less than the number of color or alpha
	*          components in this <code>ColorModel</code>, or if the
	*          transparency is not a valid value.
	* @throws IllegalArgumentException if the sum of the number
	*          of bits in <code>bits</code> is less than 1 or if
	*          any of the elements in <code>bits</code> is less than 0.
	* @see java.awt.Transparency
	*/
	@:overload private function new(pixel_bits : Int, bits : java.NativeArray<Int>, cspace : java.awt.color.ColorSpace, hasAlpha : Bool, isAlphaPremultiplied : Bool, transparency : Int, transferType : Int) : Void;
	
	/**
	* Returns whether or not alpha is supported in this
	* <code>ColorModel</code>.
	* @return <code>true</code> if alpha is supported in this
	* <code>ColorModel</code>; <code>false</code> otherwise.
	*/
	@:overload @:final public function hasAlpha() : Bool;
	
	/**
	* Returns whether or not the alpha has been premultiplied in the
	* pixel values to be translated by this <code>ColorModel</code>.
	* If the boolean is <code>true</code>, this <code>ColorModel</code>
	* is to be used to interpret pixel values in which color and alpha
	* information are represented as separate spatial bands, and color
	* samples are assumed to have been multiplied by the
	* alpha sample.
	* @return <code>true</code> if the alpha values are premultiplied
	*          in the pixel values to be translated by this
	*          <code>ColorModel</code>; <code>false</code> otherwise.
	*/
	@:overload @:final public function isAlphaPremultiplied() : Bool;
	
	/**
	* Returns the transfer type of this <code>ColorModel</code>.
	* The transfer type is the type of primitive array used to represent
	* pixel values as arrays.
	* @return the transfer type.
	* @since 1.3
	*/
	@:require(java3) @:overload @:final public function getTransferType() : Int;
	
	/**
	* Returns the number of bits per pixel described by this
	* <code>ColorModel</code>.
	* @return the number of bits per pixel.
	*/
	@:overload public function getPixelSize() : Int;
	
	/**
	* Returns the number of bits for the specified color/alpha component.
	* Color components are indexed in the order specified by the
	* <code>ColorSpace</code>.  Typically, this order reflects the name
	* of the color space type. For example, for TYPE_RGB, index 0
	* corresponds to red, index 1 to green, and index 2
	* to blue.  If this <code>ColorModel</code> supports alpha, the alpha
	* component corresponds to the index following the last color
	* component.
	* @param componentIdx the index of the color/alpha component
	* @return the number of bits for the color/alpha component at the
	*          specified index.
	* @throws ArrayIndexOutOfBoundsException if <code>componentIdx</code>
	*         is greater than the number of components or
	*         less than zero
	* @throws NullPointerException if the number of bits array is
	*         <code>null</code>
	*/
	@:overload public function getComponentSize(componentIdx : Int) : Int;
	
	/**
	* Returns an array of the number of bits per color/alpha component.
	* The array contains the color components in the order specified by the
	* <code>ColorSpace</code>, followed by the alpha component, if
	* present.
	* @return an array of the number of bits per color/alpha component
	*/
	@:overload public function getComponentSize() : java.NativeArray<Int>;
	
	/**
	* Returns the transparency.  Returns either OPAQUE, BITMASK,
	* or TRANSLUCENT.
	* @return the transparency of this <code>ColorModel</code>.
	* @see Transparency#OPAQUE
	* @see Transparency#BITMASK
	* @see Transparency#TRANSLUCENT
	*/
	@:overload public function getTransparency() : Int;
	
	/**
	* Returns the number of components, including alpha, in this
	* <code>ColorModel</code>.  This is equal to the number of color
	* components, optionally plus one, if there is an alpha component.
	* @return the number of components in this <code>ColorModel</code>
	*/
	@:overload public function getNumComponents() : Int;
	
	/**
	* Returns the number of color components in this
	* <code>ColorModel</code>.
	* This is the number of components returned by
	* {@link ColorSpace#getNumComponents}.
	* @return the number of color components in this
	* <code>ColorModel</code>.
	* @see ColorSpace#getNumComponents
	*/
	@:overload public function getNumColorComponents() : Int;
	
	/**
	* Returns the red color component for the specified pixel, scaled
	* from 0 to 255 in the default RGB ColorSpace, sRGB.  A color conversion
	* is done if necessary.  The pixel value is specified as an int.
	* An <code>IllegalArgumentException</code> is thrown if pixel
	* values for this <code>ColorModel</code> are not conveniently
	* representable as a single int.  The returned value is not a
	* pre-multiplied value.  For example, if the
	* alpha is premultiplied, this method divides it out before returning
	* the value.  If the alpha value is 0, the red value is 0.
	* @param pixel a specified pixel
	* @return the value of the red component of the specified pixel.
	*/
	@:overload @:abstract public function getRed(pixel : Int) : Int;
	
	/**
	* Returns the green color component for the specified pixel, scaled
	* from 0 to 255 in the default RGB ColorSpace, sRGB.  A color conversion
	* is done if necessary.  The pixel value is specified as an int.
	* An <code>IllegalArgumentException</code> is thrown if pixel
	* values for this <code>ColorModel</code> are not conveniently
	* representable as a single int.  The returned value is a non
	* pre-multiplied value.  For example, if the alpha is premultiplied,
	* this method divides it out before returning
	* the value.  If the alpha value is 0, the green value is 0.
	* @param pixel the specified pixel
	* @return the value of the green component of the specified pixel.
	*/
	@:overload @:abstract public function getGreen(pixel : Int) : Int;
	
	/**
	* Returns the blue color component for the specified pixel, scaled
	* from 0 to 255 in the default RGB ColorSpace, sRGB.  A color conversion
	* is done if necessary.  The pixel value is specified as an int.
	* An <code>IllegalArgumentException</code> is thrown if pixel values
	* for this <code>ColorModel</code> are not conveniently representable
	* as a single int.  The returned value is a non pre-multiplied
	* value, for example, if the alpha is premultiplied, this method
	* divides it out before returning the value.  If the alpha value is
	* 0, the blue value is 0.
	* @param pixel the specified pixel
	* @return the value of the blue component of the specified pixel.
	*/
	@:overload @:abstract public function getBlue(pixel : Int) : Int;
	
	/**
	* Returns the alpha component for the specified pixel, scaled
	* from 0 to 255.  The pixel value is specified as an int.
	* An <code>IllegalArgumentException</code> is thrown if pixel
	* values for this <code>ColorModel</code> are not conveniently
	* representable as a single int.
	* @param pixel the specified pixel
	* @return the value of alpha component of the specified pixel.
	*/
	@:overload @:abstract public function getAlpha(pixel : Int) : Int;
	
	/**
	* Returns the color/alpha components of the pixel in the default
	* RGB color model format.  A color conversion is done if necessary.
	* The pixel value is specified as an int.
	* An <code>IllegalArgumentException</code> thrown if pixel values
	* for this <code>ColorModel</code> are not conveniently representable
	* as a single int.  The returned value is in a non
	* pre-multiplied format. For example, if the alpha is premultiplied,
	* this method divides it out of the color components.  If the alpha
	* value is 0, the color values are 0.
	* @param pixel the specified pixel
	* @return the RGB value of the color/alpha components of the
	*          specified pixel.
	* @see ColorModel#getRGBdefault
	*/
	@:overload public function getRGB(pixel : Int) : Int;
	
	/**
	* Returns the red color component for the specified pixel, scaled
	* from 0 to 255 in the default RGB <code>ColorSpace</code>, sRGB.  A
	* color conversion is done if necessary.  The pixel value is
	* specified by an array of data elements of type transferType passed
	* in as an object reference.  The returned value is a non
	* pre-multiplied value.  For example, if alpha is premultiplied,
	* this method divides it out before returning
	* the value.  If the alpha value is 0, the red value is 0.
	* If <code>inData</code> is not a primitive array of type
	* transferType, a <code>ClassCastException</code> is thrown.  An
	* <code>ArrayIndexOutOfBoundsException</code> is thrown if
	* <code>inData</code> is not large enough to hold a pixel value for
	* this <code>ColorModel</code>.
	* If this <code>transferType</code> is not supported, a
	* <code>UnsupportedOperationException</code> will be
	* thrown.  Since
	* <code>ColorModel</code> is an abstract class, any instance
	* must be an instance of a subclass.  Subclasses inherit the
	* implementation of this method and if they don't override it, this
	* method throws an exception if the subclass uses a
	* <code>transferType</code> other than
	* <code>DataBuffer.TYPE_BYTE</code>,
	* <code>DataBuffer.TYPE_USHORT</code>, or
	* <code>DataBuffer.TYPE_INT</code>.
	* @param inData an array of pixel values
	* @return the value of the red component of the specified pixel.
	* @throws ClassCastException if <code>inData</code>
	*  is not a primitive array of type <code>transferType</code>
	* @throws ArrayIndexOutOfBoundsException if
	*  <code>inData</code> is not large enough to hold a pixel value
	*  for this <code>ColorModel</code>
	* @throws UnsupportedOperationException if this
	*  <code>tranferType</code> is not supported by this
	*  <code>ColorModel</code>
	*/
	@:overload public function getRed(inData : Dynamic) : Int;
	
	/**
	* Returns the green color component for the specified pixel, scaled
	* from 0 to 255 in the default RGB <code>ColorSpace</code>, sRGB.  A
	* color conversion is done if necessary.  The pixel value is
	* specified by an array of data elements of type transferType passed
	* in as an object reference.  The returned value will be a non
	* pre-multiplied value.  For example, if the alpha is premultiplied,
	* this method divides it out before returning the value.  If the
	* alpha value is 0, the green value is 0.  If <code>inData</code> is
	* not a primitive array of type transferType, a
	* <code>ClassCastException</code> is thrown.  An
	* <code>ArrayIndexOutOfBoundsException</code> is thrown if
	* <code>inData</code> is not large enough to hold a pixel value for
	* this <code>ColorModel</code>.
	* If this <code>transferType</code> is not supported, a
	* <code>UnsupportedOperationException</code> will be
	* thrown.  Since
	* <code>ColorModel</code> is an abstract class, any instance
	* must be an instance of a subclass.  Subclasses inherit the
	* implementation of this method and if they don't override it, this
	* method throws an exception if the subclass uses a
	* <code>transferType</code> other than
	* <code>DataBuffer.TYPE_BYTE</code>,
	* <code>DataBuffer.TYPE_USHORT</code>, or
	* <code>DataBuffer.TYPE_INT</code>.
	* @param inData an array of pixel values
	* @return the value of the green component of the specified pixel.
	* @throws <code>ClassCastException</code> if <code>inData</code>
	*  is not a primitive array of type <code>transferType</code>
	* @throws <code>ArrayIndexOutOfBoundsException</code> if
	*  <code>inData</code> is not large enough to hold a pixel value
	*  for this <code>ColorModel</code>
	* @throws <code>UnsupportedOperationException</code> if this
	*  <code>tranferType</code> is not supported by this
	*  <code>ColorModel</code>
	*/
	@:overload public function getGreen(inData : Dynamic) : Int;
	
	/**
	* Returns the blue color component for the specified pixel, scaled
	* from 0 to 255 in the default RGB <code>ColorSpace</code>, sRGB.  A
	* color conversion is done if necessary.  The pixel value is
	* specified by an array of data elements of type transferType passed
	* in as an object reference.  The returned value is a non
	* pre-multiplied value.  For example, if the alpha is premultiplied,
	* this method divides it out before returning the value.  If the
	* alpha value is 0, the blue value will be 0.  If
	* <code>inData</code> is not a primitive array of type transferType,
	* a <code>ClassCastException</code> is thrown.  An
	* <code>ArrayIndexOutOfBoundsException</code> is
	* thrown if <code>inData</code> is not large enough to hold a pixel
	* value for this <code>ColorModel</code>.
	* If this <code>transferType</code> is not supported, a
	* <code>UnsupportedOperationException</code> will be
	* thrown.  Since
	* <code>ColorModel</code> is an abstract class, any instance
	* must be an instance of a subclass.  Subclasses inherit the
	* implementation of this method and if they don't override it, this
	* method throws an exception if the subclass uses a
	* <code>transferType</code> other than
	* <code>DataBuffer.TYPE_BYTE</code>,
	* <code>DataBuffer.TYPE_USHORT</code>, or
	* <code>DataBuffer.TYPE_INT</code>.
	* @param inData an array of pixel values
	* @return the value of the blue component of the specified pixel.
	* @throws ClassCastException if <code>inData</code>
	*  is not a primitive array of type <code>transferType</code>
	* @throws ArrayIndexOutOfBoundsException if
	*  <code>inData</code> is not large enough to hold a pixel value
	*  for this <code>ColorModel</code>
	* @throws UnsupportedOperationException if this
	*  <code>tranferType</code> is not supported by this
	*  <code>ColorModel</code>
	*/
	@:overload public function getBlue(inData : Dynamic) : Int;
	
	/**
	* Returns the alpha component for the specified pixel, scaled
	* from 0 to 255.  The pixel value is specified by an array of data
	* elements of type transferType passed in as an object reference.
	* If inData is not a primitive array of type transferType, a
	* <code>ClassCastException</code> is thrown.  An
	* <code>ArrayIndexOutOfBoundsException</code> is thrown if
	* <code>inData</code> is not large enough to hold a pixel value for
	* this <code>ColorModel</code>.
	* If this <code>transferType</code> is not supported, a
	* <code>UnsupportedOperationException</code> will be
	* thrown.  Since
	* <code>ColorModel</code> is an abstract class, any instance
	* must be an instance of a subclass.  Subclasses inherit the
	* implementation of this method and if they don't override it, this
	* method throws an exception if the subclass uses a
	* <code>transferType</code> other than
	* <code>DataBuffer.TYPE_BYTE</code>,
	* <code>DataBuffer.TYPE_USHORT</code>, or
	* <code>DataBuffer.TYPE_INT</code>.
	* @param inData the specified pixel
	* @return the alpha component of the specified pixel, scaled from
	* 0 to 255.
	* @throws ClassCastException if <code>inData</code>
	*  is not a primitive array of type <code>transferType</code>
	* @throws ArrayIndexOutOfBoundsException if
	*  <code>inData</code> is not large enough to hold a pixel value
	*  for this <code>ColorModel</code>
	* @throws UnsupportedOperationException if this
	*  <code>tranferType</code> is not supported by this
	*  <code>ColorModel</code>
	*/
	@:overload public function getAlpha(inData : Dynamic) : Int;
	
	/**
	* Returns the color/alpha components for the specified pixel in the
	* default RGB color model format.  A color conversion is done if
	* necessary.  The pixel value is specified by an array of data
	* elements of type transferType passed in as an object reference.
	* If inData is not a primitive array of type transferType, a
	* <code>ClassCastException</code> is thrown.  An
	* <code>ArrayIndexOutOfBoundsException</code> is
	* thrown if <code>inData</code> is not large enough to hold a pixel
	* value for this <code>ColorModel</code>.
	* The returned value will be in a non pre-multiplied format, i.e. if
	* the alpha is premultiplied, this method will divide it out of the
	* color components (if the alpha value is 0, the color values will be 0).
	* @param inData the specified pixel
	* @return the color and alpha components of the specified pixel.
	* @see ColorModel#getRGBdefault
	*/
	@:overload public function getRGB(inData : Dynamic) : Int;
	
	/**
	* Returns a data element array representation of a pixel in this
	* <code>ColorModel</code>, given an integer pixel representation in
	* the default RGB color model.
	* This array can then be passed to the
	* {@link WritableRaster#setDataElements} method of
	* a {@link WritableRaster} object.  If the pixel variable is
	* <code>null</code>, a new array will be allocated.  If
	* <code>pixel</code> is not
	* <code>null</code>, it must be a primitive array of type
	* <code>transferType</code>; otherwise, a
	* <code>ClassCastException</code> is thrown.  An
	* <code>ArrayIndexOutOfBoundsException</code> is thrown if
	* <code>pixel</code> is
	* not large enough to hold a pixel value for this
	* <code>ColorModel</code>. The pixel array is returned.
	* If this <code>transferType</code> is not supported, a
	* <code>UnsupportedOperationException</code> will be
	* thrown.  Since <code>ColorModel</code> is an abstract class,
	* any instance is an instance of a subclass.  Subclasses must
	* override this method since the implementation in this abstract
	* class throws an <code>UnsupportedOperationException</code>.
	* @param rgb the integer pixel representation in the default RGB
	* color model
	* @param pixel the specified pixel
	* @return an array representation of the specified pixel in this
	*  <code>ColorModel</code>.
	* @throws ClassCastException if <code>pixel</code>
	*  is not a primitive array of type <code>transferType</code>
	* @throws ArrayIndexOutOfBoundsException if
	*  <code>pixel</code> is not large enough to hold a pixel value
	*  for this <code>ColorModel</code>
	* @throws UnsupportedOperationException if this
	*  method is not supported by this <code>ColorModel</code>
	* @see WritableRaster#setDataElements
	* @see SampleModel#setDataElements
	*/
	@:overload public function getDataElements(rgb : Int, pixel : Dynamic) : Dynamic;
	
	/**
	* Returns an array of unnormalized color/alpha components given a pixel
	* in this <code>ColorModel</code>.  The pixel value is specified as
	* an <code>int</code>.  An <code>IllegalArgumentException</code>
	* will be thrown if pixel values for this <code>ColorModel</code> are
	* not conveniently representable as a single <code>int</code> or if
	* color component values for this <code>ColorModel</code> are not
	* conveniently representable in the unnormalized form.
	* For example, this method can be used to retrieve the
	* components for a specific pixel value in a
	* <code>DirectColorModel</code>.  If the components array is
	* <code>null</code>, a new array will be allocated.  The
	* components array will be returned.  Color/alpha components are
	* stored in the components array starting at <code>offset</code>
	* (even if the array is allocated by this method).  An
	* <code>ArrayIndexOutOfBoundsException</code> is thrown if  the
	* components array is not <code>null</code> and is not large
	* enough to hold all the color and alpha components (starting at offset).
	* Since <code>ColorModel</code> is an abstract class,
	* any instance is an instance of a subclass.  Subclasses must
	* override this method since the implementation in this abstract
	* class throws an <code>UnsupportedOperationException</code>.
	* @param pixel the specified pixel
	* @param components the array to receive the color and alpha
	* components of the specified pixel
	* @param offset the offset into the <code>components</code> array at
	* which to start storing the color and alpha components
	* @return an array containing the color and alpha components of the
	* specified pixel starting at the specified offset.
	* @throws UnsupportedOperationException if this
	*          method is not supported by this <code>ColorModel</code>
	*/
	@:overload public function getComponents(pixel : Int, components : java.NativeArray<Int>, offset : Int) : java.NativeArray<Int>;
	
	/**
	* Returns an array of unnormalized color/alpha components given a pixel
	* in this <code>ColorModel</code>.  The pixel value is specified by
	* an array of data elements of type transferType passed in as an
	* object reference.  If <code>pixel</code> is not a primitive array
	* of type transferType, a <code>ClassCastException</code> is thrown.
	* An <code>IllegalArgumentException</code> will be thrown if color
	* component values for this <code>ColorModel</code> are not
	* conveniently representable in the unnormalized form.
	* An <code>ArrayIndexOutOfBoundsException</code> is
	* thrown if <code>pixel</code> is not large enough to hold a pixel
	* value for this <code>ColorModel</code>.
	* This method can be used to retrieve the components for a specific
	* pixel value in any <code>ColorModel</code>.  If the components
	* array is <code>null</code>, a new array will be allocated.  The
	* components array will be returned.  Color/alpha components are
	* stored in the <code>components</code> array starting at
	* <code>offset</code> (even if the array is allocated by this
	* method).  An <code>ArrayIndexOutOfBoundsException</code>
	* is thrown if  the components array is not <code>null</code> and is
	* not large enough to hold all the color and alpha components
	* (starting at <code>offset</code>).
	* Since <code>ColorModel</code> is an abstract class,
	* any instance is an instance of a subclass.  Subclasses must
	* override this method since the implementation in this abstract
	* class throws an <code>UnsupportedOperationException</code>.
	* @param pixel the specified pixel
	* @param components an array that receives the color and alpha
	* components of the specified pixel
	* @param offset the index into the <code>components</code> array at
	* which to begin storing the color and alpha components of the
	* specified pixel
	* @return an array containing the color and alpha components of the
	* specified pixel starting at the specified offset.
	* @throws UnsupportedOperationException if this
	*          method is not supported by this <code>ColorModel</code>
	*/
	@:overload public function getComponents(pixel : Dynamic, components : java.NativeArray<Int>, offset : Int) : java.NativeArray<Int>;
	
	/**
	* Returns an array of all of the color/alpha components in unnormalized
	* form, given a normalized component array.  Unnormalized components
	* are unsigned integral values between 0 and 2<sup>n</sup> - 1, where
	* n is the number of bits for a particular component.  Normalized
	* components are float values between a per component minimum and
	* maximum specified by the <code>ColorSpace</code> object for this
	* <code>ColorModel</code>.  An <code>IllegalArgumentException</code>
	* will be thrown if color component values for this
	* <code>ColorModel</code> are not conveniently representable in the
	* unnormalized form.  If the
	* <code>components</code> array is <code>null</code>, a new array
	* will be allocated.  The <code>components</code> array will
	* be returned.  Color/alpha components are stored in the
	* <code>components</code> array starting at <code>offset</code> (even
	* if the array is allocated by this method). An
	* <code>ArrayIndexOutOfBoundsException</code> is thrown if the
	* <code>components</code> array is not <code>null</code> and is not
	* large enough to hold all the color and alpha
	* components (starting at <code>offset</code>).  An
	* <code>IllegalArgumentException</code> is thrown if the
	* <code>normComponents</code> array is not large enough to hold
	* all the color and alpha components starting at
	* <code>normOffset</code>.
	* @param normComponents an array containing normalized components
	* @param normOffset the offset into the <code>normComponents</code>
	* array at which to start retrieving normalized components
	* @param components an array that receives the components from
	* <code>normComponents</code>
	* @param offset the index into <code>components</code> at which to
	* begin storing normalized components from
	* <code>normComponents</code>
	* @return an array containing unnormalized color and alpha
	* components.
	* @throws IllegalArgumentException If the component values for this
	* <CODE>ColorModel</CODE> are not conveniently representable in the
	* unnormalized form.
	* @throws IllegalArgumentException if the length of
	*          <code>normComponents</code> minus <code>normOffset</code>
	*          is less than <code>numComponents</code>
	* @throws UnsupportedOperationException if the
	*          constructor of this <code>ColorModel</code> called the
	*          <code>super(bits)</code> constructor, but did not
	*          override this method.  See the constructor,
	*          {@link #ColorModel(int)}.
	*/
	@:overload public function getUnnormalizedComponents(normComponents : java.NativeArray<Single>, normOffset : Int, components : java.NativeArray<Int>, offset : Int) : java.NativeArray<Int>;
	
	/**
	* Returns an array of all of the color/alpha components in normalized
	* form, given an unnormalized component array.  Unnormalized components
	* are unsigned integral values between 0 and 2<sup>n</sup> - 1, where
	* n is the number of bits for a particular component.  Normalized
	* components are float values between a per component minimum and
	* maximum specified by the <code>ColorSpace</code> object for this
	* <code>ColorModel</code>.  An <code>IllegalArgumentException</code>
	* will be thrown if color component values for this
	* <code>ColorModel</code> are not conveniently representable in the
	* unnormalized form.  If the
	* <code>normComponents</code> array is <code>null</code>, a new array
	* will be allocated.  The <code>normComponents</code> array
	* will be returned.  Color/alpha components are stored in the
	* <code>normComponents</code> array starting at
	* <code>normOffset</code> (even if the array is allocated by this
	* method).  An <code>ArrayIndexOutOfBoundsException</code> is thrown
	* if the <code>normComponents</code> array is not <code>null</code>
	* and is not large enough to hold all the color and alpha components
	* (starting at <code>normOffset</code>).  An
	* <code>IllegalArgumentException</code> is thrown if the
	* <code>components</code> array is not large enough to hold all the
	* color and alpha components starting at <code>offset</code>.
	* <p>
	* Since <code>ColorModel</code> is an abstract class,
	* any instance is an instance of a subclass.  The default implementation
	* of this method in this abstract class assumes that component values
	* for this class are conveniently representable in the unnormalized
	* form.  Therefore, subclasses which may
	* have instances which do not support the unnormalized form must
	* override this method.
	* @param components an array containing unnormalized components
	* @param offset the offset into the <code>components</code> array at
	* which to start retrieving unnormalized components
	* @param normComponents an array that receives the normalized components
	* @param normOffset the index into <code>normComponents</code> at
	* which to begin storing normalized components
	* @return an array containing normalized color and alpha
	* components.
	* @throws IllegalArgumentException If the component values for this
	* <CODE>ColorModel</CODE> are not conveniently representable in the
	* unnormalized form.
	* @throws UnsupportedOperationException if the
	*          constructor of this <code>ColorModel</code> called the
	*          <code>super(bits)</code> constructor, but did not
	*          override this method.  See the constructor,
	*          {@link #ColorModel(int)}.
	* @throws UnsupportedOperationException if this method is unable
	*          to determine the number of bits per component
	*/
	@:overload public function getNormalizedComponents(components : java.NativeArray<Int>, offset : Int, normComponents : java.NativeArray<Single>, normOffset : Int) : java.NativeArray<Single>;
	
	/**
	* Returns a pixel value represented as an <code>int</code> in this
	* <code>ColorModel</code>, given an array of unnormalized color/alpha
	* components.  This method will throw an
	* <code>IllegalArgumentException</code> if component values for this
	* <code>ColorModel</code> are not conveniently representable as a
	* single <code>int</code> or if color component values for this
	* <code>ColorModel</code> are not conveniently representable in the
	* unnormalized form.  An
	* <code>ArrayIndexOutOfBoundsException</code> is thrown if  the
	* <code>components</code> array is not large enough to hold all the
	* color and alpha components (starting at <code>offset</code>).
	* Since <code>ColorModel</code> is an abstract class,
	* any instance is an instance of a subclass.  Subclasses must
	* override this method since the implementation in this abstract
	* class throws an <code>UnsupportedOperationException</code>.
	* @param components an array of unnormalized color and alpha
	* components
	* @param offset the index into <code>components</code> at which to
	* begin retrieving the color and alpha components
	* @return an <code>int</code> pixel value in this
	* <code>ColorModel</code> corresponding to the specified components.
	* @throws IllegalArgumentException if
	*  pixel values for this <code>ColorModel</code> are not
	*  conveniently representable as a single <code>int</code>
	* @throws IllegalArgumentException if
	*  component values for this <code>ColorModel</code> are not
	*  conveniently representable in the unnormalized form
	* @throws ArrayIndexOutOfBoundsException if
	*  the <code>components</code> array is not large enough to
	*  hold all of the color and alpha components starting at
	*  <code>offset</code>
	* @throws UnsupportedOperationException if this
	*  method is not supported by this <code>ColorModel</code>
	*/
	@:overload public function getDataElement(components : java.NativeArray<Int>, offset : Int) : Int;
	
	/**
	* Returns a data element array representation of a pixel in this
	* <code>ColorModel</code>, given an array of unnormalized color/alpha
	* components.  This array can then be passed to the
	* <code>setDataElements</code> method of a <code>WritableRaster</code>
	* object.  This method will throw an <code>IllegalArgumentException</code>
	* if color component values for this <code>ColorModel</code> are not
	* conveniently representable in the unnormalized form.
	* An <code>ArrayIndexOutOfBoundsException</code> is thrown
	* if the <code>components</code> array is not large enough to hold
	* all the color and alpha components (starting at
	* <code>offset</code>).  If the <code>obj</code> variable is
	* <code>null</code>, a new array will be allocated.  If
	* <code>obj</code> is not <code>null</code>, it must be a primitive
	* array of type transferType; otherwise, a
	* <code>ClassCastException</code> is thrown.  An
	* <code>ArrayIndexOutOfBoundsException</code> is thrown if
	* <code>obj</code> is not large enough to hold a pixel value for this
	* <code>ColorModel</code>.
	* Since <code>ColorModel</code> is an abstract class,
	* any instance is an instance of a subclass.  Subclasses must
	* override this method since the implementation in this abstract
	* class throws an <code>UnsupportedOperationException</code>.
	* @param components an array of unnormalized color and alpha
	* components
	* @param offset the index into <code>components</code> at which to
	* begin retrieving color and alpha components
	* @param obj the <code>Object</code> representing an array of color
	* and alpha components
	* @return an <code>Object</code> representing an array of color and
	* alpha components.
	* @throws ClassCastException if <code>obj</code>
	*  is not a primitive array of type <code>transferType</code>
	* @throws ArrayIndexOutOfBoundsException if
	*  <code>obj</code> is not large enough to hold a pixel value
	*  for this <code>ColorModel</code> or the <code>components</code>
	*  array is not large enough to hold all of the color and alpha
	*  components starting at <code>offset</code>
	* @throws IllegalArgumentException if
	*  component values for this <code>ColorModel</code> are not
	*  conveniently representable in the unnormalized form
	* @throws UnsupportedOperationException if this
	*  method is not supported by this <code>ColorModel</code>
	* @see WritableRaster#setDataElements
	* @see SampleModel#setDataElements
	*/
	@:overload public function getDataElements(components : java.NativeArray<Int>, offset : Int, obj : Dynamic) : Dynamic;
	
	/**
	* Returns a pixel value represented as an <code>int</code> in this
	* <code>ColorModel</code>, given an array of normalized color/alpha
	* components.  This method will throw an
	* <code>IllegalArgumentException</code> if pixel values for this
	* <code>ColorModel</code> are not conveniently representable as a
	* single <code>int</code>.  An
	* <code>ArrayIndexOutOfBoundsException</code> is thrown if  the
	* <code>normComponents</code> array is not large enough to hold all the
	* color and alpha components (starting at <code>normOffset</code>).
	* Since <code>ColorModel</code> is an abstract class,
	* any instance is an instance of a subclass.  The default implementation
	* of this method in this abstract class first converts from the
	* normalized form to the unnormalized form and then calls
	* <code>getDataElement(int[], int)</code>.  Subclasses which may
	* have instances which do not support the unnormalized form must
	* override this method.
	* @param normComponents an array of normalized color and alpha
	* components
	* @param normOffset the index into <code>normComponents</code> at which to
	* begin retrieving the color and alpha components
	* @return an <code>int</code> pixel value in this
	* <code>ColorModel</code> corresponding to the specified components.
	* @throws IllegalArgumentException if
	*  pixel values for this <code>ColorModel</code> are not
	*  conveniently representable as a single <code>int</code>
	* @throws ArrayIndexOutOfBoundsException if
	*  the <code>normComponents</code> array is not large enough to
	*  hold all of the color and alpha components starting at
	*  <code>normOffset</code>
	* @since 1.4
	*/
	@:require(java4) @:overload public function getDataElement(normComponents : java.NativeArray<Single>, normOffset : Int) : Int;
	
	/**
	* Returns a data element array representation of a pixel in this
	* <code>ColorModel</code>, given an array of normalized color/alpha
	* components.  This array can then be passed to the
	* <code>setDataElements</code> method of a <code>WritableRaster</code>
	* object.  An <code>ArrayIndexOutOfBoundsException</code> is thrown
	* if the <code>normComponents</code> array is not large enough to hold
	* all the color and alpha components (starting at
	* <code>normOffset</code>).  If the <code>obj</code> variable is
	* <code>null</code>, a new array will be allocated.  If
	* <code>obj</code> is not <code>null</code>, it must be a primitive
	* array of type transferType; otherwise, a
	* <code>ClassCastException</code> is thrown.  An
	* <code>ArrayIndexOutOfBoundsException</code> is thrown if
	* <code>obj</code> is not large enough to hold a pixel value for this
	* <code>ColorModel</code>.
	* Since <code>ColorModel</code> is an abstract class,
	* any instance is an instance of a subclass.  The default implementation
	* of this method in this abstract class first converts from the
	* normalized form to the unnormalized form and then calls
	* <code>getDataElement(int[], int, Object)</code>.  Subclasses which may
	* have instances which do not support the unnormalized form must
	* override this method.
	* @param normComponents an array of normalized color and alpha
	* components
	* @param normOffset the index into <code>normComponents</code> at which to
	* begin retrieving color and alpha components
	* @param obj a primitive data array to hold the returned pixel
	* @return an <code>Object</code> which is a primitive data array
	* representation of a pixel
	* @throws ClassCastException if <code>obj</code>
	*  is not a primitive array of type <code>transferType</code>
	* @throws ArrayIndexOutOfBoundsException if
	*  <code>obj</code> is not large enough to hold a pixel value
	*  for this <code>ColorModel</code> or the <code>normComponents</code>
	*  array is not large enough to hold all of the color and alpha
	*  components starting at <code>normOffset</code>
	* @see WritableRaster#setDataElements
	* @see SampleModel#setDataElements
	* @since 1.4
	*/
	@:require(java4) @:overload public function getDataElements(normComponents : java.NativeArray<Single>, normOffset : Int, obj : Dynamic) : Dynamic;
	
	/**
	* Returns an array of all of the color/alpha components in normalized
	* form, given a pixel in this <code>ColorModel</code>.  The pixel
	* value is specified by an array of data elements of type transferType
	* passed in as an object reference.  If pixel is not a primitive array
	* of type transferType, a <code>ClassCastException</code> is thrown.
	* An <code>ArrayIndexOutOfBoundsException</code> is thrown if
	* <code>pixel</code> is not large enough to hold a pixel value for this
	* <code>ColorModel</code>.
	* Normalized components are float values between a per component minimum
	* and maximum specified by the <code>ColorSpace</code> object for this
	* <code>ColorModel</code>.  If the
	* <code>normComponents</code> array is <code>null</code>, a new array
	* will be allocated.  The <code>normComponents</code> array
	* will be returned.  Color/alpha components are stored in the
	* <code>normComponents</code> array starting at
	* <code>normOffset</code> (even if the array is allocated by this
	* method).  An <code>ArrayIndexOutOfBoundsException</code> is thrown
	* if the <code>normComponents</code> array is not <code>null</code>
	* and is not large enough to hold all the color and alpha components
	* (starting at <code>normOffset</code>).
	* Since <code>ColorModel</code> is an abstract class,
	* any instance is an instance of a subclass.  The default implementation
	* of this method in this abstract class first retrieves color and alpha
	* components in the unnormalized form using
	* <code>getComponents(Object, int[], int)</code> and then calls
	* <code>getNormalizedComponents(int[], int, float[], int)</code>.
	* Subclasses which may
	* have instances which do not support the unnormalized form must
	* override this method.
	* @param pixel the specified pixel
	* @param normComponents an array to receive the normalized components
	* @param normOffset the offset into the <code>normComponents</code>
	* array at which to start storing normalized components
	* @return an array containing normalized color and alpha
	* components.
	* @throws ClassCastException if <code>pixel</code> is not a primitive
	*          array of type transferType
	* @throws ArrayIndexOutOfBoundsException if
	*          <code>normComponents</code> is not large enough to hold all
	*          color and alpha components starting at <code>normOffset</code>
	* @throws ArrayIndexOutOfBoundsException if
	*          <code>pixel</code> is not large enough to hold a pixel
	*          value for this <code>ColorModel</code>.
	* @throws UnsupportedOperationException if the
	*          constructor of this <code>ColorModel</code> called the
	*          <code>super(bits)</code> constructor, but did not
	*          override this method.  See the constructor,
	*          {@link #ColorModel(int)}.
	* @throws UnsupportedOperationException if this method is unable
	*          to determine the number of bits per component
	* @since 1.4
	*/
	@:require(java4) @:overload public function getNormalizedComponents(pixel : Dynamic, normComponents : java.NativeArray<Single>, normOffset : Int) : java.NativeArray<Single>;
	
	/**
	* Tests if the specified <code>Object</code> is an instance of
	* <code>ColorModel</code> and if it equals this
	* <code>ColorModel</code>.
	* @param obj the <code>Object</code> to test for equality
	* @return <code>true</code> if the specified <code>Object</code>
	* is an instance of <code>ColorModel</code> and equals this
	* <code>ColorModel</code>; <code>false</code> otherwise.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code for this ColorModel.
	*
	* @return    a hash code for this ColorModel.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns the <code>ColorSpace</code> associated with this
	* <code>ColorModel</code>.
	* @return the <code>ColorSpace</code> of this
	* <code>ColorModel</code>.
	*/
	@:overload @:final public function getColorSpace() : java.awt.color.ColorSpace;
	
	/**
	* Forces the raster data to match the state specified in the
	* <code>isAlphaPremultiplied</code> variable, assuming the data is
	* currently correctly described by this <code>ColorModel</code>.  It
	* may multiply or divide the color raster data by alpha, or do
	* nothing if the data is in the correct state.  If the data needs to
	* be coerced, this method will also return an instance of this
	* <code>ColorModel</code> with the <code>isAlphaPremultiplied</code>
	* flag set appropriately.  This method will throw a
	* <code>UnsupportedOperationException</code> if it is not supported
	* by this <code>ColorModel</code>.
	* Since <code>ColorModel</code> is an abstract class,
	* any instance is an instance of a subclass.  Subclasses must
	* override this method since the implementation in this abstract
	* class throws an <code>UnsupportedOperationException</code>.
	* @param raster the <code>WritableRaster</code> data
	* @param isAlphaPremultiplied <code>true</code> if the alpha is
	* premultiplied; <code>false</code> otherwise
	* @return a <code>ColorModel</code> object that represents the
	* coerced data.
	*/
	@:overload public function coerceData(raster : java.awt.image.WritableRaster, isAlphaPremultiplied : Bool) : ColorModel;
	
	/**
	* Returns <code>true</code> if <code>raster</code> is compatible
	* with this <code>ColorModel</code> and <code>false</code> if it is
	* not.
	* Since <code>ColorModel</code> is an abstract class,
	* any instance is an instance of a subclass.  Subclasses must
	* override this method since the implementation in this abstract
	* class throws an <code>UnsupportedOperationException</code>.
	* @param raster the {@link Raster} object to test for compatibility
	* @return <code>true</code> if <code>raster</code> is compatible
	* with this <code>ColorModel</code>.
	* @throws UnsupportedOperationException if this
	*         method has not been implemented for this
	*         <code>ColorModel</code>
	*/
	@:overload public function isCompatibleRaster(raster : java.awt.image.Raster) : Bool;
	
	/**
	* Creates a <code>WritableRaster</code> with the specified width and
	* height that has a data layout (<code>SampleModel</code>) compatible
	* with this <code>ColorModel</code>.
	* Since <code>ColorModel</code> is an abstract class,
	* any instance is an instance of a subclass.  Subclasses must
	* override this method since the implementation in this abstract
	* class throws an <code>UnsupportedOperationException</code>.
	* @param w the width to apply to the new <code>WritableRaster</code>
	* @param h the height to apply to the new <code>WritableRaster</code>
	* @return a <code>WritableRaster</code> object with the specified
	* width and height.
	* @throws UnsupportedOperationException if this
	*          method is not supported by this <code>ColorModel</code>
	* @see WritableRaster
	* @see SampleModel
	*/
	@:overload public function createCompatibleWritableRaster(w : Int, h : Int) : java.awt.image.WritableRaster;
	
	/**
	* Creates a <code>SampleModel</code> with the specified width and
	* height that has a data layout compatible with this
	* <code>ColorModel</code>.
	* Since <code>ColorModel</code> is an abstract class,
	* any instance is an instance of a subclass.  Subclasses must
	* override this method since the implementation in this abstract
	* class throws an <code>UnsupportedOperationException</code>.
	* @param w the width to apply to the new <code>SampleModel</code>
	* @param h the height to apply to the new <code>SampleModel</code>
	* @return a <code>SampleModel</code> object with the specified
	* width and height.
	* @throws UnsupportedOperationException if this
	*          method is not supported by this <code>ColorModel</code>
	* @see SampleModel
	*/
	@:overload public function createCompatibleSampleModel(w : Int, h : Int) : java.awt.image.SampleModel;
	
	/** Checks if the <code>SampleModel</code> is compatible with this
	* <code>ColorModel</code>.
	* Since <code>ColorModel</code> is an abstract class,
	* any instance is an instance of a subclass.  Subclasses must
	* override this method since the implementation in this abstract
	* class throws an <code>UnsupportedOperationException</code>.
	* @param sm the specified <code>SampleModel</code>
	* @return <code>true</code> if the specified <code>SampleModel</code>
	* is compatible with this <code>ColorModel</code>; <code>false</code>
	* otherwise.
	* @throws UnsupportedOperationException if this
	*          method is not supported by this <code>ColorModel</code>
	* @see SampleModel
	*/
	@:overload public function isCompatibleSampleModel(sm : java.awt.image.SampleModel) : Bool;
	
	/**
	* Disposes of system resources associated with this
	* <code>ColorModel</code> once this <code>ColorModel</code> is no
	* longer referenced.
	*/
	@:overload public function finalize() : Void;
	
	/**
	* Returns a <code>Raster</code> representing the alpha channel of an
	* image, extracted from the input <code>Raster</code>, provided that
	* pixel values of this <code>ColorModel</code> represent color and
	* alpha information as separate spatial bands (e.g.
	* {@link ComponentColorModel} and <code>DirectColorModel</code>).
	* This method assumes that <code>Raster</code> objects associated
	* with such a <code>ColorModel</code> store the alpha band, if
	* present, as the last band of image data.  Returns <code>null</code>
	* if there is no separate spatial alpha channel associated with this
	* <code>ColorModel</code>.  If this is an
	* <code>IndexColorModel</code> which has alpha in the lookup table,
	* this method will return <code>null</code> since
	* there is no spatially discrete alpha channel.
	* This method will create a new <code>Raster</code> (but will share
	* the data array).
	* Since <code>ColorModel</code> is an abstract class, any instance
	* is an instance of a subclass.  Subclasses must override this
	* method to get any behavior other than returning <code>null</code>
	* because the implementation in this abstract class returns
	* <code>null</code>.
	* @param raster the specified <code>Raster</code>
	* @return a <code>Raster</code> representing the alpha channel of
	* an image, obtained from the specified <code>Raster</code>.
	*/
	@:overload public function getAlphaRaster(raster : java.awt.image.WritableRaster) : java.awt.image.WritableRaster;
	
	/**
	* Returns the <code>String</code> representation of the contents of
	* this <code>ColorModel</code>object.
	* @return a <code>String</code> representing the contents of this
	* <code>ColorModel</code> object.
	*/
	@:overload public function toString() : String;
	
	
}
