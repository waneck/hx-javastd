package java.awt;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class AlphaComposite implements java.awt.Composite
{
	/**
	* Both the color and the alpha of the destination are cleared
	* (Porter-Duff Clear rule).
	* Neither the source nor the destination is used as input.
	*<p>
	* <em>F<sub>s</sub></em> = 0 and <em>F<sub>d</sub></em> = 0, thus:
	*<pre>
	*  <em>A<sub>r</sub></em> = 0
	*  <em>C<sub>r</sub></em> = 0
	*</pre>
	*/
	public static var CLEAR(default, null) : Int;
	
	/**
	* The source is copied to the destination
	* (Porter-Duff Source rule).
	* The destination is not used as input.
	*<p>
	* <em>F<sub>s</sub></em> = 1 and <em>F<sub>d</sub></em> = 0, thus:
	*<pre>
	*  <em>A<sub>r</sub></em> = <em>A<sub>s</sub></em>
	*  <em>C<sub>r</sub></em> = <em>C<sub>s</sub></em>
	*</pre>
	*/
	public static var SRC(default, null) : Int;
	
	/**
	* The destination is left untouched
	* (Porter-Duff Destination rule).
	*<p>
	* <em>F<sub>s</sub></em> = 0 and <em>F<sub>d</sub></em> = 1, thus:
	*<pre>
	*  <em>A<sub>r</sub></em> = <em>A<sub>d</sub></em>
	*  <em>C<sub>r</sub></em> = <em>C<sub>d</sub></em>
	*</pre>
	* @since 1.4
	*/
	@:require(java4) public static var DST(default, null) : Int;
	
	/**
	* The source is composited over the destination
	* (Porter-Duff Source Over Destination rule).
	*<p>
	* <em>F<sub>s</sub></em> = 1 and <em>F<sub>d</sub></em> = (1-<em>A<sub>s</sub></em>), thus:
	*<pre>
	*  <em>A<sub>r</sub></em> = <em>A<sub>s</sub></em> + <em>A<sub>d</sub></em>*(1-<em>A<sub>s</sub></em>)
	*  <em>C<sub>r</sub></em> = <em>C<sub>s</sub></em> + <em>C<sub>d</sub></em>*(1-<em>A<sub>s</sub></em>)
	*</pre>
	*/
	public static var SRC_OVER(default, null) : Int;
	
	/**
	* The destination is composited over the source and
	* the result replaces the destination
	* (Porter-Duff Destination Over Source rule).
	*<p>
	* <em>F<sub>s</sub></em> = (1-<em>A<sub>d</sub></em>) and <em>F<sub>d</sub></em> = 1, thus:
	*<pre>
	*  <em>A<sub>r</sub></em> = <em>A<sub>s</sub></em>*(1-<em>A<sub>d</sub></em>) + <em>A<sub>d</sub></em>
	*  <em>C<sub>r</sub></em> = <em>C<sub>s</sub></em>*(1-<em>A<sub>d</sub></em>) + <em>C<sub>d</sub></em>
	*</pre>
	*/
	public static var DST_OVER(default, null) : Int;
	
	/**
	* The part of the source lying inside of the destination replaces
	* the destination
	* (Porter-Duff Source In Destination rule).
	*<p>
	* <em>F<sub>s</sub></em> = <em>A<sub>d</sub></em> and <em>F<sub>d</sub></em> = 0, thus:
	*<pre>
	*  <em>A<sub>r</sub></em> = <em>A<sub>s</sub></em>*<em>A<sub>d</sub></em>
	*  <em>C<sub>r</sub></em> = <em>C<sub>s</sub></em>*<em>A<sub>d</sub></em>
	*</pre>
	*/
	public static var SRC_IN(default, null) : Int;
	
	/**
	* The part of the destination lying inside of the source
	* replaces the destination
	* (Porter-Duff Destination In Source rule).
	*<p>
	* <em>F<sub>s</sub></em> = 0 and <em>F<sub>d</sub></em> = <em>A<sub>s</sub></em>, thus:
	*<pre>
	*  <em>A<sub>r</sub></em> = <em>A<sub>d</sub></em>*<em>A<sub>s</sub></em>
	*  <em>C<sub>r</sub></em> = <em>C<sub>d</sub></em>*<em>A<sub>s</sub></em>
	*</pre>
	*/
	public static var DST_IN(default, null) : Int;
	
	/**
	* The part of the source lying outside of the destination
	* replaces the destination
	* (Porter-Duff Source Held Out By Destination rule).
	*<p>
	* <em>F<sub>s</sub></em> = (1-<em>A<sub>d</sub></em>) and <em>F<sub>d</sub></em> = 0, thus:
	*<pre>
	*  <em>A<sub>r</sub></em> = <em>A<sub>s</sub></em>*(1-<em>A<sub>d</sub></em>)
	*  <em>C<sub>r</sub></em> = <em>C<sub>s</sub></em>*(1-<em>A<sub>d</sub></em>)
	*</pre>
	*/
	public static var SRC_OUT(default, null) : Int;
	
	/**
	* The part of the destination lying outside of the source
	* replaces the destination
	* (Porter-Duff Destination Held Out By Source rule).
	*<p>
	* <em>F<sub>s</sub></em> = 0 and <em>F<sub>d</sub></em> = (1-<em>A<sub>s</sub></em>), thus:
	*<pre>
	*  <em>A<sub>r</sub></em> = <em>A<sub>d</sub></em>*(1-<em>A<sub>s</sub></em>)
	*  <em>C<sub>r</sub></em> = <em>C<sub>d</sub></em>*(1-<em>A<sub>s</sub></em>)
	*</pre>
	*/
	public static var DST_OUT(default, null) : Int;
	
	/**
	* The part of the source lying inside of the destination
	* is composited onto the destination
	* (Porter-Duff Source Atop Destination rule).
	*<p>
	* <em>F<sub>s</sub></em> = <em>A<sub>d</sub></em> and <em>F<sub>d</sub></em> = (1-<em>A<sub>s</sub></em>), thus:
	*<pre>
	*  <em>A<sub>r</sub></em> = <em>A<sub>s</sub></em>*<em>A<sub>d</sub></em> + <em>A<sub>d</sub></em>*(1-<em>A<sub>s</sub></em>) = <em>A<sub>d</sub></em>
	*  <em>C<sub>r</sub></em> = <em>C<sub>s</sub></em>*<em>A<sub>d</sub></em> + <em>C<sub>d</sub></em>*(1-<em>A<sub>s</sub></em>)
	*</pre>
	* @since 1.4
	*/
	@:require(java4) public static var SRC_ATOP(default, null) : Int;
	
	/**
	* The part of the destination lying inside of the source
	* is composited over the source and replaces the destination
	* (Porter-Duff Destination Atop Source rule).
	*<p>
	* <em>F<sub>s</sub></em> = (1-<em>A<sub>d</sub></em>) and <em>F<sub>d</sub></em> = <em>A<sub>s</sub></em>, thus:
	*<pre>
	*  <em>A<sub>r</sub></em> = <em>A<sub>s</sub></em>*(1-<em>A<sub>d</sub></em>) + <em>A<sub>d</sub></em>*<em>A<sub>s</sub></em> = <em>A<sub>s</sub></em>
	*  <em>C<sub>r</sub></em> = <em>C<sub>s</sub></em>*(1-<em>A<sub>d</sub></em>) + <em>C<sub>d</sub></em>*<em>A<sub>s</sub></em>
	*</pre>
	* @since 1.4
	*/
	@:require(java4) public static var DST_ATOP(default, null) : Int;
	
	/**
	* The part of the source that lies outside of the destination
	* is combined with the part of the destination that lies outside
	* of the source
	* (Porter-Duff Source Xor Destination rule).
	*<p>
	* <em>F<sub>s</sub></em> = (1-<em>A<sub>d</sub></em>) and <em>F<sub>d</sub></em> = (1-<em>A<sub>s</sub></em>), thus:
	*<pre>
	*  <em>A<sub>r</sub></em> = <em>A<sub>s</sub></em>*(1-<em>A<sub>d</sub></em>) + <em>A<sub>d</sub></em>*(1-<em>A<sub>s</sub></em>)
	*  <em>C<sub>r</sub></em> = <em>C<sub>s</sub></em>*(1-<em>A<sub>d</sub></em>) + <em>C<sub>d</sub></em>*(1-<em>A<sub>s</sub></em>)
	*</pre>
	* @since 1.4
	*/
	@:require(java4) public static var XOR(default, null) : Int;
	
	/**
	* <code>AlphaComposite</code> object that implements the opaque CLEAR rule
	* with an alpha of 1.0f.
	* @see #CLEAR
	*/
	public static var Clear(default, null) : AlphaComposite;
	
	/**
	* <code>AlphaComposite</code> object that implements the opaque SRC rule
	* with an alpha of 1.0f.
	* @see #SRC
	*/
	public static var Src(default, null) : AlphaComposite;
	
	/**
	* <code>AlphaComposite</code> object that implements the opaque DST rule
	* with an alpha of 1.0f.
	* @see #DST
	* @since 1.4
	*/
	@:require(java4) public static var Dst(default, null) : AlphaComposite;
	
	/**
	* <code>AlphaComposite</code> object that implements the opaque SRC_OVER rule
	* with an alpha of 1.0f.
	* @see #SRC_OVER
	*/
	public static var SrcOver(default, null) : AlphaComposite;
	
	/**
	* <code>AlphaComposite</code> object that implements the opaque DST_OVER rule
	* with an alpha of 1.0f.
	* @see #DST_OVER
	*/
	public static var DstOver(default, null) : AlphaComposite;
	
	/**
	* <code>AlphaComposite</code> object that implements the opaque SRC_IN rule
	* with an alpha of 1.0f.
	* @see #SRC_IN
	*/
	public static var SrcIn(default, null) : AlphaComposite;
	
	/**
	* <code>AlphaComposite</code> object that implements the opaque DST_IN rule
	* with an alpha of 1.0f.
	* @see #DST_IN
	*/
	public static var DstIn(default, null) : AlphaComposite;
	
	/**
	* <code>AlphaComposite</code> object that implements the opaque SRC_OUT rule
	* with an alpha of 1.0f.
	* @see #SRC_OUT
	*/
	public static var SrcOut(default, null) : AlphaComposite;
	
	/**
	* <code>AlphaComposite</code> object that implements the opaque DST_OUT rule
	* with an alpha of 1.0f.
	* @see #DST_OUT
	*/
	public static var DstOut(default, null) : AlphaComposite;
	
	/**
	* <code>AlphaComposite</code> object that implements the opaque SRC_ATOP rule
	* with an alpha of 1.0f.
	* @see #SRC_ATOP
	* @since 1.4
	*/
	@:require(java4) public static var SrcAtop(default, null) : AlphaComposite;
	
	/**
	* <code>AlphaComposite</code> object that implements the opaque DST_ATOP rule
	* with an alpha of 1.0f.
	* @see #DST_ATOP
	* @since 1.4
	*/
	@:require(java4) public static var DstAtop(default, null) : AlphaComposite;
	
	/**
	* <code>AlphaComposite</code> object that implements the opaque XOR rule
	* with an alpha of 1.0f.
	* @see #XOR
	* @since 1.4
	*/
	@:require(java4) public static var Xor(default, null) : AlphaComposite;
	
	/**
	* Creates an <code>AlphaComposite</code> object with the specified rule.
	* @param rule the compositing rule
	* @throws IllegalArgumentException if <code>rule</code> is not one of
	*         the following:  {@link #CLEAR}, {@link #SRC}, {@link #DST},
	*         {@link #SRC_OVER}, {@link #DST_OVER}, {@link #SRC_IN},
	*         {@link #DST_IN}, {@link #SRC_OUT}, {@link #DST_OUT},
	*         {@link #SRC_ATOP}, {@link #DST_ATOP}, or {@link #XOR}
	*/
	@:overload public static function getInstance(rule : Int) : AlphaComposite;
	
	/**
	* Creates an <code>AlphaComposite</code> object with the specified rule and
	* the constant alpha to multiply with the alpha of the source.
	* The source is multiplied with the specified alpha before being composited
	* with the destination.
	* @param rule the compositing rule
	* @param alpha the constant alpha to be multiplied with the alpha of
	* the source. <code>alpha</code> must be a floating point number in the
	* inclusive range [0.0,&nbsp;1.0].
	* @throws IllegalArgumentException if
	*         <code>alpha</code> is less than 0.0 or greater than 1.0, or if
	*         <code>rule</code> is not one of
	*         the following:  {@link #CLEAR}, {@link #SRC}, {@link #DST},
	*         {@link #SRC_OVER}, {@link #DST_OVER}, {@link #SRC_IN},
	*         {@link #DST_IN}, {@link #SRC_OUT}, {@link #DST_OUT},
	*         {@link #SRC_ATOP}, {@link #DST_ATOP}, or {@link #XOR}
	*/
	@:overload public static function getInstance(rule : Int, alpha : Single) : AlphaComposite;
	
	/**
	* Creates a context for the compositing operation.
	* The context contains state that is used in performing
	* the compositing operation.
	* @param srcColorModel  the {@link ColorModel} of the source
	* @param dstColorModel  the <code>ColorModel</code> of the destination
	* @return the <code>CompositeContext</code> object to be used to perform
	* compositing operations.
	*/
	@:overload public function createContext(srcColorModel : java.awt.image.ColorModel, dstColorModel : java.awt.image.ColorModel, hints : java.awt.RenderingHints) : java.awt.CompositeContext;
	
	/**
	* Returns the alpha value of this <code>AlphaComposite</code>.  If this
	* <code>AlphaComposite</code> does not have an alpha value, 1.0 is returned.
	* @return the alpha value of this <code>AlphaComposite</code>.
	*/
	@:overload public function getAlpha() : Single;
	
	/**
	* Returns the compositing rule of this <code>AlphaComposite</code>.
	* @return the compositing rule of this <code>AlphaComposite</code>.
	*/
	@:overload public function getRule() : Int;
	
	/**
	* Returns a similar <code>AlphaComposite</code> object that uses
	* the specified compositing rule.
	* If this object already uses the specified compositing rule,
	* this object is returned.
	* @return an <code>AlphaComposite</code> object derived from
	* this object that uses the specified compositing rule.
	* @param rule the compositing rule
	* @throws IllegalArgumentException if
	*         <code>rule</code> is not one of
	*         the following:  {@link #CLEAR}, {@link #SRC}, {@link #DST},
	*         {@link #SRC_OVER}, {@link #DST_OVER}, {@link #SRC_IN},
	*         {@link #DST_IN}, {@link #SRC_OUT}, {@link #DST_OUT},
	*         {@link #SRC_ATOP}, {@link #DST_ATOP}, or {@link #XOR}
	* @since 1.6
	*/
	@:require(java6) @:overload public function derive(rule : Int) : AlphaComposite;
	
	/**
	* Returns a similar <code>AlphaComposite</code> object that uses
	* the specified alpha value.
	* If this object already has the specified alpha value,
	* this object is returned.
	* @return an <code>AlphaComposite</code> object derived from
	* this object that uses the specified alpha value.
	* @param alpha the constant alpha to be multiplied with the alpha of
	* the source. <code>alpha</code> must be a floating point number in the
	* inclusive range [0.0,&nbsp;1.0].
	* @throws IllegalArgumentException if
	*         <code>alpha</code> is less than 0.0 or greater than 1.0
	* @since 1.6
	*/
	@:require(java6) @:overload public function derive(alpha : Single) : AlphaComposite;
	
	/**
	* Returns the hashcode for this composite.
	* @return      a hash code for this composite.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Determines whether the specified object is equal to this
	* <code>AlphaComposite</code>.
	* <p>
	* The result is <code>true</code> if and only if
	* the argument is not <code>null</code> and is an
	* <code>AlphaComposite</code> object that has the same
	* compositing rule and alpha value as this object.
	*
	* @param obj the <code>Object</code> to test for equality
	* @return <code>true</code> if <code>obj</code> equals this
	* <code>AlphaComposite</code>; <code>false</code> otherwise.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	
}
