package javax.imageio;
/*
* Copyright (c) 2000, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class ImageWriteParam extends javax.imageio.IIOParam
{
	/**
	* A constant value that may be passed into methods such as
	* <code>setTilingMode</code>, <code>setProgressiveMode</code>,
	* and <code>setCompressionMode</code> to disable a feature for
	* future writes.  That is, when this mode is set the stream will
	* <b>not</b> be tiled, progressive, or compressed, and the
	* relevant accessor methods will throw an
	* <code>IllegalStateException</code>.
	*
	* @see #MODE_EXPLICIT
	* @see #MODE_COPY_FROM_METADATA
	* @see #MODE_DEFAULT
	* @see #setProgressiveMode
	* @see #getProgressiveMode
	* @see #setTilingMode
	* @see #getTilingMode
	* @see #setCompressionMode
	* @see #getCompressionMode
	*/
	@:public @:static @:final public static var MODE_DISABLED(default, null) : Int;
	
	/**
	* A constant value that may be passed into methods such as
	* <code>setTilingMode</code>,
	* <code>setProgressiveMode</code>, and
	* <code>setCompressionMode</code> to enable that feature for
	* future writes.  That is, when this mode is enabled the stream
	* will be tiled, progressive, or compressed according to a
	* sensible default chosen internally by the writer in a plug-in
	* dependent way, and the relevant accessor methods will
	* throw an <code>IllegalStateException</code>.
	*
	* @see #MODE_DISABLED
	* @see #MODE_EXPLICIT
	* @see #MODE_COPY_FROM_METADATA
	* @see #setProgressiveMode
	* @see #getProgressiveMode
	* @see #setTilingMode
	* @see #getTilingMode
	* @see #setCompressionMode
	* @see #getCompressionMode
	*/
	@:public @:static @:final public static var MODE_DEFAULT(default, null) : Int;
	
	/**
	* A constant value that may be passed into methods such as
	* <code>setTilingMode</code> or <code>setCompressionMode</code>
	* to enable a feature for future writes. That is, when this mode
	* is set the stream will be tiled or compressed according to
	* additional information supplied to the corresponding
	* <code>set</code> methods in this class and retrievable from the
	* corresponding <code>get</code> methods.  Note that this mode is
	* not supported for progressive output.
	*
	* @see #MODE_DISABLED
	* @see #MODE_COPY_FROM_METADATA
	* @see #MODE_DEFAULT
	* @see #setProgressiveMode
	* @see #getProgressiveMode
	* @see #setTilingMode
	* @see #getTilingMode
	* @see #setCompressionMode
	* @see #getCompressionMode
	*/
	@:public @:static @:final public static var MODE_EXPLICIT(default, null) : Int;
	
	/**
	* A constant value that may be passed into methods such as
	* <code>setTilingMode</code>, <code>setProgressiveMode</code>, or
	* <code>setCompressionMode</code> to enable that feature for
	* future writes.  That is, when this mode is enabled the stream
	* will be tiled, progressive, or compressed based on the contents
	* of stream and/or image metadata passed into the write
	* operation, and any relevant accessor methods will throw an
	* <code>IllegalStateException</code>.
	*
	* <p> This is the default mode for all features, so that a read
	* including metadata followed by a write including metadata will
	* preserve as much information as possible.
	*
	* @see #MODE_DISABLED
	* @see #MODE_EXPLICIT
	* @see #MODE_DEFAULT
	* @see #setProgressiveMode
	* @see #getProgressiveMode
	* @see #setTilingMode
	* @see #getTilingMode
	* @see #setCompressionMode
	* @see #getCompressionMode
	*/
	@:public @:static @:final public static var MODE_COPY_FROM_METADATA(default, null) : Int;
	
	/**
	* The mode controlling tiling settings, which Must be
	* set to one of the four <code>MODE_*</code> values.  The default
	* is <code>MODE_COPY_FROM_METADATA</code>.
	*
	* <p> Subclasses that do not writing tiles may ignore this value.
	*
	* @see #MODE_DISABLED
	* @see #MODE_EXPLICIT
	* @see #MODE_COPY_FROM_METADATA
	* @see #MODE_DEFAULT
	* @see #setTilingMode
	* @see #getTilingMode
	*/
	@:protected private var tilingMode : Int;
	
	/**
	* An array of preferred tile size range pairs.  The default value
	* is <code>null</code>, which indicates that there are no
	* preferred sizes.  If the value is non-<code>null</code>, it
	* must have an even length of at least two.
	*
	* <p> Subclasses that do not support writing tiles may ignore
	* this value.
	*
	* @see #getPreferredTileSizes
	*/
	@:protected private var preferredTileSizes : java.NativeArray<java.awt.Dimension>;
	
	/**
	* A <code>boolean</code> that is <code>true</code> if tiling
	* parameters have been specified.
	*
	* <p> Subclasses that do not support writing tiles may ignore
	* this value.
	*/
	@:protected private var tilingSet : Bool;
	
	/**
	* The width of each tile if tiling has been set, or 0 otherwise.
	*
	* <p> Subclasses that do not support tiling may ignore this
	* value.
	*/
	@:protected private var tileWidth : Int;
	
	/**
	* The height of each tile if tiling has been set, or 0 otherwise.
	* The initial value is <code>0</code>.
	*
	* <p> Subclasses that do not support tiling may ignore this
	* value.
	*/
	@:protected private var tileHeight : Int;
	
	/**
	* The amount by which the tile grid origin should be offset
	* horizontally from the image origin if tiling has been set,
	* or 0 otherwise.  The initial value is <code>0</code>.
	*
	* <p> Subclasses that do not support offsetting tiles may ignore
	* this value.
	*/
	@:protected private var tileGridXOffset : Int;
	
	/**
	* The amount by which the tile grid origin should be offset
	* vertically from the image origin if tiling has been set,
	* or 0 otherwise.  The initial value is <code>0</code>.
	*
	* <p> Subclasses that do not support offsetting tiles may ignore
	* this value.
	*/
	@:protected private var tileGridYOffset : Int;
	
	/**
	* The mode controlling progressive encoding, which must be set to
	* one of the four <code>MODE_*</code> values, except
	* <code>MODE_EXPLICIT</code>.  The default is
	* <code>MODE_COPY_FROM_METADATA</code>.
	*
	* <p> Subclasses that do not support progressive encoding may
	* ignore this value.
	*
	* @see #MODE_DISABLED
	* @see #MODE_EXPLICIT
	* @see #MODE_COPY_FROM_METADATA
	* @see #MODE_DEFAULT
	* @see #setProgressiveMode
	* @see #getProgressiveMode
	*/
	@:protected private var progressiveMode : Int;
	
	/**
	* The mode controlling compression settings, which must be set to
	* one of the four <code>MODE_*</code> values.  The default is
	* <code>MODE_COPY_FROM_METADATA</code>.
	*
	* <p> Subclasses that do not support compression may ignore this
	* value.
	*
	* @see #MODE_DISABLED
	* @see #MODE_EXPLICIT
	* @see #MODE_COPY_FROM_METADATA
	* @see #MODE_DEFAULT
	* @see #setCompressionMode
	* @see #getCompressionMode
	*/
	@:protected private var compressionMode : Int;
	
	/**
	* An array of <code>String</code>s containing the names of the
	* available compression types.  Subclasses must set the value
	* manually.
	*
	* <p> Subclasses that do not support compression may ignore this
	* value.
	*/
	@:protected private var compressionTypes : java.NativeArray<String>;
	
	/**
	* A <code>String</code> containing the name of the current
	* compression type, or <code>null</code> if none is set.
	*
	* <p> Subclasses that do not support compression may ignore this
	* value.
	*/
	@:protected private var compressionType : String;
	
	/**
	* A <code>float</code> containing the current compression quality
	* setting.  The initial value is <code>1.0F</code>.
	*
	* <p> Subclasses that do not support compression may ignore this
	* value.
	*/
	@:protected private var compressionQuality : Single;
	
	/**
	* A <code>Locale</code> to be used to localize compression type
	* names and quality descriptions, or <code>null</code> to use a
	* default <code>Locale</code>.  Subclasses must set the value
	* manually.
	*/
	@:protected private var locale : java.util.Locale;
	
	/**
	* Constructs an empty <code>ImageWriteParam</code>.  It is up to
	* the subclass to set up the instance variables properly.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Constructs an <code>ImageWriteParam</code> set to use a
	* given <code>Locale</code>.
	*
	* @param locale a <code>Locale</code> to be used to localize
	* compression type names and quality descriptions, or
	* <code>null</code>.
	*/
	@:overload @:public public function new(locale : java.util.Locale) : Void;
	
	/**
	* Returns the currently set <code>Locale</code>, or
	* <code>null</code> if only a default <code>Locale</code> is
	* supported.
	*
	* @return the current <code>Locale</code>, or <code>null</code>.
	*/
	@:overload @:public public function getLocale() : java.util.Locale;
	
	/**
	* Returns <code>true</code> if the writer can perform tiling
	* while writing.  If this method returns <code>false</code>, then
	* <code>setTiling</code> will throw an
	* <code>UnsupportedOperationException</code>.
	*
	* @return <code>true</code> if the writer supports tiling.
	*
	* @see #canOffsetTiles()
	* @see #setTiling(int, int, int, int)
	*/
	@:overload @:public public function canWriteTiles() : Bool;
	
	/**
	* Returns <code>true</code> if the writer can perform tiling with
	* non-zero grid offsets while writing.  If this method returns
	* <code>false</code>, then <code>setTiling</code> will throw an
	* <code>UnsupportedOperationException</code> if the grid offset
	* arguments are not both zero.  If <code>canWriteTiles</code>
	* returns <code>false</code>, this method will return
	* <code>false</code> as well.
	*
	* @return <code>true</code> if the writer supports non-zero tile
	* offsets.
	*
	* @see #canWriteTiles()
	* @see #setTiling(int, int, int, int)
	*/
	@:overload @:public public function canOffsetTiles() : Bool;
	
	/**
	* Determines whether the image will be tiled in the output
	* stream and, if it will, how the tiling parameters will be
	* determined.  The modes are interpreted as follows:
	*
	* <ul>
	*
	* <li><code>MODE_DISABLED</code> - The image will not be tiled.
	* <code>setTiling</code> will throw an
	* <code>IllegalStateException</code>.
	*
	* <li><code>MODE_DEFAULT</code> - The image will be tiled using
	* default parameters.  <code>setTiling</code> will throw an
	* <code>IllegalStateException</code>.
	*
	* <li><code>MODE_EXPLICIT</code> - The image will be tiled
	* according to parameters given in the {@link #setTiling
	* <code>setTiling</code>} method.  Any previously set tiling
	* parameters are discarded.
	*
	* <li><code>MODE_COPY_FROM_METADATA</code> - The image will
	* conform to the metadata object passed in to a write.
	* <code>setTiling</code> will throw an
	* <code>IllegalStateException</code>.
	*
	* </ul>
	*
	* @param mode The mode to use for tiling.
	*
	* @exception UnsupportedOperationException if
	* <code>canWriteTiles</code> returns <code>false</code>.
	* @exception IllegalArgumentException if <code>mode</code> is not
	* one of the modes listed above.
	*
	* @see #setTiling
	* @see #getTilingMode
	*/
	@:overload @:public public function setTilingMode(mode : Int) : Void;
	
	/**
	* Returns the current tiling mode, if tiling is supported.
	* Otherwise throws an <code>UnsupportedOperationException</code>.
	*
	* @return the current tiling mode.
	*
	* @exception UnsupportedOperationException if
	* <code>canWriteTiles</code> returns <code>false</code>.
	*
	* @see #setTilingMode
	*/
	@:overload @:public public function getTilingMode() : Int;
	
	/**
	* Returns an array of <code>Dimension</code>s indicating the
	* legal size ranges for tiles as they will be encoded in the
	* output file or stream.  The returned array is a copy.
	*
	* <p> The information is returned as a set of pairs; the first
	* element of a pair contains an (inclusive) minimum width and
	* height, and the second element contains an (inclusive) maximum
	* width and height.  Together, each pair defines a valid range of
	* sizes.  To specify a fixed size, use the same width and height
	* for both elements.  To specify an arbitrary range, a value of
	* <code>null</code> is used in place of an actual array of
	* <code>Dimension</code>s.
	*
	* <p> If no array is specified on the constructor, but tiling is
	* allowed, then this method returns <code>null</code>.
	*
	* @exception UnsupportedOperationException if the plug-in does
	* not support tiling.
	*
	* @return an array of <code>Dimension</code>s with an even length
	* of at least two, or <code>null</code>.
	*/
	@:overload @:public public function getPreferredTileSizes() : java.NativeArray<java.awt.Dimension>;
	
	/**
	* Specifies that the image should be tiled in the output stream.
	* The <code>tileWidth</code> and <code>tileHeight</code>
	* parameters specify the width and height of the tiles in the
	* file.  If the tile width or height is greater than the width or
	* height of the image, the image is not tiled in that dimension.
	*
	* <p> If <code>canOffsetTiles</code> returns <code>false</code>,
	* then the <code>tileGridXOffset</code> and
	* <code>tileGridYOffset</code> parameters must be zero.
	*
	* @param tileWidth the width of each tile.
	* @param tileHeight the height of each tile.
	* @param tileGridXOffset the horizontal offset of the tile grid.
	* @param tileGridYOffset the vertical offset of the tile grid.
	*
	* @exception UnsupportedOperationException if the plug-in does not
	* support tiling.
	* @exception IllegalStateException if the tiling mode is not
	* <code>MODE_EXPLICIT</code>.
	* @exception UnsupportedOperationException if the plug-in does not
	* support grid offsets, and the grid offsets are not both zero.
	* @exception IllegalArgumentException if the tile size is not
	* within one of the allowable ranges returned by
	* <code>getPreferredTileSizes</code>.
	* @exception IllegalArgumentException if <code>tileWidth</code>
	* or <code>tileHeight</code> is less than or equal to 0.
	*
	* @see #canWriteTiles
	* @see #canOffsetTiles
	* @see #getTileWidth()
	* @see #getTileHeight()
	* @see #getTileGridXOffset()
	* @see #getTileGridYOffset()
	*/
	@:overload @:public public function setTiling(tileWidth : Int, tileHeight : Int, tileGridXOffset : Int, tileGridYOffset : Int) : Void;
	
	/**
	* Removes any previous tile grid parameters specified by calls to
	* <code>setTiling</code>.
	*
	* <p> The default implementation sets the instance variables
	* <code>tileWidth</code>, <code>tileHeight</code>,
	* <code>tileGridXOffset</code>, and
	* <code>tileGridYOffset</code> to <code>0</code>.
	*
	* @exception UnsupportedOperationException if the plug-in does not
	* support tiling.
	* @exception IllegalStateException if the tiling mode is not
	* <code>MODE_EXPLICIT</code>.
	*
	* @see #setTiling(int, int, int, int)
	*/
	@:overload @:public public function unsetTiling() : Void;
	
	/**
	* Returns the width of each tile in an image as it will be
	* written to the output stream.  If tiling parameters have not
	* been set, an <code>IllegalStateException</code> is thrown.
	*
	* @return the tile width to be used for encoding.
	*
	* @exception UnsupportedOperationException if the plug-in does not
	* support tiling.
	* @exception IllegalStateException if the tiling mode is not
	* <code>MODE_EXPLICIT</code>.
	* @exception IllegalStateException if the tiling parameters have
	* not been set.
	*
	* @see #setTiling(int, int, int, int)
	* @see #getTileHeight()
	*/
	@:overload @:public public function getTileWidth() : Int;
	
	/**
	* Returns the height of each tile in an image as it will be written to
	* the output stream.  If tiling parameters have not
	* been set, an <code>IllegalStateException</code> is thrown.
	*
	* @return the tile height to be used for encoding.
	*
	* @exception UnsupportedOperationException if the plug-in does not
	* support tiling.
	* @exception IllegalStateException if the tiling mode is not
	* <code>MODE_EXPLICIT</code>.
	* @exception IllegalStateException if the tiling parameters have
	* not been set.
	*
	* @see #setTiling(int, int, int, int)
	* @see #getTileWidth()
	*/
	@:overload @:public public function getTileHeight() : Int;
	
	/**
	* Returns the horizontal tile grid offset of an image as it will
	* be written to the output stream.  If tiling parameters have not
	* been set, an <code>IllegalStateException</code> is thrown.
	*
	* @return the tile grid X offset to be used for encoding.
	*
	* @exception UnsupportedOperationException if the plug-in does not
	* support tiling.
	* @exception IllegalStateException if the tiling mode is not
	* <code>MODE_EXPLICIT</code>.
	* @exception IllegalStateException if the tiling parameters have
	* not been set.
	*
	* @see #setTiling(int, int, int, int)
	* @see #getTileGridYOffset()
	*/
	@:overload @:public public function getTileGridXOffset() : Int;
	
	/**
	* Returns the vertical tile grid offset of an image as it will
	* be written to the output stream.  If tiling parameters have not
	* been set, an <code>IllegalStateException</code> is thrown.
	*
	* @return the tile grid Y offset to be used for encoding.
	*
	* @exception UnsupportedOperationException if the plug-in does not
	* support tiling.
	* @exception IllegalStateException if the tiling mode is not
	* <code>MODE_EXPLICIT</code>.
	* @exception IllegalStateException if the tiling parameters have
	* not been set.
	*
	* @see #setTiling(int, int, int, int)
	* @see #getTileGridXOffset()
	*/
	@:overload @:public public function getTileGridYOffset() : Int;
	
	/**
	* Returns <code>true</code> if the writer can write out images
	* as a series of passes of progressively increasing quality.
	*
	* @return <code>true</code> if the writer supports progressive
	* encoding.
	*
	* @see #setProgressiveMode
	* @see #getProgressiveMode
	*/
	@:overload @:public public function canWriteProgressive() : Bool;
	
	/**
	* Specifies that the writer is to write the image out in a
	* progressive mode such that the stream will contain a series of
	* scans of increasing quality.  If progressive encoding is not
	* supported, an <code>UnsupportedOperationException</code> will
	* be thrown.
	*
	* <p>  The mode argument determines how
	* the progression parameters are chosen, and must be either
	* <code>MODE_DISABLED</code>,
	* <code>MODE_COPY_FROM_METADATA</code>, or
	* <code>MODE_DEFAULT</code>.  Otherwise an
	* <code>IllegalArgumentException</code> is thrown.
	*
	* <p> The modes are interpreted as follows:
	*
	* <ul>
	*   <li><code>MODE_DISABLED</code> - No progression.  Use this to
	*   turn off progession.
	*
	*   <li><code>MODE_COPY_FROM_METADATA</code> - The output image
	*   will use whatever progression parameters are found in the
	*   metadata objects passed into the writer.
	*
	*   <li><code>MODE_DEFAULT</code> - The image will be written
	*   progressively, with parameters chosen by the writer.
	* </ul>
	*
	* <p> The default is <code>MODE_COPY_FROM_METADATA</code>.
	*
	* @param mode The mode for setting progression in the output
	* stream.
	*
	* @exception UnsupportedOperationException if the writer does not
	* support progressive encoding.
	* @exception IllegalArgumentException if <code>mode</code> is not
	* one of the modes listed above.
	*
	* @see #getProgressiveMode
	*/
	@:overload @:public public function setProgressiveMode(mode : Int) : Void;
	
	/**
	* Returns the current mode for writing the stream in a
	* progressive manner.
	*
	* @return the current mode for progressive encoding.
	*
	* @exception UnsupportedOperationException if the writer does not
	* support progressive encoding.
	*
	* @see #setProgressiveMode
	*/
	@:overload @:public public function getProgressiveMode() : Int;
	
	/**
	* Returns <code>true</code> if this writer supports compression.
	*
	* @return <code>true</code> if the writer supports compression.
	*/
	@:overload @:public public function canWriteCompressed() : Bool;
	
	/**
	* Specifies whether compression is to be performed, and if so how
	* compression parameters are to be determined.  The <code>mode</code>
	* argument must be one of the four modes, interpreted as follows:
	*
	* <ul>
	*   <li><code>MODE_DISABLED</code> - If the mode is set to
	*   <code>MODE_DISABLED</code>, methods that query or modify the
	*   compression type or parameters will throw an
	*   <code>IllegalStateException</code> (if compression is
	*   normally supported by the plug-in). Some writers, such as JPEG,
	*   do not normally offer uncompressed output. In this case, attempting
	*   to set the mode to <code>MODE_DISABLED</code> will throw an
	*   <code>UnsupportedOperationException</code> and the mode will not be
	*   changed.
	*
	*   <li><code>MODE_EXPLICIT</code> - Compress using the
	*   compression type and quality settings specified in this
	*   <code>ImageWriteParam</code>.  Any previously set compression
	*   parameters are discarded.
	*
	*   <li><code>MODE_COPY_FROM_METADATA</code> - Use whatever
	*   compression parameters are specified in metadata objects
	*   passed in to the writer.
	*
	*   <li><code>MODE_DEFAULT</code> - Use default compression
	*   parameters.
	* </ul>
	*
	* <p> The default is <code>MODE_COPY_FROM_METADATA</code>.
	*
	* @param mode The mode for setting compression in the output
	* stream.
	*
	* @exception UnsupportedOperationException if the writer does not
	* support compression, or does not support the requested mode.
	* @exception IllegalArgumentException if <code>mode</code> is not
	* one of the modes listed above.
	*
	* @see #getCompressionMode
	*/
	@:overload @:public public function setCompressionMode(mode : Int) : Void;
	
	/**
	* Returns the current compression mode, if compression is
	* supported.
	*
	* @return the current compression mode.
	*
	* @exception UnsupportedOperationException if the writer does not
	* support compression.
	*
	* @see #setCompressionMode
	*/
	@:overload @:public public function getCompressionMode() : Int;
	
	/**
	* Returns a list of available compression types, as an array or
	* <code>String</code>s, or <code>null</code> if a compression
	* type may not be chosen using these interfaces.  The array
	* returned is a copy.
	*
	* <p> If the writer only offers a single, mandatory form of
	* compression, it is not necessary to provide any named
	* compression types.  Named compression types should only be
	* used where the user is able to make a meaningful choice
	* between different schemes.
	*
	* <p> The default implementation checks if compression is
	* supported and throws an
	* <code>UnsupportedOperationException</code> if not.  Otherwise,
	* it returns a clone of the <code>compressionTypes</code>
	* instance variable if it is non-<code>null</code>, or else
	* returns <code>null</code>.
	*
	* @return an array of <code>String</code>s containing the
	* (non-localized) names of available compression types, or
	* <code>null</code>.
	*
	* @exception UnsupportedOperationException if the writer does not
	* support compression.
	*/
	@:overload @:public public function getCompressionTypes() : java.NativeArray<String>;
	
	/**
	* Sets the compression type to one of the values indicated by
	* <code>getCompressionTypes</code>.  If a value of
	* <code>null</code> is passed in, any previous setting is
	* removed.
	*
	* <p> The default implementation checks whether compression is
	* supported and the compression mode is
	* <code>MODE_EXPLICIT</code>.  If so, it calls
	* <code>getCompressionTypes</code> and checks if
	* <code>compressionType</code> is one of the legal values.  If it
	* is, the <code>compressionType</code> instance variable is set.
	* If <code>compressionType</code> is <code>null</code>, the
	* instance variable is set without performing any checking.
	*
	* @param compressionType one of the <code>String</code>s returned
	* by <code>getCompressionTypes</code>, or <code>null</code> to
	* remove any previous setting.
	*
	* @exception UnsupportedOperationException if the writer does not
	* support compression.
	* @exception IllegalStateException if the compression mode is not
	* <code>MODE_EXPLICIT</code>.
	* @exception UnsupportedOperationException if there are no
	* settable compression types.
	* @exception IllegalArgumentException if
	* <code>compressionType</code> is non-<code>null</code> but is not
	* one of the values returned by <code>getCompressionTypes</code>.
	*
	* @see #getCompressionTypes
	* @see #getCompressionType
	* @see #unsetCompression
	*/
	@:overload @:public public function setCompressionType(compressionType : String) : Void;
	
	/**
	* Returns the currently set compression type, or
	* <code>null</code> if none has been set.  The type is returned
	* as a <code>String</code> from among those returned by
	* <code>getCompressionTypes</code>.
	* If no compression type has been set, <code>null</code> is
	* returned.
	*
	* <p> The default implementation checks whether compression is
	* supported and the compression mode is
	* <code>MODE_EXPLICIT</code>.  If so, it returns the value of the
	* <code>compressionType</code> instance variable.
	*
	* @return the current compression type as a <code>String</code>,
	* or <code>null</code> if no type is set.
	*
	* @exception UnsupportedOperationException if the writer does not
	* support compression.
	* @exception IllegalStateException if the compression mode is not
	* <code>MODE_EXPLICIT</code>.
	*
	* @see #setCompressionType
	*/
	@:overload @:public public function getCompressionType() : String;
	
	/**
	* Removes any previous compression type and quality settings.
	*
	* <p> The default implementation sets the instance variable
	* <code>compressionType</code> to <code>null</code>, and the
	* instance variable <code>compressionQuality</code> to
	* <code>1.0F</code>.
	*
	* @exception UnsupportedOperationException if the plug-in does not
	* support compression.
	* @exception IllegalStateException if the compression mode is not
	* <code>MODE_EXPLICIT</code>.
	*
	* @see #setCompressionType
	* @see #setCompressionQuality
	*/
	@:overload @:public public function unsetCompression() : Void;
	
	/**
	* Returns a localized version of the name of the current
	* compression type, using the <code>Locale</code> returned by
	* <code>getLocale</code>.
	*
	* <p> The default implementation checks whether compression is
	* supported and the compression mode is
	* <code>MODE_EXPLICIT</code>.  If so, if
	* <code>compressionType</code> is <code>non-null</code> the value
	* of <code>getCompressionType</code> is returned as a
	* convenience.
	*
	* @return a <code>String</code> containing a localized version of
	* the name of the current compression type.
	*
	* @exception UnsupportedOperationException if the writer does not
	* support compression.
	* @exception IllegalStateException if the compression mode is not
	* <code>MODE_EXPLICIT</code>.
	* @exception IllegalStateException if no compression type is set.
	*/
	@:overload @:public public function getLocalizedCompressionTypeName() : String;
	
	/**
	* Returns <code>true</code> if the current compression type
	* provides lossless compression.  If a plug-in provides only
	* one mandatory compression type, then this method may be
	* called without calling <code>setCompressionType</code> first.
	*
	* <p> If there are multiple compression types but none has
	* been set, an <code>IllegalStateException</code> is thrown.
	*
	* <p> The default implementation checks whether compression is
	* supported and the compression mode is
	* <code>MODE_EXPLICIT</code>.  If so, if
	* <code>getCompressionTypes()</code> is <code>null</code> or
	* <code>getCompressionType()</code> is non-<code>null</code>
	* <code>true</code> is returned as a convenience.
	*
	* @return <code>true</code> if the current compression type is
	* lossless.
	*
	* @exception UnsupportedOperationException if the writer does not
	* support compression.
	* @exception IllegalStateException if the compression mode is not
	* <code>MODE_EXPLICIT</code>.
	* @exception IllegalStateException if the set of legal
	* compression types is non-<code>null</code> and the current
	* compression type is <code>null</code>.
	*/
	@:overload @:public public function isCompressionLossless() : Bool;
	
	/**
	* Sets the compression quality to a value between <code>0</code>
	* and <code>1</code>.  Only a single compression quality setting
	* is supported by default; writers can provide extended versions
	* of <code>ImageWriteParam</code> that offer more control.  For
	* lossy compression schemes, the compression quality should
	* control the tradeoff between file size and image quality (for
	* example, by choosing quantization tables when writing JPEG
	* images).  For lossless schemes, the compression quality may be
	* used to control the tradeoff between file size and time taken
	* to perform the compression (for example, by optimizing row
	* filters and setting the ZLIB compression level when writing
	* PNG images).
	*
	* <p> A compression quality setting of 0.0 is most generically
	* interpreted as "high compression is important," while a setting of
	* 1.0 is most generically interpreted as "high image quality is
	* important."
	*
	* <p> If there are multiple compression types but none has been
	* set, an <code>IllegalStateException</code> is thrown.
	*
	* <p> The default implementation checks that compression is
	* supported, and that the compression mode is
	* <code>MODE_EXPLICIT</code>.  If so, if
	* <code>getCompressionTypes()</code> returns <code>null</code> or
	* <code>compressionType</code> is non-<code>null</code> it sets
	* the <code>compressionQuality</code> instance variable.
	*
	* @param quality a <code>float</code> between <code>0</code>and
	* <code>1</code> indicating the desired quality level.
	*
	* @exception UnsupportedOperationException if the writer does not
	* support compression.
	* @exception IllegalStateException if the compression mode is not
	* <code>MODE_EXPLICIT</code>.
	* @exception IllegalStateException if the set of legal
	* compression types is non-<code>null</code> and the current
	* compression type is <code>null</code>.
	* @exception IllegalArgumentException if <code>quality</code> is
	* not between <code>0</code>and <code>1</code>, inclusive.
	*
	* @see #getCompressionQuality
	*/
	@:overload @:public public function setCompressionQuality(quality : Single) : Void;
	
	/**
	* Returns the current compression quality setting.
	*
	* <p> If there are multiple compression types but none has been
	* set, an <code>IllegalStateException</code> is thrown.
	*
	* <p> The default implementation checks that compression is
	* supported and that the compression mode is
	* <code>MODE_EXPLICIT</code>.  If so, if
	* <code>getCompressionTypes()</code> is <code>null</code> or
	* <code>getCompressionType()</code> is non-<code>null</code>, it
	* returns the value of the <code>compressionQuality</code>
	* instance variable.
	*
	* @return the current compression quality setting.
	*
	* @exception UnsupportedOperationException if the writer does not
	* support compression.
	* @exception IllegalStateException if the compression mode is not
	* <code>MODE_EXPLICIT</code>.
	* @exception IllegalStateException if the set of legal
	* compression types is non-<code>null</code> and the current
	* compression type is <code>null</code>.
	*
	* @see #setCompressionQuality
	*/
	@:overload @:public public function getCompressionQuality() : Single;
	
	/**
	* Returns a <code>float</code> indicating an estimate of the
	* number of bits of output data for each bit of input image data
	* at the given quality level.  The value will typically lie
	* between <code>0</code> and <code>1</code>, with smaller values
	* indicating more compression.  A special value of
	* <code>-1.0F</code> is used to indicate that no estimate is
	* available.
	*
	* <p> If there are multiple compression types but none has been set,
	* an <code>IllegalStateException</code> is thrown.
	*
	* <p> The default implementation checks that compression is
	* supported and the compression mode is
	* <code>MODE_EXPLICIT</code>.  If so, if
	* <code>getCompressionTypes()</code> is <code>null</code> or
	* <code>getCompressionType()</code> is non-<code>null</code>, and
	* <code>quality</code> is within bounds, it returns
	* <code>-1.0</code>.
	*
	* @param quality the quality setting whose bit rate is to be
	* queried.
	*
	* @return an estimate of the compressed bit rate, or
	* <code>-1.0F</code> if no estimate is available.
	*
	* @exception UnsupportedOperationException if the writer does not
	* support compression.
	* @exception IllegalStateException if the compression mode is not
	* <code>MODE_EXPLICIT</code>.
	* @exception IllegalStateException if the set of legal
	* compression types is non-<code>null</code> and the current
	* compression type is <code>null</code>.
	* @exception IllegalArgumentException if <code>quality</code> is
	* not between <code>0</code>and <code>1</code>, inclusive.
	*/
	@:overload @:public public function getBitRate(quality : Single) : Single;
	
	/**
	* Returns an array of <code>String</code>s that may be used along
	* with <code>getCompressionQualityValues</code> as part of a user
	* interface for setting or displaying the compression quality
	* level.  The <code>String</code> with index <code>i</code>
	* provides a description of the range of quality levels between
	* <code>getCompressionQualityValues[i]</code> and
	* <code>getCompressionQualityValues[i + 1]</code>.  Note that the
	* length of the array returned from
	* <code>getCompressionQualityValues</code> will always be one
	* greater than that returned from
	* <code>getCompressionQualityDescriptions</code>.
	*
	* <p> As an example, the strings "Good", "Better", and "Best"
	* could be associated with the ranges <code>[0, .33)</code>,
	* <code>[.33, .66)</code>, and <code>[.66, 1.0]</code>.  In this
	* case, <code>getCompressionQualityDescriptions</code> would
	* return <code>{ "Good", "Better", "Best" }</code> and
	* <code>getCompressionQualityValues</code> would return
	* <code>{ 0.0F, .33F, .66F, 1.0F }</code>.
	*
	* <p> If no descriptions are available, <code>null</code> is
	* returned.  If <code>null</code> is returned from
	* <code>getCompressionQualityValues</code>, this method must also
	* return <code>null</code>.
	*
	* <p> The descriptions should be localized for the
	* <code>Locale</code> returned by <code>getLocale</code>, if it
	* is non-<code>null</code>.
	*
	* <p> If there are multiple compression types but none has been set,
	* an <code>IllegalStateException</code> is thrown.
	*
	* <p> The default implementation checks that compression is
	* supported and that the compression mode is
	* <code>MODE_EXPLICIT</code>.  If so, if
	* <code>getCompressionTypes()</code> is <code>null</code> or
	* <code>getCompressionType()</code> is non-<code>null</code>, it
	* returns <code>null</code>.
	*
	* @return an array of <code>String</code>s containing localized
	* descriptions of the compression quality levels.
	*
	* @exception UnsupportedOperationException if the writer does not
	* support compression.
	* @exception IllegalStateException if the compression mode is not
	* <code>MODE_EXPLICIT</code>.
	* @exception IllegalStateException if the set of legal
	* compression types is non-<code>null</code> and the current
	* compression type is <code>null</code>.
	*
	* @see #getCompressionQualityValues
	*/
	@:overload @:public public function getCompressionQualityDescriptions() : java.NativeArray<String>;
	
	/**
	* Returns an array of <code>float</code>s that may be used along
	* with <code>getCompressionQualityDescriptions</code> as part of a user
	* interface for setting or displaying the compression quality
	* level.  See {@link #getCompressionQualityDescriptions
	* <code>getCompressionQualityDescriptions</code>} for more information.
	*
	* <p> If no descriptions are available, <code>null</code> is
	* returned.  If <code>null</code> is returned from
	* <code>getCompressionQualityDescriptions</code>, this method
	* must also return <code>null</code>.
	*
	* <p> If there are multiple compression types but none has been set,
	* an <code>IllegalStateException</code> is thrown.
	*
	* <p> The default implementation checks that compression is
	* supported and that the compression mode is
	* <code>MODE_EXPLICIT</code>.  If so, if
	* <code>getCompressionTypes()</code> is <code>null</code> or
	* <code>getCompressionType()</code> is non-<code>null</code>, it
	* returns <code>null</code>.
	*
	* @return an array of <code>float</code>s indicating the
	* boundaries between the compression quality levels as described
	* by the <code>String</code>s from
	* <code>getCompressionQualityDescriptions</code>.
	*
	* @exception UnsupportedOperationException if the writer does not
	* support compression.
	* @exception IllegalStateException if the compression mode is not
	* <code>MODE_EXPLICIT</code>.
	* @exception IllegalStateException if the set of legal
	* compression types is non-<code>null</code> and the current
	* compression type is <code>null</code>.
	*
	* @see #getCompressionQualityDescriptions
	*/
	@:overload @:public public function getCompressionQualityValues() : java.NativeArray<Single>;
	
	
}
