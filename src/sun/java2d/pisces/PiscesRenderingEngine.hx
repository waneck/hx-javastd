package sun.java2d.pisces;
/*
* Copyright (c) 2007, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class PiscesRenderingEngine extends sun.java2d.pipe.RenderingEngine
{
	/**
	* Create a widened path as specified by the parameters.
	* <p>
	* The specified {@code src} {@link Shape} is widened according
	* to the specified attribute parameters as per the
	* {@link BasicStroke} specification.
	*
	* @param src the source path to be widened
	* @param width the width of the widened path as per {@code BasicStroke}
	* @param caps the end cap decorations as per {@code BasicStroke}
	* @param join the segment join decorations as per {@code BasicStroke}
	* @param miterlimit the miter limit as per {@code BasicStroke}
	* @param dashes the dash length array as per {@code BasicStroke}
	* @param dashphase the initial dash phase as per {@code BasicStroke}
	* @return the widened path stored in a new {@code Shape} object
	* @since 1.7
	*/
	@:require(java7) @:overload override public function createStrokedShape(src : java.awt.Shape, width : Single, caps : Int, join : Int, miterlimit : Single, dashes : java.NativeArray<Single>, dashphase : Single) : java.awt.Shape;
	
	/**
	* Sends the geometry for a widened path as specified by the parameters
	* to the specified consumer.
	* <p>
	* The specified {@code src} {@link Shape} is widened according
	* to the parameters specified by the {@link BasicStroke} object.
	* Adjustments are made to the path as appropriate for the
	* {@link VALUE_STROKE_NORMALIZE} hint if the {@code normalize}
	* boolean parameter is true.
	* Adjustments are made to the path as appropriate for the
	* {@link VALUE_ANTIALIAS_ON} hint if the {@code antialias}
	* boolean parameter is true.
	* <p>
	* The geometry of the widened path is forwarded to the indicated
	* {@link PathConsumer2D} object as it is calculated.
	*
	* @param src the source path to be widened
	* @param bs the {@code BasicSroke} object specifying the
	*           decorations to be applied to the widened path
	* @param normalize indicates whether stroke normalization should
	*                  be applied
	* @param antialias indicates whether or not adjustments appropriate
	*                  to antialiased rendering should be applied
	* @param consumer the {@code PathConsumer2D} instance to forward
	*                 the widened geometry to
	* @since 1.7
	*/
	@:require(java7) @:overload override public function strokeTo(src : java.awt.Shape, at : java.awt.geom.AffineTransform, bs : java.awt.BasicStroke, thin : Bool, normalize : Bool, antialias : Bool, consumer : sun.awt.geom.PathConsumer2D) : Void;
	
	/**
	* Construct an antialiased tile generator for the given shape with
	* the given rendering attributes and store the bounds of the tile
	* iteration in the bbox parameter.
	* The {@code at} parameter specifies a transform that should affect
	* both the shape and the {@code BasicStroke} attributes.
	* The {@code clip} parameter specifies the current clip in effect
	* in device coordinates and can be used to prune the data for the
	* operation, but the renderer is not required to perform any
	* clipping.
	* If the {@code BasicStroke} parameter is null then the shape
	* should be filled as is, otherwise the attributes of the
	* {@code BasicStroke} should be used to specify a draw operation.
	* The {@code thin} parameter indicates whether or not the
	* transformed {@code BasicStroke} represents coordinates smaller
	* than the minimum resolution of the antialiasing rasterizer as
	* specified by the {@code getMinimumAAPenWidth()} method.
	* <p>
	* Upon returning, this method will fill the {@code bbox} parameter
	* with 4 values indicating the bounds of the iteration of the
	* tile generator.
	* The iteration order of the tiles will be as specified by the
	* pseudo-code:
	* <pre>
	*     for (y = bbox[1]; y < bbox[3]; y += tileheight) {
	*         for (x = bbox[0]; x < bbox[2]; x += tilewidth) {
	*         }
	*     }
	* </pre>
	* If there is no output to be rendered, this method may return
	* null.
	*
	* @param s the shape to be rendered (fill or draw)
	* @param at the transform to be applied to the shape and the
	*           stroke attributes
	* @param clip the current clip in effect in device coordinates
	* @param bs if non-null, a {@code BasicStroke} whose attributes
	*           should be applied to this operation
	* @param thin true if the transformed stroke attributes are smaller
	*             than the minimum dropout pen width
	* @param normalize true if the {@code VALUE_STROKE_NORMALIZE}
	*                  {@code RenderingHint} is in effect
	* @param bbox returns the bounds of the iteration
	* @return the {@code AATileGenerator} instance to be consulted
	*         for tile coverages, or null if there is no output to render
	* @since 1.7
	*/
	@:require(java7) @:overload override public function getAATileGenerator(s : java.awt.Shape, at : java.awt.geom.AffineTransform, clip : sun.java2d.pipe.Region, bs : java.awt.BasicStroke, thin : Bool, normalize : Bool, bbox : java.NativeArray<Int>) : sun.java2d.pipe.AATileGenerator;
	
	@:overload override public function getAATileGenerator(x : Float, y : Float, dx1 : Float, dy1 : Float, dx2 : Float, dy2 : Float, lw1 : Float, lw2 : Float, clip : sun.java2d.pipe.Region, bbox : java.NativeArray<Int>) : sun.java2d.pipe.AATileGenerator;
	
	/**
	* Returns the minimum pen width that the antialiasing rasterizer
	* can represent without dropouts occuring.
	* @since 1.7
	*/
	@:require(java7) @:overload override public function getMinimumAAPenSize() : Single;
	
	
}
@:native('sun$java2d$pisces$PiscesRenderingEngine$NormMode') privateextern enum PiscesRenderingEngine_NormMode
{
	OFF;
	ON_NO_AA;
	ON_WITH_AA;
	
}

@:native('sun$java2d$pisces$PiscesRenderingEngine$NormalizingPathIterator') @:internal extern class PiscesRenderingEngine_NormalizingPathIterator implements java.awt.geom.PathIterator
{
	@:overload public function currentSegment(coords : java.NativeArray<Single>) : Int;
	
	@:overload public function currentSegment(coords : java.NativeArray<Float>) : Int;
	
	@:overload public function getWindingRule() : Int;
	
	@:overload public function isDone() : Bool;
	
	@:overload public function next() : Void;
	
	
}
