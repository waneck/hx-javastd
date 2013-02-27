package java.awt.image;
/*
* Copyright (c) 1995, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class IndexColorModel extends java.awt.image.ColorModel
{
	/**
	* Constructs an <code>IndexColorModel</code> from the specified
	* arrays of red, green, and blue components.  Pixels described
	* by this color model all have alpha components of 255
	* unnormalized (1.0&nbsp;normalized), which means they
	* are fully opaque.  All of the arrays specifying the color
	* components must have at least the specified number of entries.
	* The <code>ColorSpace</code> is the default sRGB space.
	* Since there is no alpha information in any of the arguments
	* to this constructor, the transparency value is always
	* <code>Transparency.OPAQUE</code>.
	* The transfer type is the smallest of <code>DataBuffer.TYPE_BYTE</code>
	* or <code>DataBuffer.TYPE_USHORT</code> that can hold a single pixel.
	* @param bits      the number of bits each pixel occupies
	* @param size      the size of the color component arrays
	* @param r         the array of red color components
	* @param g         the array of green color components
	* @param b         the array of blue color components
	* @throws IllegalArgumentException if <code>bits</code> is less
	*         than 1 or greater than 16
	* @throws IllegalArgumentException if <code>size</code> is less
	*         than 1
	*/
	@:overload public function new(bits : Int, size : Int, r : java.NativeArray<java.StdTypes.Int8>, g : java.NativeArray<java.StdTypes.Int8>, b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Constructs an <code>IndexColorModel</code> from the given arrays
	* of red, green, and blue components.  Pixels described by this color
	* model all have alpha components of 255 unnormalized
	* (1.0&nbsp;normalized), which means they are fully opaque, except
	* for the indicated pixel to be made transparent.  All of the arrays
	* specifying the color components must have at least the specified
	* number of entries.
	* The <code>ColorSpace</code> is the default sRGB space.
	* The transparency value may be <code>Transparency.OPAQUE</code> or
	* <code>Transparency.BITMASK</code> depending on the arguments, as
	* specified in the <a href="#transparency">class description</a> above.
	* The transfer type is the smallest of <code>DataBuffer.TYPE_BYTE</code>
	* or <code>DataBuffer.TYPE_USHORT</code> that can hold a
	* single pixel.
	* @param bits      the number of bits each pixel occupies
	* @param size      the size of the color component arrays
	* @param r         the array of red color components
	* @param g         the array of green color components
	* @param b         the array of blue color components
	* @param trans     the index of the transparent pixel
	* @throws IllegalArgumentException if <code>bits</code> is less than
	*          1 or greater than 16
	* @throws IllegalArgumentException if <code>size</code> is less than
	*          1
	*/
	@:overload public function new(bits : Int, size : Int, r : java.NativeArray<java.StdTypes.Int8>, g : java.NativeArray<java.StdTypes.Int8>, b : java.NativeArray<java.StdTypes.Int8>, trans : Int) : Void;
	
	/**
	* Constructs an <code>IndexColorModel</code> from the given
	* arrays of red, green, blue and alpha components.  All of the
	* arrays specifying the components must have at least the specified
	* number of entries.
	* The <code>ColorSpace</code> is the default sRGB space.
	* The transparency value may be any of <code>Transparency.OPAQUE</code>,
	* <code>Transparency.BITMASK</code>,
	* or <code>Transparency.TRANSLUCENT</code>
	* depending on the arguments, as specified
	* in the <a href="#transparency">class description</a> above.
	* The transfer type is the smallest of <code>DataBuffer.TYPE_BYTE</code>
	* or <code>DataBuffer.TYPE_USHORT</code> that can hold a single pixel.
	* @param bits      the number of bits each pixel occupies
	* @param size      the size of the color component arrays
	* @param r         the array of red color components
	* @param g         the array of green color components
	* @param b         the array of blue color components
	* @param a         the array of alpha value components
	* @throws IllegalArgumentException if <code>bits</code> is less
	*           than 1 or greater than 16
	* @throws IllegalArgumentException if <code>size</code> is less
	*           than 1
	*/
	@:overload public function new(bits : Int, size : Int, r : java.NativeArray<java.StdTypes.Int8>, g : java.NativeArray<java.StdTypes.Int8>, b : java.NativeArray<java.StdTypes.Int8>, a : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Constructs an <code>IndexColorModel</code> from a single
	* array of interleaved red, green, blue and optional alpha
	* components.  The array must have enough values in it to
	* fill all of the needed component arrays of the specified
	* size.  The <code>ColorSpace</code> is the default sRGB space.
	* The transparency value may be any of <code>Transparency.OPAQUE</code>,
	* <code>Transparency.BITMASK</code>,
	* or <code>Transparency.TRANSLUCENT</code>
	* depending on the arguments, as specified
	* in the <a href="#transparency">class description</a> above.
	* The transfer type is the smallest of
	* <code>DataBuffer.TYPE_BYTE</code> or <code>DataBuffer.TYPE_USHORT</code>
	* that can hold a single pixel.
	*
	* @param bits      the number of bits each pixel occupies
	* @param size      the size of the color component arrays
	* @param cmap      the array of color components
	* @param start     the starting offset of the first color component
	* @param hasalpha  indicates whether alpha values are contained in
	*                  the <code>cmap</code> array
	* @throws IllegalArgumentException if <code>bits</code> is less
	*           than 1 or greater than 16
	* @throws IllegalArgumentException if <code>size</code> is less
	*           than 1
	*/
	@:overload public function new(bits : Int, size : Int, cmap : java.NativeArray<java.StdTypes.Int8>, start : Int, hasalpha : Bool) : Void;
	
	/**
	* Constructs an <code>IndexColorModel</code> from a single array of
	* interleaved red, green, blue and optional alpha components.  The
	* specified transparent index represents a pixel that is made
	* entirely transparent regardless of any alpha value specified
	* for it.  The array must have enough values in it to fill all
	* of the needed component arrays of the specified size.
	* The <code>ColorSpace</code> is the default sRGB space.
	* The transparency value may be any of <code>Transparency.OPAQUE</code>,
	* <code>Transparency.BITMASK</code>,
	* or <code>Transparency.TRANSLUCENT</code>
	* depending on the arguments, as specified
	* in the <a href="#transparency">class description</a> above.
	* The transfer type is the smallest of
	* <code>DataBuffer.TYPE_BYTE</code> or <code>DataBuffer.TYPE_USHORT</code>
	* that can hold a single pixel.
	* @param bits      the number of bits each pixel occupies
	* @param size      the size of the color component arrays
	* @param cmap      the array of color components
	* @param start     the starting offset of the first color component
	* @param hasalpha  indicates whether alpha values are contained in
	*                  the <code>cmap</code> array
	* @param trans     the index of the fully transparent pixel
	* @throws IllegalArgumentException if <code>bits</code> is less than
	*               1 or greater than 16
	* @throws IllegalArgumentException if <code>size</code> is less than
	*               1
	*/
	@:overload public function new(bits : Int, size : Int, cmap : java.NativeArray<java.StdTypes.Int8>, start : Int, hasalpha : Bool, trans : Int) : Void;
	
	/**
	* Constructs an <code>IndexColorModel</code> from an array of
	* ints where each int is comprised of red, green, blue, and
	* optional alpha components in the default RGB color model format.
	* The specified transparent index represents a pixel that is made
	* entirely transparent regardless of any alpha value specified
	* for it.  The array must have enough values in it to fill all
	* of the needed component arrays of the specified size.
	* The <code>ColorSpace</code> is the default sRGB space.
	* The transparency value may be any of <code>Transparency.OPAQUE</code>,
	* <code>Transparency.BITMASK</code>,
	* or <code>Transparency.TRANSLUCENT</code>
	* depending on the arguments, as specified
	* in the <a href="#transparency">class description</a> above.
	* @param bits      the number of bits each pixel occupies
	* @param size      the size of the color component arrays
	* @param cmap      the array of color components
	* @param start     the starting offset of the first color component
	* @param hasalpha  indicates whether alpha values are contained in
	*                  the <code>cmap</code> array
	* @param trans     the index of the fully transparent pixel
	* @param transferType the data type of the array used to represent
	*           pixel values.  The data type must be either
	*           <code>DataBuffer.TYPE_BYTE</code> or
	*           <code>DataBuffer.TYPE_USHORT</code>.
	* @throws IllegalArgumentException if <code>bits</code> is less
	*           than 1 or greater than 16
	* @throws IllegalArgumentException if <code>size</code> is less
	*           than 1
	* @throws IllegalArgumentException if <code>transferType</code> is not
	*           one of <code>DataBuffer.TYPE_BYTE</code> or
	*           <code>DataBuffer.TYPE_USHORT</code>
	*/
	@:overload public function new(bits : Int, size : Int, cmap : java.NativeArray<Int>, start : Int, hasalpha : Bool, trans : Int, transferType : Int) : Void;
	
	/**
	* Constructs an <code>IndexColorModel</code> from an
	* <code>int</code> array where each <code>int</code> is
	* comprised of red, green, blue, and alpha
	* components in the default RGB color model format.
	* The array must have enough values in it to fill all
	* of the needed component arrays of the specified size.
	* The <code>ColorSpace</code> is the default sRGB space.
	* The transparency value may be any of <code>Transparency.OPAQUE</code>,
	* <code>Transparency.BITMASK</code>,
	* or <code>Transparency.TRANSLUCENT</code>
	* depending on the arguments, as specified
	* in the <a href="#transparency">class description</a> above.
	* The transfer type must be one of <code>DataBuffer.TYPE_BYTE</code>
	* <code>DataBuffer.TYPE_USHORT</code>.
	* The <code>BigInteger</code> object specifies the valid/invalid pixels
	* in the <code>cmap</code> array.  A pixel is valid if the
	* <code>BigInteger</code> value at that index is set, and is invalid
	* if the <code>BigInteger</code> bit  at that index is not set.
	* @param bits the number of bits each pixel occupies
	* @param size the size of the color component array
	* @param cmap the array of color components
	* @param start the starting offset of the first color component
	* @param transferType the specified data type
	* @param validBits a <code>BigInteger</code> object.  If a bit is
	*    set in the BigInteger, the pixel at that index is valid.
	*    If a bit is not set, the pixel at that index
	*    is considered invalid.  If null, all pixels are valid.
	*    Only bits from 0 to the map size are considered.
	* @throws IllegalArgumentException if <code>bits</code> is less
	*           than 1 or greater than 16
	* @throws IllegalArgumentException if <code>size</code> is less
	*           than 1
	* @throws IllegalArgumentException if <code>transferType</code> is not
	*           one of <code>DataBuffer.TYPE_BYTE</code> or
	*           <code>DataBuffer.TYPE_USHORT</code>
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function new(bits : Int, size : Int, cmap : java.NativeArray<Int>, start : Int, transferType : Int, validBits : java.math.BigInteger) : Void;
	
	/**
	* Returns the transparency.  Returns either OPAQUE, BITMASK,
	* or TRANSLUCENT
	* @return the transparency of this <code>IndexColorModel</code>
	* @see Transparency#OPAQUE
	* @see Transparency#BITMASK
	* @see Transparency#TRANSLUCENT
	*/
	@:overload override public function getTransparency() : Int;
	
	/**
	* Returns an array of the number of bits for each color/alpha component.
	* The array contains the color components in the order red, green,
	* blue, followed by the alpha component, if present.
	* @return an array containing the number of bits of each color
	*         and alpha component of this <code>IndexColorModel</code>
	*/
	@:overload override public function getComponentSize() : java.NativeArray<Int>;
	
	/**
	* Returns the size of the color/alpha component arrays in this
	* <code>IndexColorModel</code>.
	* @return the size of the color and alpha component arrays.
	*/
	@:overload @:final public function getMapSize() : Int;
	
	/**
	* Returns the index of a transparent pixel in this
	* <code>IndexColorModel</code> or -1 if there is no pixel
	* with an alpha value of 0.  If a transparent pixel was
	* explicitly specified in one of the constructors by its
	* index, then that index will be preferred, otherwise,
	* the index of any pixel which happens to be fully transparent
	* may be returned.
	* @return the index of a transparent pixel in this
	*         <code>IndexColorModel</code> object, or -1 if there
	*         is no such pixel
	*/
	@:overload @:final public function getTransparentPixel() : Int;
	
	/**
	* Copies the array of red color components into the specified array.
	* Only the initial entries of the array as specified by
	* {@link #getMapSize() getMapSize} are written.
	* @param r the specified array into which the elements of the
	*      array of red color components are copied
	*/
	@:overload @:final public function getReds(r : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Copies the array of green color components into the specified array.
	* Only the initial entries of the array as specified by
	* <code>getMapSize</code> are written.
	* @param g the specified array into which the elements of the
	*      array of green color components are copied
	*/
	@:overload @:final public function getGreens(g : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Copies the array of blue color components into the specified array.
	* Only the initial entries of the array as specified by
	* <code>getMapSize</code> are written.
	* @param b the specified array into which the elements of the
	*      array of blue color components are copied
	*/
	@:overload @:final public function getBlues(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Copies the array of alpha transparency components into the
	* specified array.  Only the initial entries of the array as specified
	* by <code>getMapSize</code> are written.
	* @param a the specified array into which the elements of the
	*      array of alpha components are copied
	*/
	@:overload @:final public function getAlphas(a : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Converts data for each index from the color and alpha component
	* arrays to an int in the default RGB ColorModel format and copies
	* the resulting 32-bit ARGB values into the specified array.  Only
	* the initial entries of the array as specified by
	* <code>getMapSize</code> are
	* written.
	* @param rgb the specified array into which the converted ARGB
	*        values from this array of color and alpha components
	*        are copied.
	*/
	@:overload @:final public function getRGBs(rgb : java.NativeArray<Int>) : Void;
	
	/**
	* Returns the red color component for the specified pixel, scaled
	* from 0 to 255 in the default RGB ColorSpace, sRGB.  The pixel value
	* is specified as an int.
	* Only the lower <em>n</em> bits of the pixel value, as specified in the
	* <a href="#index_values">class description</a> above, are used to
	* calculate the returned value.
	* The returned value is a non pre-multiplied value.
	* @param pixel the specified pixel
	* @return the value of the red color component for the specified pixel
	*/
	@:overload @:final override public function getRed(pixel : Int) : Int;
	
	/**
	* Returns the green color component for the specified pixel, scaled
	* from 0 to 255 in the default RGB ColorSpace, sRGB.  The pixel value
	* is specified as an int.
	* Only the lower <em>n</em> bits of the pixel value, as specified in the
	* <a href="#index_values">class description</a> above, are used to
	* calculate the returned value.
	* The returned value is a non pre-multiplied value.
	* @param pixel the specified pixel
	* @return the value of the green color component for the specified pixel
	*/
	@:overload @:final override public function getGreen(pixel : Int) : Int;
	
	/**
	* Returns the blue color component for the specified pixel, scaled
	* from 0 to 255 in the default RGB ColorSpace, sRGB.  The pixel value
	* is specified as an int.
	* Only the lower <em>n</em> bits of the pixel value, as specified in the
	* <a href="#index_values">class description</a> above, are used to
	* calculate the returned value.
	* The returned value is a non pre-multiplied value.
	* @param pixel the specified pixel
	* @return the value of the blue color component for the specified pixel
	*/
	@:overload @:final override public function getBlue(pixel : Int) : Int;
	
	/**
	* Returns the alpha component for the specified pixel, scaled
	* from 0 to 255.  The pixel value is specified as an int.
	* Only the lower <em>n</em> bits of the pixel value, as specified in the
	* <a href="#index_values">class description</a> above, are used to
	* calculate the returned value.
	* @param pixel the specified pixel
	* @return the value of the alpha component for the specified pixel
	*/
	@:overload @:final override public function getAlpha(pixel : Int) : Int;
	
	/**
	* Returns the color/alpha components of the pixel in the default
	* RGB color model format.  The pixel value is specified as an int.
	* Only the lower <em>n</em> bits of the pixel value, as specified in the
	* <a href="#index_values">class description</a> above, are used to
	* calculate the returned value.
	* The returned value is in a non pre-multiplied format.
	* @param pixel the specified pixel
	* @return the color and alpha components of the specified pixel
	* @see ColorModel#getRGBdefault
	*/
	@:overload @:final override public function getRGB(pixel : Int) : Int;
	
	/**
	* Returns a data element array representation of a pixel in this
	* ColorModel, given an integer pixel representation in the
	* default RGB color model.  This array can then be passed to the
	* {@link WritableRaster#setDataElements(int, int, java.lang.Object) setDataElements}
	* method of a {@link WritableRaster} object.  If the pixel variable is
	* <code>null</code>, a new array is allocated.  If <code>pixel</code>
	* is not <code>null</code>, it must be
	* a primitive array of type <code>transferType</code>; otherwise, a
	* <code>ClassCastException</code> is thrown.  An
	* <code>ArrayIndexOutOfBoundsException</code> is
	* thrown if <code>pixel</code> is not large enough to hold a pixel
	* value for this <code>ColorModel</code>.  The pixel array is returned.
	* <p>
	* Since <code>IndexColorModel</code> can be subclassed, subclasses
	* inherit the implementation of this method and if they don't
	* override it then they throw an exception if they use an
	* unsupported <code>transferType</code>.
	*
	* @param rgb the integer pixel representation in the default RGB
	* color model
	* @param pixel the specified pixel
	* @return an array representation of the specified pixel in this
	*  <code>IndexColorModel</code>.
	* @throws ClassCastException if <code>pixel</code>
	*  is not a primitive array of type <code>transferType</code>
	* @throws ArrayIndexOutOfBoundsException if
	*  <code>pixel</code> is not large enough to hold a pixel value
	*  for this <code>ColorModel</code>
	* @throws UnsupportedOperationException if <code>transferType</code>
	*         is invalid
	* @see WritableRaster#setDataElements
	* @see SampleModel#setDataElements
	*/
	@:overload @:synchronized override public function getDataElements(rgb : Int, pixel : Dynamic) : Dynamic;
	
	/**
	* Returns an array of unnormalized color/alpha components for a
	* specified pixel in this <code>ColorModel</code>.  The pixel value
	* is specified as an int.  If the <code>components</code> array is <code>null</code>,
	* a new array is allocated that contains
	* <code>offset + getNumComponents()</code> elements.
	* The <code>components</code> array is returned,
	* with the alpha component included
	* only if <code>hasAlpha</code> returns true.
	* Color/alpha components are stored in the <code>components</code> array starting
	* at <code>offset</code> even if the array is allocated by this method.
	* An <code>ArrayIndexOutOfBoundsException</code>
	* is thrown if  the <code>components</code> array is not <code>null</code> and is
	* not large enough to hold all the color and alpha components
	* starting at <code>offset</code>.
	* @param pixel the specified pixel
	* @param components the array to receive the color and alpha
	* components of the specified pixel
	* @param offset the offset into the <code>components</code> array at
	* which to start storing the color and alpha components
	* @return an array containing the color and alpha components of the
	* specified pixel starting at the specified offset.
	* @see ColorModel#hasAlpha
	* @see ColorModel#getNumComponents
	*/
	@:overload override public function getComponents(pixel : Int, components : java.NativeArray<Int>, offset : Int) : java.NativeArray<Int>;
	
	/**
	* Returns an array of unnormalized color/alpha components for
	* a specified pixel in this <code>ColorModel</code>.  The pixel
	* value is specified by an array of data elements of type
	* <code>transferType</code> passed in as an object reference.
	* If <code>pixel</code> is not a primitive array of type
	* <code>transferType</code>, a <code>ClassCastException</code>
	* is thrown.  An <code>ArrayIndexOutOfBoundsException</code>
	* is thrown if <code>pixel</code> is not large enough to hold
	* a pixel value for this <code>ColorModel</code>.  If the
	* <code>components</code> array is <code>null</code>, a new array
	* is allocated that contains
	* <code>offset + getNumComponents()</code> elements.
	* The <code>components</code> array is returned,
	* with the alpha component included
	* only if <code>hasAlpha</code> returns true.
	* Color/alpha components are stored in the <code>components</code>
	* array starting at <code>offset</code> even if the array is
	* allocated by this method.  An
	* <code>ArrayIndexOutOfBoundsException</code> is also
	* thrown if  the <code>components</code> array is not
	* <code>null</code> and is not large enough to hold all the color
	* and alpha components starting at <code>offset</code>.
	* <p>
	* Since <code>IndexColorModel</code> can be subclassed, subclasses
	* inherit the implementation of this method and if they don't
	* override it then they throw an exception if they use an
	* unsupported <code>transferType</code>.
	*
	* @param pixel the specified pixel
	* @param components an array that receives the color and alpha
	* components of the specified pixel
	* @param offset the index into the <code>components</code> array at
	* which to begin storing the color and alpha components of the
	* specified pixel
	* @return an array containing the color and alpha components of the
	* specified pixel starting at the specified offset.
	* @throws ArrayIndexOutOfBoundsException if <code>pixel</code>
	*            is not large enough to hold a pixel value for this
	*            <code>ColorModel</code> or if the
	*            <code>components</code> array is not <code>null</code>
	*            and is not large enough to hold all the color
	*            and alpha components starting at <code>offset</code>
	* @throws ClassCastException if <code>pixel</code> is not a
	*            primitive array of type <code>transferType</code>
	* @throws UnsupportedOperationException if <code>transferType</code>
	*         is not one of the supported transer types
	* @see ColorModel#hasAlpha
	* @see ColorModel#getNumComponents
	*/
	@:overload override public function getComponents(pixel : Dynamic, components : java.NativeArray<Int>, offset : Int) : java.NativeArray<Int>;
	
	/**
	* Returns a pixel value represented as an int in this
	* <code>ColorModel</code> given an array of unnormalized
	* color/alpha components.  An
	* <code>ArrayIndexOutOfBoundsException</code>
	* is thrown if the <code>components</code> array is not large
	* enough to hold all of the color and alpha components starting
	* at <code>offset</code>.  Since
	* <code>ColorModel</code> can be subclassed, subclasses inherit the
	* implementation of this method and if they don't override it then
	* they throw an exception if they use an unsupported transferType.
	* @param components an array of unnormalized color and alpha
	* components
	* @param offset the index into <code>components</code> at which to
	* begin retrieving the color and alpha components
	* @return an <code>int</code> pixel value in this
	* <code>ColorModel</code> corresponding to the specified components.
	* @throws ArrayIndexOutOfBoundsException if
	*  the <code>components</code> array is not large enough to
	*  hold all of the color and alpha components starting at
	*  <code>offset</code>
	* @throws UnsupportedOperationException if <code>transferType</code>
	*         is invalid
	*/
	@:overload override public function getDataElement(components : java.NativeArray<Int>, offset : Int) : Int;
	
	/**
	* Returns a data element array representation of a pixel in this
	* <code>ColorModel</code> given an array of unnormalized color/alpha
	* components.  This array can then be passed to the
	* <code>setDataElements</code> method of a <code>WritableRaster</code>
	* object.  An <code>ArrayIndexOutOfBoundsException</code> is
	* thrown if the
	* <code>components</code> array is not large enough to hold all of the
	* color and alpha components starting at <code>offset</code>.
	* If the pixel variable is <code>null</code>, a new array
	* is allocated.  If <code>pixel</code> is not <code>null</code>,
	* it must be a primitive array of type <code>transferType</code>;
	* otherwise, a <code>ClassCastException</code> is thrown.
	* An <code>ArrayIndexOutOfBoundsException</code> is thrown if pixel
	* is not large enough to hold a pixel value for this
	* <code>ColorModel</code>.
	* <p>
	* Since <code>IndexColorModel</code> can be subclassed, subclasses
	* inherit the implementation of this method and if they don't
	* override it then they throw an exception if they use an
	* unsupported <code>transferType</code>
	*
	* @param components an array of unnormalized color and alpha
	* components
	* @param offset the index into <code>components</code> at which to
	* begin retrieving color and alpha components
	* @param pixel the <code>Object</code> representing an array of color
	* and alpha components
	* @return an <code>Object</code> representing an array of color and
	* alpha components.
	* @throws ClassCastException if <code>pixel</code>
	*  is not a primitive array of type <code>transferType</code>
	* @throws ArrayIndexOutOfBoundsException if
	*  <code>pixel</code> is not large enough to hold a pixel value
	*  for this <code>ColorModel</code> or the <code>components</code>
	*  array is not large enough to hold all of the color and alpha
	*  components starting at <code>offset</code>
	* @throws UnsupportedOperationException if <code>transferType</code>
	*         is not one of the supported transer types
	* @see WritableRaster#setDataElements
	* @see SampleModel#setDataElements
	*/
	@:overload override public function getDataElements(components : java.NativeArray<Int>, offset : Int, pixel : Dynamic) : Dynamic;
	
	/**
	* Creates a <code>WritableRaster</code> with the specified width
	* and height that has a data layout (<code>SampleModel</code>)
	* compatible with this <code>ColorModel</code>.  This method
	* only works for color models with 16 or fewer bits per pixel.
	* <p>
	* Since <code>IndexColorModel</code> can be subclassed, any
	* subclass that supports greater than 16 bits per pixel must
	* override this method.
	*
	* @param w the width to apply to the new <code>WritableRaster</code>
	* @param h the height to apply to the new <code>WritableRaster</code>
	* @return a <code>WritableRaster</code> object with the specified
	* width and height.
	* @throws UnsupportedOperationException if the number of bits in a
	*         pixel is greater than 16
	* @see WritableRaster
	* @see SampleModel
	*/
	@:overload override public function createCompatibleWritableRaster(w : Int, h : Int) : java.awt.image.WritableRaster;
	
	/**
	* Returns <code>true</code> if <code>raster</code> is compatible
	* with this <code>ColorModel</code> or <code>false</code> if it
	* is not compatible with this <code>ColorModel</code>.
	* @param raster the {@link Raster} object to test for compatibility
	* @return <code>true</code> if <code>raster</code> is compatible
	* with this <code>ColorModel</code>; <code>false</code> otherwise.
	*
	*/
	@:overload override public function isCompatibleRaster(raster : java.awt.image.Raster) : Bool;
	
	/**
	* Creates a <code>SampleModel</code> with the specified
	* width and height that has a data layout compatible with
	* this <code>ColorModel</code>.
	* @param w the width to apply to the new <code>SampleModel</code>
	* @param h the height to apply to the new <code>SampleModel</code>
	* @return a <code>SampleModel</code> object with the specified
	* width and height.
	* @throws IllegalArgumentException if <code>w</code> or
	*         <code>h</code> is not greater than 0
	* @see SampleModel
	*/
	@:overload override public function createCompatibleSampleModel(w : Int, h : Int) : java.awt.image.SampleModel;
	
	/**
	* Checks if the specified <code>SampleModel</code> is compatible
	* with this <code>ColorModel</code>.  If <code>sm</code> is
	* <code>null</code>, this method returns <code>false</code>.
	* @param sm the specified <code>SampleModel</code>,
	*           or <code>null</code>
	* @return <code>true</code> if the specified <code>SampleModel</code>
	* is compatible with this <code>ColorModel</code>; <code>false</code>
	* otherwise.
	* @see SampleModel
	*/
	@:overload override public function isCompatibleSampleModel(sm : java.awt.image.SampleModel) : Bool;
	
	/**
	* Returns a new <code>BufferedImage</code> of TYPE_INT_ARGB or
	* TYPE_INT_RGB that has a <code>Raster</code> with pixel data
	* computed by expanding the indices in the source <code>Raster</code>
	* using the color/alpha component arrays of this <code>ColorModel</code>.
	* Only the lower <em>n</em> bits of each index value in the source
	* <code>Raster</code>, as specified in the
	* <a href="#index_values">class description</a> above, are used to
	* compute the color/alpha values in the returned image.
	* If <code>forceARGB</code> is <code>true</code>, a TYPE_INT_ARGB image is
	* returned regardless of whether or not this <code>ColorModel</code>
	* has an alpha component array or a transparent pixel.
	* @param raster the specified <code>Raster</code>
	* @param forceARGB if <code>true</code>, the returned
	*     <code>BufferedImage</code> is TYPE_INT_ARGB; otherwise it is
	*     TYPE_INT_RGB
	* @return a <code>BufferedImage</code> created with the specified
	*     <code>Raster</code>
	* @throws IllegalArgumentException if the raster argument is not
	*           compatible with this IndexColorModel
	*/
	@:overload public function convertToIntDiscrete(raster : java.awt.image.Raster, forceARGB : Bool) : java.awt.image.BufferedImage;
	
	/**
	* Returns whether or not the pixel is valid.
	* @param pixel the specified pixel value
	* @return <code>true</code> if <code>pixel</code>
	* is valid; <code>false</code> otherwise.
	* @since 1.3
	*/
	@:require(java3) @:overload public function isValid(pixel : Int) : Bool;
	
	/**
	* Returns whether or not all of the pixels are valid.
	* @return <code>true</code> if all pixels are valid;
	* <code>false</code> otherwise.
	* @since 1.3
	*/
	@:require(java3) @:overload public function isValid() : Bool;
	
	/**
	* Returns a <code>BigInteger</code> that indicates the valid/invalid
	* pixels in the colormap.  A bit is valid if the
	* <code>BigInteger</code> value at that index is set, and is invalid
	* if the <code>BigInteger</code> value at that index is not set.
	* The only valid ranges to query in the <code>BigInteger</code> are
	* between 0 and the map size.
	* @return a <code>BigInteger</code> indicating the valid/invalid pixels.
	* @since 1.3
	*/
	@:require(java3) @:overload public function getValidPixels() : java.math.BigInteger;
	
	/**
	* Disposes of system resources associated with this
	* <code>ColorModel</code> once this <code>ColorModel</code> is no
	* longer referenced.
	*/
	@:overload override public function finalize() : Void;
	
	/**
	* Returns the <code>String</code> representation of the contents of
	* this <code>ColorModel</code>object.
	* @return a <code>String</code> representing the contents of this
	* <code>ColorModel</code> object.
	*/
	@:overload override public function toString() : String;
	
	
}
