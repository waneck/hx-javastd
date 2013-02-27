package java.awt;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class RenderingHints implements java.util.Map<Dynamic, Dynamic> implements java.lang.Cloneable
{
	/**
	* Antialiasing hint key.
	* The {@code ANTIALIASING} hint controls whether or not the
	* geometry rendering methods of a {@link Graphics2D} object
	* will attempt to reduce aliasing artifacts along the edges
	* of shapes.
	* <p>
	* A typical antialiasing algorithm works by blending the existing
	* colors of the pixels along the boundary of a shape with the
	* requested fill paint according to the estimated partial pixel
	* coverage of the shape.
	* <p>
	* The allowable values for this hint are
	* <ul>
	* <li>{@link #VALUE_ANTIALIAS_ON}
	* <li>{@link #VALUE_ANTIALIAS_OFF}
	* <li>{@link #VALUE_ANTIALIAS_DEFAULT}
	* </ul>
	*/
	public static var KEY_ANTIALIASING(default, null) : RenderingHints_Key;
	
	/**
	* Antialiasing hint value -- rendering is done with antialiasing.
	* @see #KEY_ANTIALIASING
	*/
	public static var VALUE_ANTIALIAS_ON(default, null) : Dynamic;
	
	/**
	* Antialiasing hint value -- rendering is done without antialiasing.
	* @see #KEY_ANTIALIASING
	*/
	public static var VALUE_ANTIALIAS_OFF(default, null) : Dynamic;
	
	/**
	* Antialiasing hint value -- rendering is done with a default
	* antialiasing mode chosen by the implementation.
	* @see #KEY_ANTIALIASING
	*/
	public static var VALUE_ANTIALIAS_DEFAULT(default, null) : Dynamic;
	
	/**
	* Rendering hint key.
	* The {@code RENDERING} hint is a general hint that provides
	* a high level recommendation as to whether to bias algorithm
	* choices more for speed or quality when evaluating tradeoffs.
	* This hint could be consulted for any rendering or image
	* manipulation operation, but decisions will usually honor
	* other, more specific hints in preference to this hint.
	* <p>
	* The allowable values for this hint are
	* <ul>
	* <li>{@link #VALUE_RENDER_SPEED}
	* <li>{@link #VALUE_RENDER_QUALITY}
	* <li>{@link #VALUE_RENDER_DEFAULT}
	* </ul>
	*/
	public static var KEY_RENDERING(default, null) : RenderingHints_Key;
	
	/**
	* Rendering hint value -- rendering algorithms are chosen
	* with a preference for output speed.
	* @see #KEY_RENDERING
	*/
	public static var VALUE_RENDER_SPEED(default, null) : Dynamic;
	
	/**
	* Rendering hint value -- rendering algorithms are chosen
	* with a preference for output quality.
	* @see #KEY_RENDERING
	*/
	public static var VALUE_RENDER_QUALITY(default, null) : Dynamic;
	
	/**
	* Rendering hint value -- rendering algorithms are chosen
	* by the implementation for a good tradeoff of performance
	* vs. quality.
	* @see #KEY_RENDERING
	*/
	public static var VALUE_RENDER_DEFAULT(default, null) : Dynamic;
	
	/**
	* Dithering hint key.
	* The {@code DITHERING} hint controls how closely to approximate
	* a color when storing into a destination with limited color
	* resolution.
	* <p>
	* Some rendering destinations may support a limited number of
	* color choices which may not be able to accurately represent
	* the full spectrum of colors that can result during rendering
	* operations.
	* For such a destination the {@code DITHERING} hint controls
	* whether rendering is done with a flat solid fill of a single
	* pixel value which is the closest supported color to what was
	* requested, or whether shapes will be filled with a pattern of
	* colors which combine to better approximate that color.
	* <p>
	* The allowable values for this hint are
	* <ul>
	* <li>{@link #VALUE_DITHER_DISABLE}
	* <li>{@link #VALUE_DITHER_ENABLE}
	* <li>{@link #VALUE_DITHER_DEFAULT}
	* </ul>
	*/
	public static var KEY_DITHERING(default, null) : RenderingHints_Key;
	
	/**
	* Dithering hint value -- do not dither when rendering geometry.
	* @see #KEY_DITHERING
	*/
	public static var VALUE_DITHER_DISABLE(default, null) : Dynamic;
	
	/**
	* Dithering hint value -- dither when rendering geometry, if needed.
	* @see #KEY_DITHERING
	*/
	public static var VALUE_DITHER_ENABLE(default, null) : Dynamic;
	
	/**
	* Dithering hint value -- use a default for dithering chosen by
	* the implementation.
	* @see #KEY_DITHERING
	*/
	public static var VALUE_DITHER_DEFAULT(default, null) : Dynamic;
	
	/**
	* Text antialiasing hint key.
	* The {@code TEXT_ANTIALIASING} hint can control the use of
	* antialiasing algorithms for text independently of the
	* choice used for shape rendering.
	* Often an application may want to use antialiasing for text
	* only and not for other shapes.
	* Additionally, the algorithms for reducing the aliasing
	* artifacts for text are often more sophisticated than those
	* that have been developed for general rendering so this
	* hint key provides additional values which can control
	* the choices of some of those text-specific algorithms.
	* If left in the {@code DEFAULT} state, this hint will
	* generally defer to the value of the regular
	* {@link #KEY_ANTIALIASING} hint key.
	* <p>
	* The allowable values for this hint are
	* <ul>
	* <li>{@link #VALUE_TEXT_ANTIALIAS_ON}
	* <li>{@link #VALUE_TEXT_ANTIALIAS_OFF}
	* <li>{@link #VALUE_TEXT_ANTIALIAS_DEFAULT}
	* <li>{@link #VALUE_TEXT_ANTIALIAS_GASP}
	* <li>{@link #VALUE_TEXT_ANTIALIAS_LCD_HRGB}
	* <li>{@link #VALUE_TEXT_ANTIALIAS_LCD_HBGR}
	* <li>{@link #VALUE_TEXT_ANTIALIAS_LCD_VRGB}
	* <li>{@link #VALUE_TEXT_ANTIALIAS_LCD_VBGR}
	* </ul>
	*/
	public static var KEY_TEXT_ANTIALIASING(default, null) : RenderingHints_Key;
	
	/**
	* Text antialiasing hint value -- text rendering is done with
	* some form of antialiasing.
	* @see #KEY_TEXT_ANTIALIASING
	*/
	public static var VALUE_TEXT_ANTIALIAS_ON(default, null) : Dynamic;
	
	/**
	* Text antialiasing hint value -- text rendering is done without
	* any form of antialiasing.
	* @see #KEY_TEXT_ANTIALIASING
	*/
	public static var VALUE_TEXT_ANTIALIAS_OFF(default, null) : Dynamic;
	
	/**
	* Text antialiasing hint value -- text rendering is done according
	* to the {@link #KEY_ANTIALIASING} hint or a default chosen by the
	* implementation.
	* @see #KEY_TEXT_ANTIALIASING
	*/
	public static var VALUE_TEXT_ANTIALIAS_DEFAULT(default, null) : Dynamic;
	
	/**
	* Text antialiasing hint value -- text rendering is requested to
	* use information in the font resource which specifies for each point
	* size whether to apply {@link #VALUE_TEXT_ANTIALIAS_ON} or
	* {@link #VALUE_TEXT_ANTIALIAS_OFF}.
	* <p>
	* TrueType fonts typically provide this information in the 'gasp' table.
	* In the absence of this information, the behaviour for a particular
	* font and size is determined by implementation defaults.
	* <p>
	* <i>Note:</i>A font designer will typically carefully hint a font for
	* the most common user interface point sizes. Consequently the 'gasp'
	* table will likely specify to use only hinting at those sizes and not
	* "smoothing". So in many cases the resulting text display is
	* equivalent to {@code VALUE_TEXT_ANTIALIAS_OFF}.
	* This may be unexpected but is correct.
	* <p>
	* Logical fonts which are composed of multiple physical fonts will for
	* consistency will use the setting most appropriate for the overall
	* composite font.
	*
	* @see #KEY_TEXT_ANTIALIASING
	* @since 1.6
	*/
	@:require(java6) public static var VALUE_TEXT_ANTIALIAS_GASP(default, null) : Dynamic;
	
	/**
	* Text antialiasing hint value -- request that text be displayed
	* optimised for an LCD display with subpixels in order from display
	* left to right of R,G,B such that the horizontal subpixel resolution
	* is three times that of the full pixel horizontal resolution (HRGB).
	* This is the most common configuration.
	* Selecting this hint for displays with one of the other LCD subpixel
	* configurations will likely result in unfocused text.
	* <p>
	* <i>Notes:</i><br>
	* An implementation when choosing whether to apply any of the
	* LCD text hint values may take into account factors including requiring
	* color depth of the destination to be at least 15 bits per pixel
	* (ie 5 bits per color component),
	* characteristics of a font such as whether embedded bitmaps may
	* produce better results, or when displaying to a non-local networked
	* display device enabling it only if suitable protocols are available,
	* or ignoring the hint if performing very high resolution rendering
	* or the target device is not appropriate: eg when printing.
	* <p>
	* These hints can equally be applied when rendering to software images,
	* but these images may not then be suitable for general export, as the
	* text will have been rendered appropriately for a specific subpixel
	* organisation. Also lossy images are not a good choice, nor image
	* formats such as GIF which have limited colors.
	* So unless the image is destined solely for rendering on a
	* display device with the same configuration, some other text
	* anti-aliasing hint such as
	* {@link #VALUE_TEXT_ANTIALIAS_ON}
	* may be a better choice.
	* <p>Selecting a value which does not match the LCD display in use
	* will likely lead to a degradation in text quality.
	* On display devices (ie CRTs) which do not have the same characteristics
	* as LCD displays, the overall effect may appear similar to standard text
	* anti-aliasing, but the quality may be degraded by color distortion.
	* Analog connected LCD displays may also show little advantage over
	* standard text-antialiasing and be similar to CRTs.
	* <p>
	* In other words for the best results use an LCD display with a digital
	* display connector and specify the appropriate sub-pixel configuration.
	*
	* @see #KEY_TEXT_ANTIALIASING
	* @since 1.6
	*/
	@:require(java6) public static var VALUE_TEXT_ANTIALIAS_LCD_HRGB(default, null) : Dynamic;
	
	/**
	* Text antialiasing hint value -- request that text be displayed
	* optimised for an LCD display with subpixels in order from display
	* left to right of B,G,R such that the horizontal subpixel resolution
	* is three times that of the full pixel horizontal resolution (HBGR).
	* This is a much less common configuration than HRGB.
	* Selecting this hint for displays with one of the other LCD subpixel
	* configurations will likely result in unfocused text.
	* See {@link #VALUE_TEXT_ANTIALIAS_LCD_HRGB},
	* for more information on when this hint is applied.
	*
	* @see #KEY_TEXT_ANTIALIASING
	* @since 1.6
	*/
	@:require(java6) public static var VALUE_TEXT_ANTIALIAS_LCD_HBGR(default, null) : Dynamic;
	
	/**
	* Text antialiasing hint value -- request that text be displayed
	* optimised for an LCD display with subpixel organisation from display
	* top to bottom of R,G,B such that the vertical subpixel resolution is
	* three times that of the full pixel vertical resolution (VRGB).
	* Vertical orientation is very uncommon and probably mainly useful
	* for a physically rotated display.
	* Selecting this hint for displays with one of the other LCD subpixel
	* configurations will likely result in unfocused text.
	* See {@link #VALUE_TEXT_ANTIALIAS_LCD_HRGB},
	* for more information on when this hint is applied.
	*
	* @see #KEY_TEXT_ANTIALIASING
	* @since 1.6
	*/
	@:require(java6) public static var VALUE_TEXT_ANTIALIAS_LCD_VRGB(default, null) : Dynamic;
	
	/**
	* Text antialiasing hint value -- request that text be displayed
	* optimised for an LCD display with subpixel organisation from display
	* top to bottom of B,G,R such that the vertical subpixel resolution is
	* three times that of the full pixel vertical resolution (VBGR).
	* Vertical orientation is very uncommon and probably mainly useful
	* for a physically rotated display.
	* Selecting this hint for displays with one of the other LCD subpixel
	* configurations will likely result in unfocused text.
	* See {@link #VALUE_TEXT_ANTIALIAS_LCD_HRGB},
	* for more information on when this hint is applied.
	*
	* @see #KEY_TEXT_ANTIALIASING
	* @since 1.6
	*/
	@:require(java6) public static var VALUE_TEXT_ANTIALIAS_LCD_VBGR(default, null) : Dynamic;
	
	/**
	* LCD text contrast rendering hint key.
	* The value is an <code>Integer</code> object which is used as a text
	* contrast adjustment when used in conjunction with an LCD text
	* anti-aliasing hint such as
	* {@link #VALUE_TEXT_ANTIALIAS_LCD_HRGB}.
	* <ul>
	* <li>Values should be a positive integer in the range 100 to 250.
	* <li>A lower value (eg 100) corresponds to higher contrast text when
	* displaying dark text on a light background.
	* <li>A higher value (eg 200) corresponds to lower contrast text when
	* displaying dark text on a light background.
	* <li>A typical useful value is in the narrow range 140-180.
	* <li>If no value is specified, a system or implementation default value
	* will be applied.
	* </ul>
	* The default value can be expected to be adequate for most purposes,
	* so clients should rarely need to specify a value for this hint unless
	* they have concrete information as to an appropriate value.
	* A higher value does not mean a higher contrast, in fact the opposite
	* is true.
	* The correction is applied in a similar manner to a gamma adjustment
	* for non-linear perceptual luminance response of display systems, but
	* does not indicate a full correction for this.
	*
	* @see #KEY_TEXT_ANTIALIASING
	* @since 1.6
	*/
	@:require(java6) public static var KEY_TEXT_LCD_CONTRAST(default, null) : RenderingHints_Key;
	
	/**
	* Font fractional metrics hint key.
	* The {@code FRACTIONALMETRICS} hint controls whether the positioning
	* of individual character glyphs takes into account the sub-pixel
	* accuracy of the scaled character advances of the font or whether
	* such advance vectors are rounded to an integer number of whole
	* device pixels.
	* This hint only recommends how much accuracy should be used to
	* position the glyphs and does not specify or recommend whether or
	* not the actual rasterization or pixel bounds of the glyph should
	* be modified to match.
	* <p>
	* Rendering text to a low resolution device like a screen will
	* necessarily involve a number of rounding operations as the
	* high quality and very precise definition of the shape and
	* metrics of the character glyphs must be matched to discrete
	* device pixels.
	* Ideally the positioning of glyphs during text layout would be
	* calculated by scaling the design metrics in the font according
	* to the point size, but then the scaled advance width will not
	* necessarily be an integer number of pixels.
	* If the glyphs are positioned with sub-pixel accuracy according
	* to these scaled design metrics then the rasterization would
	* ideally need to be adjusted for each possible sub-pixel origin.
	* <p>
	* Unfortunately, scaling each glyph customized to its exact
	* subpixel origin during text layout would be prohibitively
	* expensive so a simplified system based on integer device
	* positions is typically used to lay out the text.
	* The rasterization of the glyph and the scaled advance width
	* are both adjusted together to yield text that looks good at
	* device resolution and has consistent integer pixel distances
	* between glyphs that help the glyphs look uniformly and
	* consistently spaced and readable.
	* <p>
	* This process of rounding advance widths for rasterized glyphs
	* to integer distances means that the character density and the
	* overall length of a string of text will be different from the
	* theoretical design measurements due to the accumulation of
	* a series of small differences in the adjusted widths of
	* each glyph.
	* The specific differences will be different for each glyph,
	* some being wider and some being narrower than their theoretical
	* design measurements.
	* Thus the overall difference in character density and length
	* will vary by a number of factors including the font, the
	* specific device resolution being targeted, and the glyphs
	* chosen to represent the string being rendered.
	* As a result, rendering the same string at multiple device
	* resolutions can yield widely varying metrics for whole strings.
	* <p>
	* When {@code FRACTIONALMETRICS} are enabled, the true font design
	* metrics are scaled by the point size and used for layout with
	* sub-pixel accuracy.
	* The average density of glyphs and total length of a long
	* string of characters will therefore more closely match the
	* theoretical design of the font, but readability may be affected
	* since individual pairs of characters may not always appear to
	* be consistent distances apart depending on how the sub-pixel
	* accumulation of the glyph origins meshes with the device pixel
	* grid.
	* Enabling this hint may be desirable when text layout is being
	* performed that must be consistent across a wide variety of
	* output resolutions.
	* Specifically, this hint may be desirable in situations where
	* the layout of text is being previewed on a low resolution
	* device like a screen for output that will eventually be
	* rendered on a high resolution printer or typesetting device.
	* <p>
	* When disabled, the scaled design metrics are rounded or adjusted
	* to integer distances for layout.
	* The distances between any specific pair of glyphs will be more
	* uniform on the device, but the density and total length of long
	* strings may no longer match the theoretical intentions of the
	* font designer.
	* Disabling this hint will typically produce more readable results
	* on low resolution devices like computer monitors.
	* <p>
	* The allowable values for this key are
	* <ul>
	* <li>{@link #VALUE_FRACTIONALMETRICS_OFF}
	* <li>{@link #VALUE_FRACTIONALMETRICS_ON}
	* <li>{@link #VALUE_FRACTIONALMETRICS_DEFAULT}
	* </ul>
	*/
	public static var KEY_FRACTIONALMETRICS(default, null) : RenderingHints_Key;
	
	/**
	* Font fractional metrics hint value -- character glyphs are
	* positioned with advance widths rounded to pixel boundaries.
	* @see #KEY_FRACTIONALMETRICS
	*/
	public static var VALUE_FRACTIONALMETRICS_OFF(default, null) : Dynamic;
	
	/**
	* Font fractional metrics hint value -- character glyphs are
	* positioned with sub-pixel accuracy.
	* @see #KEY_FRACTIONALMETRICS
	*/
	public static var VALUE_FRACTIONALMETRICS_ON(default, null) : Dynamic;
	
	/**
	* Font fractional metrics hint value -- character glyphs are
	* positioned with accuracy chosen by the implementation.
	* @see #KEY_FRACTIONALMETRICS
	*/
	public static var VALUE_FRACTIONALMETRICS_DEFAULT(default, null) : Dynamic;
	
	/**
	* Interpolation hint key.
	* The {@code INTERPOLATION} hint controls how image pixels are
	* filtered or resampled during an image rendering operation.
	* <p>
	* Implicitly images are defined to provide color samples at
	* integer coordinate locations.
	* When images are rendered upright with no scaling onto a
	* destination, the choice of which image pixels map to which
	* device pixels is obvious and the samples at the integer
	* coordinate locations in the image are transfered to the
	* pixels at the corresponding integer locations on the device
	* pixel grid one for one.
	* When images are rendered in a scaled, rotated, or otherwise
	* transformed coordinate system, then the mapping of device
	* pixel coordinates back to the image can raise the question
	* of what color sample to use for the continuous coordinates
	* that lie between the integer locations of the provided image
	* samples.
	* Interpolation algorithms define functions which provide a
	* color sample for any continuous coordinate in an image based
	* on the color samples at the surrounding integer coordinates.
	* <p>
	* The allowable values for this hint are
	* <ul>
	* <li>{@link #VALUE_INTERPOLATION_NEAREST_NEIGHBOR}
	* <li>{@link #VALUE_INTERPOLATION_BILINEAR}
	* <li>{@link #VALUE_INTERPOLATION_BICUBIC}
	* </ul>
	*/
	public static var KEY_INTERPOLATION(default, null) : RenderingHints_Key;
	
	/**
	* Interpolation hint value -- the color sample of the nearest
	* neighboring integer coordinate sample in the image is used.
	* Conceptually the image is viewed as a grid of unit-sized
	* square regions of color centered around the center of each
	* image pixel.
	* <p>
	* As the image is scaled up, it will look correspondingly blocky.
	* As the image is scaled down, the colors for source pixels will
	* be either used unmodified, or skipped entirely in the output
	* representation.
	*
	* @see #KEY_INTERPOLATION
	*/
	public static var VALUE_INTERPOLATION_NEAREST_NEIGHBOR(default, null) : Dynamic;
	
	/**
	* Interpolation hint value -- the color samples of the 4 nearest
	* neighboring integer coordinate samples in the image are
	* interpolated linearly to produce a color sample.
	* Conceptually the image is viewed as a set of infinitely small
	* point color samples which have value only at the centers of
	* integer coordinate pixels and the space between those pixel
	* centers is filled with linear ramps of colors that connect
	* adjacent discrete samples in a straight line.
	* <p>
	* As the image is scaled up, there are no blocky edges between
	* the colors in the image as there are with
	* {@link #VALUE_INTERPOLATION_NEAREST_NEIGHBOR NEAREST_NEIGHBOR},
	* but the blending may show some subtle discontinuities along the
	* horizontal and vertical edges that line up with the samples
	* caused by a sudden change in the slope of the interpolation
	* from one side of a sample to the other.
	* As the image is scaled down, more image pixels have their
	* color samples represented in the resulting output since each
	* output pixel recieves color information from up to 4 image
	* pixels.
	*
	* @see #KEY_INTERPOLATION
	*/
	public static var VALUE_INTERPOLATION_BILINEAR(default, null) : Dynamic;
	
	/**
	* Interpolation hint value -- the color samples of 9 nearby
	* integer coordinate samples in the image are interpolated using
	* a cubic function in both {@code X} and {@code Y} to produce
	* a color sample.
	* Conceptually the view of the image is very similar to the view
	* used in the {@link #VALUE_INTERPOLATION_BILINEAR BILINEAR}
	* algorithm except that the ramps of colors that connect between
	* the samples are curved and have better continuity of slope
	* as they cross over between sample boundaries.
	* <p>
	* As the image is scaled up, there are no blocky edges and the
	* interpolation should appear smoother and with better depictions
	* of any edges in the original image than with {@code BILINEAR}.
	* As the image is scaled down, even more of the original color
	* samples from the original image will have their color information
	* carried through and represented.
	*
	* @see #KEY_INTERPOLATION
	*/
	public static var VALUE_INTERPOLATION_BICUBIC(default, null) : Dynamic;
	
	/**
	* Alpha interpolation hint key.
	* The {@code ALPHA_INTERPOLATION} hint is a general hint that
	* provides a high level recommendation as to whether to bias
	* alpha blending algorithm choices more for speed or quality
	* when evaluating tradeoffs.
	* <p>
	* This hint could control the choice of alpha blending
	* calculations that sacrifice some precision to use fast
	* lookup tables or lower precision SIMD instructions.
	* This hint could also control whether or not the color
	* and alpha values are converted into a linear color space
	* during the calculations for a more linear visual effect
	* at the expense of additional per-pixel calculations.
	* <p>
	* The allowable values for this hint are
	* <ul>
	* <li>{@link #VALUE_ALPHA_INTERPOLATION_SPEED}
	* <li>{@link #VALUE_ALPHA_INTERPOLATION_QUALITY}
	* <li>{@link #VALUE_ALPHA_INTERPOLATION_DEFAULT}
	* </ul>
	*/
	public static var KEY_ALPHA_INTERPOLATION(default, null) : RenderingHints_Key;
	
	/**
	* Alpha interpolation hint value -- alpha blending algorithms
	* are chosen with a preference for calculation speed.
	* @see #KEY_ALPHA_INTERPOLATION
	*/
	public static var VALUE_ALPHA_INTERPOLATION_SPEED(default, null) : Dynamic;
	
	/**
	* Alpha interpolation hint value -- alpha blending algorithms
	* are chosen with a preference for precision and visual quality.
	* @see #KEY_ALPHA_INTERPOLATION
	*/
	public static var VALUE_ALPHA_INTERPOLATION_QUALITY(default, null) : Dynamic;
	
	/**
	* Alpha interpolation hint value -- alpha blending algorithms
	* are chosen by the implementation for a good tradeoff of
	* performance vs. quality.
	* @see #KEY_ALPHA_INTERPOLATION
	*/
	public static var VALUE_ALPHA_INTERPOLATION_DEFAULT(default, null) : Dynamic;
	
	/**
	* Color rendering hint key.
	* The {@code COLOR_RENDERING} hint controls the accuracy of
	* approximation and conversion when storing colors into a
	* destination image or surface.
	* <p>
	* When a rendering or image manipulation operation produces
	* a color value that must be stored into a destination, it
	* must first convert that color into a form suitable for
	* storing into the destination image or surface.
	* Minimally, the color components must be converted to bit
	* representations and ordered in the correct order or an
	* index into a color lookup table must be chosen before
	* the data can be stored into the destination memory.
	* Without this minimal conversion, the data in the destination
	* would likely represent random, incorrect or possibly even
	* unsupported values.
	* Algorithms to quickly convert the results of rendering
	* operations into the color format of most common destinations
	* are well known and fairly optimal to execute.
	* <p>
	* Simply performing the most basic color format conversion to
	* store colors into a destination can potentially ignore a
	* difference in the calibration of the
	* {@link java.awt.color.ColorSpace}
	* of the source and destination or other factors such as the
	* linearity of the gamma correction.
	* Unless the source and destination {@code ColorSpace} are
	* identical, to correctly perform a rendering operation with
	* the most care taken for the accuracy of the colors being
	* represented, the source colors should be converted to a
	* device independent {@code ColorSpace} and the results then
	* converted back to the destination {@code ColorSpace}.
	* Furthermore, if calculations such as the blending of multiple
	* source colors are to be performed during the rendering
	* operation, greater visual clarity can be achieved if the
	* intermediate device independent {@code ColorSpace} is
	* chosen to have a linear relationship between the values
	* being calculated and the perception of the human eye to
	* the response curves of the output device.
	* <p>
	* The allowable values for this hint are
	* <ul>
	* <li>{@link #VALUE_COLOR_RENDER_SPEED}
	* <li>{@link #VALUE_COLOR_RENDER_QUALITY}
	* <li>{@link #VALUE_COLOR_RENDER_DEFAULT}
	* </ul>
	*/
	public static var KEY_COLOR_RENDERING(default, null) : RenderingHints_Key;
	
	/**
	* Color rendering hint value -- perform the fastest color
	* conversion to the format of the output device.
	* @see #KEY_COLOR_RENDERING
	*/
	public static var VALUE_COLOR_RENDER_SPEED(default, null) : Dynamic;
	
	/**
	* Color rendering hint value -- perform the color conversion
	* calculations with the highest accuracy and visual quality.
	* @see #KEY_COLOR_RENDERING
	*/
	public static var VALUE_COLOR_RENDER_QUALITY(default, null) : Dynamic;
	
	/**
	* Color rendering hint value -- perform color conversion
	* calculations as chosen by the implementation to represent
	* the best available tradeoff between performance and
	* accuracy.
	* @see #KEY_COLOR_RENDERING
	*/
	public static var VALUE_COLOR_RENDER_DEFAULT(default, null) : Dynamic;
	
	/**
	* Stroke normalization control hint key.
	* The {@code STROKE_CONTROL} hint controls whether a rendering
	* implementation should or is allowed to modify the geometry
	* of rendered shapes for various purposes.
	* <p>
	* Some implementations may be able to use an optimized platform
	* rendering library which may be faster than traditional software
	* rendering algorithms on a given platform, but which may also
	* not support floating point coordinates.
	* Some implementations may also have sophisticated algorithms
	* which perturb the coordinates of a path so that wide lines
	* appear more uniform in width and spacing.
	* <p>
	* If an implementation performs any type of modification or
	* "normalization" of a path, it should never move the coordinates
	* by more than half a pixel in any direction.
	* <p>
	* The allowable values for this hint are
	* <ul>
	* <li>{@link #VALUE_STROKE_NORMALIZE}
	* <li>{@link #VALUE_STROKE_PURE}
	* <li>{@link #VALUE_STROKE_DEFAULT}
	* </ul>
	* @since 1.3
	*/
	@:require(java3) public static var KEY_STROKE_CONTROL(default, null) : RenderingHints_Key;
	
	/**
	* Stroke normalization control hint value -- geometry may be
	* modified or left pure depending on the tradeoffs in a given
	* implementation.
	* Typically this setting allows an implementation to use a fast
	* integer coordinate based platform rendering library, but does
	* not specifically request normalization for uniformity or
	* aesthetics.
	*
	* @see #KEY_STROKE_CONTROL
	* @since 1.3
	*/
	@:require(java3) public static var VALUE_STROKE_DEFAULT(default, null) : Dynamic;
	
	/**
	* Stroke normalization control hint value -- geometry should
	* be normalized to improve uniformity or spacing of lines and
	* overall aesthetics.
	* Note that different normalization algorithms may be more
	* successful than others for given input paths.
	*
	* @see #KEY_STROKE_CONTROL
	* @since 1.3
	*/
	@:require(java3) public static var VALUE_STROKE_NORMALIZE(default, null) : Dynamic;
	
	/**
	* Stroke normalization control hint value -- geometry should
	* be left unmodified and rendered with sub-pixel accuracy.
	*
	* @see #KEY_STROKE_CONTROL
	* @since 1.3
	*/
	@:require(java3) public static var VALUE_STROKE_PURE(default, null) : Dynamic;
	
	/**
	* Constructs a new object with keys and values initialized
	* from the specified Map object which may be null.
	* @param init a map of key/value pairs to initialize the hints
	*          or null if the object should be empty
	*/
	@:overload public function new(init : java.util.Map<RenderingHints_Key, Dynamic>) : Void;
	
	/**
	* Constructs a new object with the specified key/value pair.
	* @param key the key of the particular hint property
	* @param value the value of the hint property specified with
	* <code>key</code>
	*/
	@:overload public function new(key : RenderingHints_Key, value : Dynamic) : Void;
	
	/**
	* Returns the number of key-value mappings in this
	* <code>RenderingHints</code>.
	*
	* @return the number of key-value mappings in this
	* <code>RenderingHints</code>.
	*/
	@:overload public function size() : Int;
	
	/**
	* Returns <code>true</code> if this
	* <code>RenderingHints</code> contains no key-value mappings.
	*
	* @return <code>true</code> if this
	* <code>RenderingHints</code> contains no key-value mappings.
	*/
	@:overload public function isEmpty() : Bool;
	
	/**
	* Returns <code>true</code> if this <code>RenderingHints</code>
	*  contains a mapping for the specified key.
	*
	* @param key key whose presence in this
	* <code>RenderingHints</code> is to be tested.
	* @return <code>true</code> if this <code>RenderingHints</code>
	*          contains a mapping for the specified key.
	* @exception <code>ClassCastException</code> if the key can not
	*            be cast to <code>RenderingHints.Key</code>
	*/
	@:overload public function containsKey(key : Dynamic) : Bool;
	
	/**
	* Returns true if this RenderingHints maps one or more keys to the
	* specified value.
	* More formally, returns <code>true</code> if and only
	* if this <code>RenderingHints</code>
	* contains at least one mapping to a value <code>v</code> such that
	* <pre>
	* (value==null ? v==null : value.equals(v))
	* </pre>.
	* This operation will probably require time linear in the
	* <code>RenderingHints</code> size for most implementations
	* of <code>RenderingHints</code>.
	*
	* @param value value whose presence in this
	*          <code>RenderingHints</code> is to be tested.
	* @return <code>true</code> if this <code>RenderingHints</code>
	*           maps one or more keys to the specified value.
	*/
	@:overload public function containsValue(value : Dynamic) : Bool;
	
	/**
	* Returns the value to which the specified key is mapped.
	* @param   key   a rendering hint key
	* @return  the value to which the key is mapped in this object or
	*          <code>null</code> if the key is not mapped to any value in
	*          this object.
	* @exception <code>ClassCastException</code> if the key can not
	*            be cast to <code>RenderingHints.Key</code>
	* @see     #put(Object, Object)
	*/
	@:overload public function get(key : Dynamic) : Dynamic;
	
	/**
	* Maps the specified <code>key</code> to the specified
	* <code>value</code> in this <code>RenderingHints</code> object.
	* Neither the key nor the value can be <code>null</code>.
	* The value can be retrieved by calling the <code>get</code> method
	* with a key that is equal to the original key.
	* @param      key     the rendering hint key.
	* @param      value   the rendering hint value.
	* @return     the previous value of the specified key in this object
	*             or <code>null</code> if it did not have one.
	* @exception <code>NullPointerException</code> if the key is
	*            <code>null</code>.
	* @exception <code>ClassCastException</code> if the key can not
	*            be cast to <code>RenderingHints.Key</code>
	* @exception <code>IllegalArgumentException</code> if the
	*            {@link Key#isCompatibleValue(java.lang.Object)
	*                   Key.isCompatibleValue()}
	*            method of the specified key returns false for the
	*            specified value
	* @see     #get(Object)
	*/
	@:overload public function put(key : Dynamic, value : Dynamic) : Dynamic;
	
	/**
	* Adds all of the keys and corresponding values from the specified
	* <code>RenderingHints</code> object to this
	* <code>RenderingHints</code> object. Keys that are present in
	* this <code>RenderingHints</code> object, but not in the specified
	* <code>RenderingHints</code> object are not affected.
	* @param hints the set of key/value pairs to be added to this
	* <code>RenderingHints</code> object
	*/
	@:overload public function add(hints : RenderingHints) : Void;
	
	/**
	* Clears this <code>RenderingHints</code> object of all key/value
	* pairs.
	*/
	@:overload public function clear() : Void;
	
	/**
	* Removes the key and its corresponding value from this
	* <code>RenderingHints</code> object. This method does nothing if the
	* key is not in this <code>RenderingHints</code> object.
	* @param   key   the rendering hints key that needs to be removed
	* @exception <code>ClassCastException</code> if the key can not
	*            be cast to <code>RenderingHints.Key</code>
	* @return  the value to which the key had previously been mapped in this
	*          <code>RenderingHints</code> object, or <code>null</code>
	*          if the key did not have a mapping.
	*/
	@:overload public function remove(key : Dynamic) : Dynamic;
	
	/**
	* Copies all of the mappings from the specified <code>Map</code>
	* to this <code>RenderingHints</code>.  These mappings replace
	* any mappings that this <code>RenderingHints</code> had for any
	* of the keys currently in the specified <code>Map</code>.
	* @param m the specified <code>Map</code>
	* @exception <code>ClassCastException</code> class of a key or value
	*          in the specified <code>Map</code> prevents it from being
	*          stored in this <code>RenderingHints</code>.
	* @exception <code>IllegalArgumentException</code> some aspect
	*          of a key or value in the specified <code>Map</code>
	*           prevents it from being stored in
	*            this <code>RenderingHints</code>.
	*/
	@:overload public function putAll(m : java.util.Map<Dynamic, Dynamic>) : Void;
	
	/**
	* Returns a <code>Set</code> view of the Keys contained in this
	* <code>RenderingHints</code>.  The Set is backed by the
	* <code>RenderingHints</code>, so changes to the
	* <code>RenderingHints</code> are reflected in the <code>Set</code>,
	* and vice-versa.  If the <code>RenderingHints</code> is modified
	* while an iteration over the <code>Set</code> is in progress,
	* the results of the iteration are undefined.  The <code>Set</code>
	* supports element removal, which removes the corresponding
	* mapping from the <code>RenderingHints</code>, via the
	* <code>Iterator.remove</code>, <code>Set.remove</code>,
	* <code>removeAll</code> <code>retainAll</code>, and
	* <code>clear</code> operations.  It does not support
	* the <code>add</code> or <code>addAll</code> operations.
	*
	* @return a <code>Set</code> view of the keys contained
	* in this <code>RenderingHints</code>.
	*/
	@:overload public function keySet() : java.util.Set<Dynamic>;
	
	/**
	* Returns a <code>Collection</code> view of the values
	* contained in this <code>RenderinHints</code>.
	* The <code>Collection</code> is backed by the
	* <code>RenderingHints</code>, so changes to
	* the <code>RenderingHints</code> are reflected in
	* the <code>Collection</code>, and vice-versa.
	* If the <code>RenderingHints</code> is modified while
	* an iteration over the <code>Collection</code> is
	* in progress, the results of the iteration are undefined.
	* The <code>Collection</code> supports element removal,
	* which removes the corresponding mapping from the
	* <code>RenderingHints</code>, via the
	* <code>Iterator.remove</code>,
	* <code>Collection.remove</code>, <code>removeAll</code>,
	* <code>retainAll</code> and <code>clear</code> operations.
	* It does not support the <code>add</code> or
	* <code>addAll</code> operations.
	*
	* @return a <code>Collection</code> view of the values
	*          contained in this <code>RenderingHints</code>.
	*/
	@:overload public function values() : java.util.Collection<Dynamic>;
	
	/**
	* Returns a <code>Set</code> view of the mappings contained
	* in this <code>RenderingHints</code>.  Each element in the
	* returned <code>Set</code> is a <code>Map.Entry</code>.
	* The <code>Set</code> is backed by the <code>RenderingHints</code>,
	* so changes to the <code>RenderingHints</code> are reflected
	* in the <code>Set</code>, and vice-versa.  If the
	* <code>RenderingHints</code> is modified while
	* while an iteration over the <code>Set</code> is in progress,
	* the results of the iteration are undefined.
	* <p>
	* The entrySet returned from a <code>RenderingHints</code> object
	* is not modifiable.
	*
	* @return a <code>Set</code> view of the mappings contained in
	* this <code>RenderingHints</code>.
	*/
	@:overload public function entrySet() : java.util.Set<java.util.Map.Map_Entry<Dynamic, Dynamic>>;
	
	/**
	* Compares the specified <code>Object</code> with this
	* <code>RenderingHints</code> for equality.
	* Returns <code>true</code> if the specified object is also a
	* <code>Map</code> and the two <code>Map</code> objects represent
	* the same mappings.  More formally, two <code>Map</code> objects
	* <code>t1</code> and <code>t2</code> represent the same mappings
	* if <code>t1.keySet().equals(t2.keySet())</code> and for every
	* key <code>k</code> in <code>t1.keySet()</code>,
	* <pre>
	* (t1.get(k)==null ? t2.get(k)==null : t1.get(k).equals(t2.get(k)))
	* </pre>.
	* This ensures that the <code>equals</code> method works properly across
	* different implementations of the <code>Map</code> interface.
	*
	* @param o <code>Object</code> to be compared for equality with
	* this <code>RenderingHints</code>.
	* @return <code>true</code> if the specified <code>Object</code>
	* is equal to this <code>RenderingHints</code>.
	*/
	@:overload public function equals(o : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this <code>RenderingHints</code>.
	* The hash code of a <code>RenderingHints</code> is defined to be
	* the sum of the hashCodes of each <code>Entry</code> in the
	* <code>RenderingHints</code> object's entrySet view.  This ensures that
	* <code>t1.equals(t2)</code> implies that
	* <code>t1.hashCode()==t2.hashCode()</code> for any two <code>Map</code>
	* objects <code>t1</code> and <code>t2</code>, as required by the general
	* contract of <code>Object.hashCode</code>.
	*
	* @return the hash code value for this <code>RenderingHints</code>.
	* @see java.util.Map.Entry#hashCode()
	* @see Object#hashCode()
	* @see Object#equals(Object)
	* @see #equals(Object)
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Creates a clone of this <code>RenderingHints</code> object
	* that has the same contents as this <code>RenderingHints</code>
	* object.
	* @return a clone of this instance.
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* Returns a rather long string representation of the hashmap
	* which contains the mappings of keys to values for this
	* <code>RenderingHints</code> object.
	* @return  a string representation of this object.
	*/
	@:overload public function toString() : String;
	
	
}
/**
* Defines the base type of all keys used along with the
* {@link RenderingHints} class to control various
* algorithm choices in the rendering and imaging pipelines.
* Instances of this class are immutable and unique which
* means that tests for matches can be made using the
* {@code ==} operator instead of the more expensive
* {@code equals()} method.
*/
@:native('java$awt$RenderingHints$Key') extern class RenderingHints_Key
{
	/**
	* Construct a key using the indicated private key.  Each
	* subclass of Key maintains its own unique domain of integer
	* keys.  No two objects with the same integer key and of the
	* same specific subclass can be constructed.  An exception
	* will be thrown if an attempt is made to construct another
	* object of a given class with the same integer key as a
	* pre-existing instance of that subclass of Key.
	* @param privatekey the specified key
	*/
	@:overload private function new(privatekey : Int) : Void;
	
	/**
	* Returns true if the specified object is a valid value
	* for this Key.
	* @param val the <code>Object</code> to test for validity
	* @return <code>true</code> if <code>val</code> is valid;
	*         <code>false</code> otherwise.
	*/
	@:overload @:abstract public function isCompatibleValue(val : Dynamic) : Bool;
	
	/**
	* Returns the private integer key that the subclass
	* instantiated this Key with.
	* @return the private integer key that the subclass
	* instantiated this Key with.
	*/
	@:overload @:final private function intKey() : Int;
	
	/**
	* The hash code for all Key objects will be the same as the
	* system identity code of the object as defined by the
	* System.identityHashCode() method.
	*/
	@:overload @:final public function hashCode() : Int;
	
	/**
	* The equals method for all Key objects will return the same
	* result as the equality operator '=='.
	*/
	@:overload @:final public function equals(o : Dynamic) : Bool;
	
	
}
