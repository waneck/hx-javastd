package java.awt.geom;
/*
* Copyright (c) 1996, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class AffineTransform implements java.lang.Cloneable implements java.io.Serializable
{
	/**
	* This constant indicates that the transform defined by this object
	* is an identity transform.
	* An identity transform is one in which the output coordinates are
	* always the same as the input coordinates.
	* If this transform is anything other than the identity transform,
	* the type will either be the constant GENERAL_TRANSFORM or a
	* combination of the appropriate flag bits for the various coordinate
	* conversions that this transform performs.
	* @see #TYPE_TRANSLATION
	* @see #TYPE_UNIFORM_SCALE
	* @see #TYPE_GENERAL_SCALE
	* @see #TYPE_FLIP
	* @see #TYPE_QUADRANT_ROTATION
	* @see #TYPE_GENERAL_ROTATION
	* @see #TYPE_GENERAL_TRANSFORM
	* @see #getType
	* @since 1.2
	*/
	@:require(java2) @:public @:static @:final public static var TYPE_IDENTITY(default, null) : Int;
	
	/**
	* This flag bit indicates that the transform defined by this object
	* performs a translation in addition to the conversions indicated
	* by other flag bits.
	* A translation moves the coordinates by a constant amount in x
	* and y without changing the length or angle of vectors.
	* @see #TYPE_IDENTITY
	* @see #TYPE_UNIFORM_SCALE
	* @see #TYPE_GENERAL_SCALE
	* @see #TYPE_FLIP
	* @see #TYPE_QUADRANT_ROTATION
	* @see #TYPE_GENERAL_ROTATION
	* @see #TYPE_GENERAL_TRANSFORM
	* @see #getType
	* @since 1.2
	*/
	@:require(java2) @:public @:static @:final public static var TYPE_TRANSLATION(default, null) : Int;
	
	/**
	* This flag bit indicates that the transform defined by this object
	* performs a uniform scale in addition to the conversions indicated
	* by other flag bits.
	* A uniform scale multiplies the length of vectors by the same amount
	* in both the x and y directions without changing the angle between
	* vectors.
	* This flag bit is mutually exclusive with the TYPE_GENERAL_SCALE flag.
	* @see #TYPE_IDENTITY
	* @see #TYPE_TRANSLATION
	* @see #TYPE_GENERAL_SCALE
	* @see #TYPE_FLIP
	* @see #TYPE_QUADRANT_ROTATION
	* @see #TYPE_GENERAL_ROTATION
	* @see #TYPE_GENERAL_TRANSFORM
	* @see #getType
	* @since 1.2
	*/
	@:require(java2) @:public @:static @:final public static var TYPE_UNIFORM_SCALE(default, null) : Int;
	
	/**
	* This flag bit indicates that the transform defined by this object
	* performs a general scale in addition to the conversions indicated
	* by other flag bits.
	* A general scale multiplies the length of vectors by different
	* amounts in the x and y directions without changing the angle
	* between perpendicular vectors.
	* This flag bit is mutually exclusive with the TYPE_UNIFORM_SCALE flag.
	* @see #TYPE_IDENTITY
	* @see #TYPE_TRANSLATION
	* @see #TYPE_UNIFORM_SCALE
	* @see #TYPE_FLIP
	* @see #TYPE_QUADRANT_ROTATION
	* @see #TYPE_GENERAL_ROTATION
	* @see #TYPE_GENERAL_TRANSFORM
	* @see #getType
	* @since 1.2
	*/
	@:require(java2) @:public @:static @:final public static var TYPE_GENERAL_SCALE(default, null) : Int;
	
	/**
	* This constant is a bit mask for any of the scale flag bits.
	* @see #TYPE_UNIFORM_SCALE
	* @see #TYPE_GENERAL_SCALE
	* @since 1.2
	*/
	@:require(java2) @:public @:static @:final public static var TYPE_MASK_SCALE(default, null) : Int;
	
	/**
	* This flag bit indicates that the transform defined by this object
	* performs a mirror image flip about some axis which changes the
	* normally right handed coordinate system into a left handed
	* system in addition to the conversions indicated by other flag bits.
	* A right handed coordinate system is one where the positive X
	* axis rotates counterclockwise to overlay the positive Y axis
	* similar to the direction that the fingers on your right hand
	* curl when you stare end on at your thumb.
	* A left handed coordinate system is one where the positive X
	* axis rotates clockwise to overlay the positive Y axis similar
	* to the direction that the fingers on your left hand curl.
	* There is no mathematical way to determine the angle of the
	* original flipping or mirroring transformation since all angles
	* of flip are identical given an appropriate adjusting rotation.
	* @see #TYPE_IDENTITY
	* @see #TYPE_TRANSLATION
	* @see #TYPE_UNIFORM_SCALE
	* @see #TYPE_GENERAL_SCALE
	* @see #TYPE_QUADRANT_ROTATION
	* @see #TYPE_GENERAL_ROTATION
	* @see #TYPE_GENERAL_TRANSFORM
	* @see #getType
	* @since 1.2
	*/
	@:require(java2) @:public @:static @:final public static var TYPE_FLIP(default, null) : Int;
	
	/**
	* This flag bit indicates that the transform defined by this object
	* performs a quadrant rotation by some multiple of 90 degrees in
	* addition to the conversions indicated by other flag bits.
	* A rotation changes the angles of vectors by the same amount
	* regardless of the original direction of the vector and without
	* changing the length of the vector.
	* This flag bit is mutually exclusive with the TYPE_GENERAL_ROTATION flag.
	* @see #TYPE_IDENTITY
	* @see #TYPE_TRANSLATION
	* @see #TYPE_UNIFORM_SCALE
	* @see #TYPE_GENERAL_SCALE
	* @see #TYPE_FLIP
	* @see #TYPE_GENERAL_ROTATION
	* @see #TYPE_GENERAL_TRANSFORM
	* @see #getType
	* @since 1.2
	*/
	@:require(java2) @:public @:static @:final public static var TYPE_QUADRANT_ROTATION(default, null) : Int;
	
	/**
	* This flag bit indicates that the transform defined by this object
	* performs a rotation by an arbitrary angle in addition to the
	* conversions indicated by other flag bits.
	* A rotation changes the angles of vectors by the same amount
	* regardless of the original direction of the vector and without
	* changing the length of the vector.
	* This flag bit is mutually exclusive with the
	* TYPE_QUADRANT_ROTATION flag.
	* @see #TYPE_IDENTITY
	* @see #TYPE_TRANSLATION
	* @see #TYPE_UNIFORM_SCALE
	* @see #TYPE_GENERAL_SCALE
	* @see #TYPE_FLIP
	* @see #TYPE_QUADRANT_ROTATION
	* @see #TYPE_GENERAL_TRANSFORM
	* @see #getType
	* @since 1.2
	*/
	@:require(java2) @:public @:static @:final public static var TYPE_GENERAL_ROTATION(default, null) : Int;
	
	/**
	* This constant is a bit mask for any of the rotation flag bits.
	* @see #TYPE_QUADRANT_ROTATION
	* @see #TYPE_GENERAL_ROTATION
	* @since 1.2
	*/
	@:require(java2) @:public @:static @:final public static var TYPE_MASK_ROTATION(default, null) : Int;
	
	/**
	* This constant indicates that the transform defined by this object
	* performs an arbitrary conversion of the input coordinates.
	* If this transform can be classified by any of the above constants,
	* the type will either be the constant TYPE_IDENTITY or a
	* combination of the appropriate flag bits for the various coordinate
	* conversions that this transform performs.
	* @see #TYPE_IDENTITY
	* @see #TYPE_TRANSLATION
	* @see #TYPE_UNIFORM_SCALE
	* @see #TYPE_GENERAL_SCALE
	* @see #TYPE_FLIP
	* @see #TYPE_QUADRANT_ROTATION
	* @see #TYPE_GENERAL_ROTATION
	* @see #getType
	* @since 1.2
	*/
	@:require(java2) @:public @:static @:final public static var TYPE_GENERAL_TRANSFORM(default, null) : Int;
	
	/**
	* Constructs a new <code>AffineTransform</code> representing the
	* Identity transformation.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new() : Void;
	
	/**
	* Constructs a new <code>AffineTransform</code> that is a copy of
	* the specified <code>AffineTransform</code> object.
	* @param Tx the <code>AffineTransform</code> object to copy
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new(Tx : java.awt.geom.AffineTransform) : Void;
	
	/**
	* Constructs a new <code>AffineTransform</code> from 6 floating point
	* values representing the 6 specifiable entries of the 3x3
	* transformation matrix.
	*
	* @param m00 the X coordinate scaling element of the 3x3 matrix
	* @param m10 the Y coordinate shearing element of the 3x3 matrix
	* @param m01 the X coordinate shearing element of the 3x3 matrix
	* @param m11 the Y coordinate scaling element of the 3x3 matrix
	* @param m02 the X coordinate translation element of the 3x3 matrix
	* @param m12 the Y coordinate translation element of the 3x3 matrix
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new(m00 : Single, m10 : Single, m01 : Single, m11 : Single, m02 : Single, m12 : Single) : Void;
	
	/**
	* Constructs a new <code>AffineTransform</code> from an array of
	* floating point values representing either the 4 non-translation
	* enries or the 6 specifiable entries of the 3x3 transformation
	* matrix.  The values are retrieved from the array as
	* {&nbsp;m00&nbsp;m10&nbsp;m01&nbsp;m11&nbsp;[m02&nbsp;m12]}.
	* @param flatmatrix the float array containing the values to be set
	* in the new <code>AffineTransform</code> object. The length of the
	* array is assumed to be at least 4. If the length of the array is
	* less than 6, only the first 4 values are taken. If the length of
	* the array is greater than 6, the first 6 values are taken.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new(flatmatrix : java.NativeArray<Single>) : Void;
	
	/**
	* Constructs a new <code>AffineTransform</code> from 6 double
	* precision values representing the 6 specifiable entries of the 3x3
	* transformation matrix.
	*
	* @param m00 the X coordinate scaling element of the 3x3 matrix
	* @param m10 the Y coordinate shearing element of the 3x3 matrix
	* @param m01 the X coordinate shearing element of the 3x3 matrix
	* @param m11 the Y coordinate scaling element of the 3x3 matrix
	* @param m02 the X coordinate translation element of the 3x3 matrix
	* @param m12 the Y coordinate translation element of the 3x3 matrix
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new(m00 : Float, m10 : Float, m01 : Float, m11 : Float, m02 : Float, m12 : Float) : Void;
	
	/**
	* Constructs a new <code>AffineTransform</code> from an array of
	* double precision values representing either the 4 non-translation
	* entries or the 6 specifiable entries of the 3x3 transformation
	* matrix. The values are retrieved from the array as
	* {&nbsp;m00&nbsp;m10&nbsp;m01&nbsp;m11&nbsp;[m02&nbsp;m12]}.
	* @param flatmatrix the double array containing the values to be set
	* in the new <code>AffineTransform</code> object. The length of the
	* array is assumed to be at least 4. If the length of the array is
	* less than 6, only the first 4 values are taken. If the length of
	* the array is greater than 6, the first 6 values are taken.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new(flatmatrix : java.NativeArray<Float>) : Void;
	
	/**
	* Returns a transform representing a translation transformation.
	* The matrix representing the returned transform is:
	* <pre>
	*          [   1    0    tx  ]
	*          [   0    1    ty  ]
	*          [   0    0    1   ]
	* </pre>
	* @param tx the distance by which coordinates are translated in the
	* X axis direction
	* @param ty the distance by which coordinates are translated in the
	* Y axis direction
	* @return an <code>AffineTransform</code> object that represents a
	*  translation transformation, created with the specified vector.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:static public static function getTranslateInstance(tx : Float, ty : Float) : java.awt.geom.AffineTransform;
	
	/**
	* Returns a transform representing a rotation transformation.
	* The matrix representing the returned transform is:
	* <pre>
	*          [   cos(theta)    -sin(theta)    0   ]
	*          [   sin(theta)     cos(theta)    0   ]
	*          [       0              0         1   ]
	* </pre>
	* Rotating by a positive angle theta rotates points on the positive
	* X axis toward the positive Y axis.
	* Note also the discussion of
	* <a href="#quadrantapproximation">Handling 90-Degree Rotations</a>
	* above.
	* @param theta the angle of rotation measured in radians
	* @return an <code>AffineTransform</code> object that is a rotation
	*  transformation, created with the specified angle of rotation.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:static public static function getRotateInstance(theta : Float) : java.awt.geom.AffineTransform;
	
	/**
	* Returns a transform that rotates coordinates around an anchor point.
	* This operation is equivalent to translating the coordinates so
	* that the anchor point is at the origin (S1), then rotating them
	* about the new origin (S2), and finally translating so that the
	* intermediate origin is restored to the coordinates of the original
	* anchor point (S3).
	* <p>
	* This operation is equivalent to the following sequence of calls:
	* <pre>
	*     AffineTransform Tx = new AffineTransform();
	*     Tx.translate(anchorx, anchory);    // S3: final translation
	*     Tx.rotate(theta);                  // S2: rotate around anchor
	*     Tx.translate(-anchorx, -anchory);  // S1: translate anchor to origin
	* </pre>
	* The matrix representing the returned transform is:
	* <pre>
	*          [   cos(theta)    -sin(theta)    x-x*cos+y*sin  ]
	*          [   sin(theta)     cos(theta)    y-x*sin-y*cos  ]
	*          [       0              0               1        ]
	* </pre>
	* Rotating by a positive angle theta rotates points on the positive
	* X axis toward the positive Y axis.
	* Note also the discussion of
	* <a href="#quadrantapproximation">Handling 90-Degree Rotations</a>
	* above.
	*
	* @param theta the angle of rotation measured in radians
	* @param anchorx the X coordinate of the rotation anchor point
	* @param anchory the Y coordinate of the rotation anchor point
	* @return an <code>AffineTransform</code> object that rotates
	*  coordinates around the specified point by the specified angle of
	*  rotation.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:static public static function getRotateInstance(theta : Float, anchorx : Float, anchory : Float) : java.awt.geom.AffineTransform;
	
	/**
	* Returns a transform that rotates coordinates according to
	* a rotation vector.
	* All coordinates rotate about the origin by the same amount.
	* The amount of rotation is such that coordinates along the former
	* positive X axis will subsequently align with the vector pointing
	* from the origin to the specified vector coordinates.
	* If both <code>vecx</code> and <code>vecy</code> are 0.0,
	* an identity transform is returned.
	* This operation is equivalent to calling:
	* <pre>
	*     AffineTransform.getRotateInstance(Math.atan2(vecy, vecx));
	* </pre>
	*
	* @param vecx the X coordinate of the rotation vector
	* @param vecy the Y coordinate of the rotation vector
	* @return an <code>AffineTransform</code> object that rotates
	*  coordinates according to the specified rotation vector.
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:static public static function getRotateInstance(vecx : Float, vecy : Float) : java.awt.geom.AffineTransform;
	
	/**
	* Returns a transform that rotates coordinates around an anchor
	* point accordinate to a rotation vector.
	* All coordinates rotate about the specified anchor coordinates
	* by the same amount.
	* The amount of rotation is such that coordinates along the former
	* positive X axis will subsequently align with the vector pointing
	* from the origin to the specified vector coordinates.
	* If both <code>vecx</code> and <code>vecy</code> are 0.0,
	* an identity transform is returned.
	* This operation is equivalent to calling:
	* <pre>
	*     AffineTransform.getRotateInstance(Math.atan2(vecy, vecx),
	*                                       anchorx, anchory);
	* </pre>
	*
	* @param vecx the X coordinate of the rotation vector
	* @param vecy the Y coordinate of the rotation vector
	* @param anchorx the X coordinate of the rotation anchor point
	* @param anchory the Y coordinate of the rotation anchor point
	* @return an <code>AffineTransform</code> object that rotates
	*  coordinates around the specified point according to the
	*  specified rotation vector.
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:static public static function getRotateInstance(vecx : Float, vecy : Float, anchorx : Float, anchory : Float) : java.awt.geom.AffineTransform;
	
	/**
	* Returns a transform that rotates coordinates by the specified
	* number of quadrants.
	* This operation is equivalent to calling:
	* <pre>
	*     AffineTransform.getRotateInstance(numquadrants * Math.PI / 2.0);
	* </pre>
	* Rotating by a positive number of quadrants rotates points on
	* the positive X axis toward the positive Y axis.
	* @param numquadrants the number of 90 degree arcs to rotate by
	* @return an <code>AffineTransform</code> object that rotates
	*  coordinates by the specified number of quadrants.
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:static public static function getQuadrantRotateInstance(numquadrants : Int) : java.awt.geom.AffineTransform;
	
	/**
	* Returns a transform that rotates coordinates by the specified
	* number of quadrants around the specified anchor point.
	* This operation is equivalent to calling:
	* <pre>
	*     AffineTransform.getRotateInstance(numquadrants * Math.PI / 2.0,
	*                                       anchorx, anchory);
	* </pre>
	* Rotating by a positive number of quadrants rotates points on
	* the positive X axis toward the positive Y axis.
	*
	* @param numquadrants the number of 90 degree arcs to rotate by
	* @param anchorx the X coordinate of the rotation anchor point
	* @param anchory the Y coordinate of the rotation anchor point
	* @return an <code>AffineTransform</code> object that rotates
	*  coordinates by the specified number of quadrants around the
	*  specified anchor point.
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:static public static function getQuadrantRotateInstance(numquadrants : Int, anchorx : Float, anchory : Float) : java.awt.geom.AffineTransform;
	
	/**
	* Returns a transform representing a scaling transformation.
	* The matrix representing the returned transform is:
	* <pre>
	*          [   sx   0    0   ]
	*          [   0    sy   0   ]
	*          [   0    0    1   ]
	* </pre>
	* @param sx the factor by which coordinates are scaled along the
	* X axis direction
	* @param sy the factor by which coordinates are scaled along the
	* Y axis direction
	* @return an <code>AffineTransform</code> object that scales
	*  coordinates by the specified factors.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:static public static function getScaleInstance(sx : Float, sy : Float) : java.awt.geom.AffineTransform;
	
	/**
	* Returns a transform representing a shearing transformation.
	* The matrix representing the returned transform is:
	* <pre>
	*          [   1   shx   0   ]
	*          [  shy   1    0   ]
	*          [   0    0    1   ]
	* </pre>
	* @param shx the multiplier by which coordinates are shifted in the
	* direction of the positive X axis as a factor of their Y coordinate
	* @param shy the multiplier by which coordinates are shifted in the
	* direction of the positive Y axis as a factor of their X coordinate
	* @return an <code>AffineTransform</code> object that shears
	*  coordinates by the specified multipliers.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public @:static public static function getShearInstance(shx : Float, shy : Float) : java.awt.geom.AffineTransform;
	
	/**
	* Retrieves the flag bits describing the conversion properties of
	* this transform.
	* The return value is either one of the constants TYPE_IDENTITY
	* or TYPE_GENERAL_TRANSFORM, or a combination of the
	* appriopriate flag bits.
	* A valid combination of flag bits is an exclusive OR operation
	* that can combine
	* the TYPE_TRANSLATION flag bit
	* in addition to either of the
	* TYPE_UNIFORM_SCALE or TYPE_GENERAL_SCALE flag bits
	* as well as either of the
	* TYPE_QUADRANT_ROTATION or TYPE_GENERAL_ROTATION flag bits.
	* @return the OR combination of any of the indicated flags that
	* apply to this transform
	* @see #TYPE_IDENTITY
	* @see #TYPE_TRANSLATION
	* @see #TYPE_UNIFORM_SCALE
	* @see #TYPE_GENERAL_SCALE
	* @see #TYPE_QUADRANT_ROTATION
	* @see #TYPE_GENERAL_ROTATION
	* @see #TYPE_GENERAL_TRANSFORM
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getType() : Int;
	
	/**
	* Returns the determinant of the matrix representation of the transform.
	* The determinant is useful both to determine if the transform can
	* be inverted and to get a single value representing the
	* combined X and Y scaling of the transform.
	* <p>
	* If the determinant is non-zero, then this transform is
	* invertible and the various methods that depend on the inverse
	* transform do not need to throw a
	* {@link NoninvertibleTransformException}.
	* If the determinant is zero then this transform can not be
	* inverted since the transform maps all input coordinates onto
	* a line or a point.
	* If the determinant is near enough to zero then inverse transform
	* operations might not carry enough precision to produce meaningful
	* results.
	* <p>
	* If this transform represents a uniform scale, as indicated by
	* the <code>getType</code> method then the determinant also
	* represents the square of the uniform scale factor by which all of
	* the points are expanded from or contracted towards the origin.
	* If this transform represents a non-uniform scale or more general
	* transform then the determinant is not likely to represent a
	* value useful for any purpose other than determining if inverse
	* transforms are possible.
	* <p>
	* Mathematically, the determinant is calculated using the formula:
	* <pre>
	*          |  m00  m01  m02  |
	*          |  m10  m11  m12  |  =  m00 * m11 - m01 * m10
	*          |   0    0    1   |
	* </pre>
	*
	* @return the determinant of the matrix used to transform the
	* coordinates.
	* @see #getType
	* @see #createInverse
	* @see #inverseTransform
	* @see #TYPE_UNIFORM_SCALE
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getDeterminant() : Float;
	
	/**
	* Retrieves the 6 specifiable values in the 3x3 affine transformation
	* matrix and places them into an array of double precisions values.
	* The values are stored in the array as
	* {&nbsp;m00&nbsp;m10&nbsp;m01&nbsp;m11&nbsp;m02&nbsp;m12&nbsp;}.
	* An array of 4 doubles can also be specified, in which case only the
	* first four elements representing the non-transform
	* parts of the array are retrieved and the values are stored into
	* the array as {&nbsp;m00&nbsp;m10&nbsp;m01&nbsp;m11&nbsp;}
	* @param flatmatrix the double array used to store the returned
	* values.
	* @see #getScaleX
	* @see #getScaleY
	* @see #getShearX
	* @see #getShearY
	* @see #getTranslateX
	* @see #getTranslateY
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getMatrix(flatmatrix : java.NativeArray<Float>) : Void;
	
	/**
	* Returns the X coordinate scaling element (m00) of the 3x3
	* affine transformation matrix.
	* @return a double value that is the X coordinate of the scaling
	*  element of the affine transformation matrix.
	* @see #getMatrix
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getScaleX() : Float;
	
	/**
	* Returns the Y coordinate scaling element (m11) of the 3x3
	* affine transformation matrix.
	* @return a double value that is the Y coordinate of the scaling
	*  element of the affine transformation matrix.
	* @see #getMatrix
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getScaleY() : Float;
	
	/**
	* Returns the X coordinate shearing element (m01) of the 3x3
	* affine transformation matrix.
	* @return a double value that is the X coordinate of the shearing
	*  element of the affine transformation matrix.
	* @see #getMatrix
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getShearX() : Float;
	
	/**
	* Returns the Y coordinate shearing element (m10) of the 3x3
	* affine transformation matrix.
	* @return a double value that is the Y coordinate of the shearing
	*  element of the affine transformation matrix.
	* @see #getMatrix
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getShearY() : Float;
	
	/**
	* Returns the X coordinate of the translation element (m02) of the
	* 3x3 affine transformation matrix.
	* @return a double value that is the X coordinate of the translation
	*  element of the affine transformation matrix.
	* @see #getMatrix
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getTranslateX() : Float;
	
	/**
	* Returns the Y coordinate of the translation element (m12) of the
	* 3x3 affine transformation matrix.
	* @return a double value that is the Y coordinate of the translation
	*  element of the affine transformation matrix.
	* @see #getMatrix
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getTranslateY() : Float;
	
	/**
	* Concatenates this transform with a translation transformation.
	* This is equivalent to calling concatenate(T), where T is an
	* <code>AffineTransform</code> represented by the following matrix:
	* <pre>
	*          [   1    0    tx  ]
	*          [   0    1    ty  ]
	*          [   0    0    1   ]
	* </pre>
	* @param tx the distance by which coordinates are translated in the
	* X axis direction
	* @param ty the distance by which coordinates are translated in the
	* Y axis direction
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function translate(tx : Float, ty : Float) : Void;
	
	/**
	* Concatenates this transform with a rotation transformation.
	* This is equivalent to calling concatenate(R), where R is an
	* <code>AffineTransform</code> represented by the following matrix:
	* <pre>
	*          [   cos(theta)    -sin(theta)    0   ]
	*          [   sin(theta)     cos(theta)    0   ]
	*          [       0              0         1   ]
	* </pre>
	* Rotating by a positive angle theta rotates points on the positive
	* X axis toward the positive Y axis.
	* Note also the discussion of
	* <a href="#quadrantapproximation">Handling 90-Degree Rotations</a>
	* above.
	* @param theta the angle of rotation measured in radians
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function rotate(theta : Float) : Void;
	
	/**
	* Concatenates this transform with a transform that rotates
	* coordinates around an anchor point.
	* This operation is equivalent to translating the coordinates so
	* that the anchor point is at the origin (S1), then rotating them
	* about the new origin (S2), and finally translating so that the
	* intermediate origin is restored to the coordinates of the original
	* anchor point (S3).
	* <p>
	* This operation is equivalent to the following sequence of calls:
	* <pre>
	*     translate(anchorx, anchory);      // S3: final translation
	*     rotate(theta);                    // S2: rotate around anchor
	*     translate(-anchorx, -anchory);    // S1: translate anchor to origin
	* </pre>
	* Rotating by a positive angle theta rotates points on the positive
	* X axis toward the positive Y axis.
	* Note also the discussion of
	* <a href="#quadrantapproximation">Handling 90-Degree Rotations</a>
	* above.
	*
	* @param theta the angle of rotation measured in radians
	* @param anchorx the X coordinate of the rotation anchor point
	* @param anchory the Y coordinate of the rotation anchor point
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function rotate(theta : Float, anchorx : Float, anchory : Float) : Void;
	
	/**
	* Concatenates this transform with a transform that rotates
	* coordinates according to a rotation vector.
	* All coordinates rotate about the origin by the same amount.
	* The amount of rotation is such that coordinates along the former
	* positive X axis will subsequently align with the vector pointing
	* from the origin to the specified vector coordinates.
	* If both <code>vecx</code> and <code>vecy</code> are 0.0,
	* no additional rotation is added to this transform.
	* This operation is equivalent to calling:
	* <pre>
	*          rotate(Math.atan2(vecy, vecx));
	* </pre>
	*
	* @param vecx the X coordinate of the rotation vector
	* @param vecy the Y coordinate of the rotation vector
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function rotate(vecx : Float, vecy : Float) : Void;
	
	/**
	* Concatenates this transform with a transform that rotates
	* coordinates around an anchor point according to a rotation
	* vector.
	* All coordinates rotate about the specified anchor coordinates
	* by the same amount.
	* The amount of rotation is such that coordinates along the former
	* positive X axis will subsequently align with the vector pointing
	* from the origin to the specified vector coordinates.
	* If both <code>vecx</code> and <code>vecy</code> are 0.0,
	* the transform is not modified in any way.
	* This method is equivalent to calling:
	* <pre>
	*     rotate(Math.atan2(vecy, vecx), anchorx, anchory);
	* </pre>
	*
	* @param vecx the X coordinate of the rotation vector
	* @param vecy the Y coordinate of the rotation vector
	* @param anchorx the X coordinate of the rotation anchor point
	* @param anchory the Y coordinate of the rotation anchor point
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function rotate(vecx : Float, vecy : Float, anchorx : Float, anchory : Float) : Void;
	
	/**
	* Concatenates this transform with a transform that rotates
	* coordinates by the specified number of quadrants.
	* This is equivalent to calling:
	* <pre>
	*     rotate(numquadrants * Math.PI / 2.0);
	* </pre>
	* Rotating by a positive number of quadrants rotates points on
	* the positive X axis toward the positive Y axis.
	* @param numquadrants the number of 90 degree arcs to rotate by
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function quadrantRotate(numquadrants : Int) : Void;
	
	/**
	* Concatenates this transform with a transform that rotates
	* coordinates by the specified number of quadrants around
	* the specified anchor point.
	* This method is equivalent to calling:
	* <pre>
	*     rotate(numquadrants * Math.PI / 2.0, anchorx, anchory);
	* </pre>
	* Rotating by a positive number of quadrants rotates points on
	* the positive X axis toward the positive Y axis.
	*
	* @param numquadrants the number of 90 degree arcs to rotate by
	* @param anchorx the X coordinate of the rotation anchor point
	* @param anchory the Y coordinate of the rotation anchor point
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function quadrantRotate(numquadrants : Int, anchorx : Float, anchory : Float) : Void;
	
	/**
	* Concatenates this transform with a scaling transformation.
	* This is equivalent to calling concatenate(S), where S is an
	* <code>AffineTransform</code> represented by the following matrix:
	* <pre>
	*          [   sx   0    0   ]
	*          [   0    sy   0   ]
	*          [   0    0    1   ]
	* </pre>
	* @param sx the factor by which coordinates are scaled along the
	* X axis direction
	* @param sy the factor by which coordinates are scaled along the
	* Y axis direction
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function scale(sx : Float, sy : Float) : Void;
	
	/**
	* Concatenates this transform with a shearing transformation.
	* This is equivalent to calling concatenate(SH), where SH is an
	* <code>AffineTransform</code> represented by the following matrix:
	* <pre>
	*          [   1   shx   0   ]
	*          [  shy   1    0   ]
	*          [   0    0    1   ]
	* </pre>
	* @param shx the multiplier by which coordinates are shifted in the
	* direction of the positive X axis as a factor of their Y coordinate
	* @param shy the multiplier by which coordinates are shifted in the
	* direction of the positive Y axis as a factor of their X coordinate
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function shear(shx : Float, shy : Float) : Void;
	
	/**
	* Resets this transform to the Identity transform.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setToIdentity() : Void;
	
	/**
	* Sets this transform to a translation transformation.
	* The matrix representing this transform becomes:
	* <pre>
	*          [   1    0    tx  ]
	*          [   0    1    ty  ]
	*          [   0    0    1   ]
	* </pre>
	* @param tx the distance by which coordinates are translated in the
	* X axis direction
	* @param ty the distance by which coordinates are translated in the
	* Y axis direction
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setToTranslation(tx : Float, ty : Float) : Void;
	
	/**
	* Sets this transform to a rotation transformation.
	* The matrix representing this transform becomes:
	* <pre>
	*          [   cos(theta)    -sin(theta)    0   ]
	*          [   sin(theta)     cos(theta)    0   ]
	*          [       0              0         1   ]
	* </pre>
	* Rotating by a positive angle theta rotates points on the positive
	* X axis toward the positive Y axis.
	* Note also the discussion of
	* <a href="#quadrantapproximation">Handling 90-Degree Rotations</a>
	* above.
	* @param theta the angle of rotation measured in radians
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setToRotation(theta : Float) : Void;
	
	/**
	* Sets this transform to a translated rotation transformation.
	* This operation is equivalent to translating the coordinates so
	* that the anchor point is at the origin (S1), then rotating them
	* about the new origin (S2), and finally translating so that the
	* intermediate origin is restored to the coordinates of the original
	* anchor point (S3).
	* <p>
	* This operation is equivalent to the following sequence of calls:
	* <pre>
	*     setToTranslation(anchorx, anchory); // S3: final translation
	*     rotate(theta);                      // S2: rotate around anchor
	*     translate(-anchorx, -anchory);      // S1: translate anchor to origin
	* </pre>
	* The matrix representing this transform becomes:
	* <pre>
	*          [   cos(theta)    -sin(theta)    x-x*cos+y*sin  ]
	*          [   sin(theta)     cos(theta)    y-x*sin-y*cos  ]
	*          [       0              0               1        ]
	* </pre>
	* Rotating by a positive angle theta rotates points on the positive
	* X axis toward the positive Y axis.
	* Note also the discussion of
	* <a href="#quadrantapproximation">Handling 90-Degree Rotations</a>
	* above.
	*
	* @param theta the angle of rotation measured in radians
	* @param anchorx the X coordinate of the rotation anchor point
	* @param anchory the Y coordinate of the rotation anchor point
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setToRotation(theta : Float, anchorx : Float, anchory : Float) : Void;
	
	/**
	* Sets this transform to a rotation transformation that rotates
	* coordinates according to a rotation vector.
	* All coordinates rotate about the origin by the same amount.
	* The amount of rotation is such that coordinates along the former
	* positive X axis will subsequently align with the vector pointing
	* from the origin to the specified vector coordinates.
	* If both <code>vecx</code> and <code>vecy</code> are 0.0,
	* the transform is set to an identity transform.
	* This operation is equivalent to calling:
	* <pre>
	*     setToRotation(Math.atan2(vecy, vecx));
	* </pre>
	*
	* @param vecx the X coordinate of the rotation vector
	* @param vecy the Y coordinate of the rotation vector
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function setToRotation(vecx : Float, vecy : Float) : Void;
	
	/**
	* Sets this transform to a rotation transformation that rotates
	* coordinates around an anchor point according to a rotation
	* vector.
	* All coordinates rotate about the specified anchor coordinates
	* by the same amount.
	* The amount of rotation is such that coordinates along the former
	* positive X axis will subsequently align with the vector pointing
	* from the origin to the specified vector coordinates.
	* If both <code>vecx</code> and <code>vecy</code> are 0.0,
	* the transform is set to an identity transform.
	* This operation is equivalent to calling:
	* <pre>
	*     setToTranslation(Math.atan2(vecy, vecx), anchorx, anchory);
	* </pre>
	*
	* @param vecx the X coordinate of the rotation vector
	* @param vecy the Y coordinate of the rotation vector
	* @param anchorx the X coordinate of the rotation anchor point
	* @param anchory the Y coordinate of the rotation anchor point
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function setToRotation(vecx : Float, vecy : Float, anchorx : Float, anchory : Float) : Void;
	
	/**
	* Sets this transform to a rotation transformation that rotates
	* coordinates by the specified number of quadrants.
	* This operation is equivalent to calling:
	* <pre>
	*     setToRotation(numquadrants * Math.PI / 2.0);
	* </pre>
	* Rotating by a positive number of quadrants rotates points on
	* the positive X axis toward the positive Y axis.
	* @param numquadrants the number of 90 degree arcs to rotate by
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function setToQuadrantRotation(numquadrants : Int) : Void;
	
	/**
	* Sets this transform to a translated rotation transformation
	* that rotates coordinates by the specified number of quadrants
	* around the specified anchor point.
	* This operation is equivalent to calling:
	* <pre>
	*     setToRotation(numquadrants * Math.PI / 2.0, anchorx, anchory);
	* </pre>
	* Rotating by a positive number of quadrants rotates points on
	* the positive X axis toward the positive Y axis.
	*
	* @param numquadrants the number of 90 degree arcs to rotate by
	* @param anchorx the X coordinate of the rotation anchor point
	* @param anchory the Y coordinate of the rotation anchor point
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function setToQuadrantRotation(numquadrants : Int, anchorx : Float, anchory : Float) : Void;
	
	/**
	* Sets this transform to a scaling transformation.
	* The matrix representing this transform becomes:
	* <pre>
	*          [   sx   0    0   ]
	*          [   0    sy   0   ]
	*          [   0    0    1   ]
	* </pre>
	* @param sx the factor by which coordinates are scaled along the
	* X axis direction
	* @param sy the factor by which coordinates are scaled along the
	* Y axis direction
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setToScale(sx : Float, sy : Float) : Void;
	
	/**
	* Sets this transform to a shearing transformation.
	* The matrix representing this transform becomes:
	* <pre>
	*          [   1   shx   0   ]
	*          [  shy   1    0   ]
	*          [   0    0    1   ]
	* </pre>
	* @param shx the multiplier by which coordinates are shifted in the
	* direction of the positive X axis as a factor of their Y coordinate
	* @param shy the multiplier by which coordinates are shifted in the
	* direction of the positive Y axis as a factor of their X coordinate
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setToShear(shx : Float, shy : Float) : Void;
	
	/**
	* Sets this transform to a copy of the transform in the specified
	* <code>AffineTransform</code> object.
	* @param Tx the <code>AffineTransform</code> object from which to
	* copy the transform
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setTransform(Tx : java.awt.geom.AffineTransform) : Void;
	
	/**
	* Sets this transform to the matrix specified by the 6
	* double precision values.
	*
	* @param m00 the X coordinate scaling element of the 3x3 matrix
	* @param m10 the Y coordinate shearing element of the 3x3 matrix
	* @param m01 the X coordinate shearing element of the 3x3 matrix
	* @param m11 the Y coordinate scaling element of the 3x3 matrix
	* @param m02 the X coordinate translation element of the 3x3 matrix
	* @param m12 the Y coordinate translation element of the 3x3 matrix
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setTransform(m00 : Float, m10 : Float, m01 : Float, m11 : Float, m02 : Float, m12 : Float) : Void;
	
	/**
	* Concatenates an <code>AffineTransform</code> <code>Tx</code> to
	* this <code>AffineTransform</code> Cx in the most commonly useful
	* way to provide a new user space
	* that is mapped to the former user space by <code>Tx</code>.
	* Cx is updated to perform the combined transformation.
	* Transforming a point p by the updated transform Cx' is
	* equivalent to first transforming p by <code>Tx</code> and then
	* transforming the result by the original transform Cx like this:
	* Cx'(p) = Cx(Tx(p))
	* In matrix notation, if this transform Cx is
	* represented by the matrix [this] and <code>Tx</code> is represented
	* by the matrix [Tx] then this method does the following:
	* <pre>
	*          [this] = [this] x [Tx]
	* </pre>
	* @param Tx the <code>AffineTransform</code> object to be
	* concatenated with this <code>AffineTransform</code> object.
	* @see #preConcatenate
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function concatenate(Tx : java.awt.geom.AffineTransform) : Void;
	
	/**
	* Concatenates an <code>AffineTransform</code> <code>Tx</code> to
	* this <code>AffineTransform</code> Cx
	* in a less commonly used way such that <code>Tx</code> modifies the
	* coordinate transformation relative to the absolute pixel
	* space rather than relative to the existing user space.
	* Cx is updated to perform the combined transformation.
	* Transforming a point p by the updated transform Cx' is
	* equivalent to first transforming p by the original transform
	* Cx and then transforming the result by
	* <code>Tx</code> like this:
	* Cx'(p) = Tx(Cx(p))
	* In matrix notation, if this transform Cx
	* is represented by the matrix [this] and <code>Tx</code> is
	* represented by the matrix [Tx] then this method does the
	* following:
	* <pre>
	*          [this] = [Tx] x [this]
	* </pre>
	* @param Tx the <code>AffineTransform</code> object to be
	* concatenated with this <code>AffineTransform</code> object.
	* @see #concatenate
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function preConcatenate(Tx : java.awt.geom.AffineTransform) : Void;
	
	/**
	* Returns an <code>AffineTransform</code> object representing the
	* inverse transformation.
	* The inverse transform Tx' of this transform Tx
	* maps coordinates transformed by Tx back
	* to their original coordinates.
	* In other words, Tx'(Tx(p)) = p = Tx(Tx'(p)).
	* <p>
	* If this transform maps all coordinates onto a point or a line
	* then it will not have an inverse, since coordinates that do
	* not lie on the destination point or line will not have an inverse
	* mapping.
	* The <code>getDeterminant</code> method can be used to determine if this
	* transform has no inverse, in which case an exception will be
	* thrown if the <code>createInverse</code> method is called.
	* @return a new <code>AffineTransform</code> object representing the
	* inverse transformation.
	* @see #getDeterminant
	* @exception NoninvertibleTransformException
	* if the matrix cannot be inverted.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function createInverse() : java.awt.geom.AffineTransform;
	
	/**
	* Sets this transform to the inverse of itself.
	* The inverse transform Tx' of this transform Tx
	* maps coordinates transformed by Tx back
	* to their original coordinates.
	* In other words, Tx'(Tx(p)) = p = Tx(Tx'(p)).
	* <p>
	* If this transform maps all coordinates onto a point or a line
	* then it will not have an inverse, since coordinates that do
	* not lie on the destination point or line will not have an inverse
	* mapping.
	* The <code>getDeterminant</code> method can be used to determine if this
	* transform has no inverse, in which case an exception will be
	* thrown if the <code>invert</code> method is called.
	* @see #getDeterminant
	* @exception NoninvertibleTransformException
	* if the matrix cannot be inverted.
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function invert() : Void;
	
	/**
	* Transforms the specified <code>ptSrc</code> and stores the result
	* in <code>ptDst</code>.
	* If <code>ptDst</code> is <code>null</code>, a new {@link Point2D}
	* object is allocated and then the result of the transformation is
	* stored in this object.
	* In either case, <code>ptDst</code>, which contains the
	* transformed point, is returned for convenience.
	* If <code>ptSrc</code> and <code>ptDst</code> are the same
	* object, the input point is correctly overwritten with
	* the transformed point.
	* @param ptSrc the specified <code>Point2D</code> to be transformed
	* @param ptDst the specified <code>Point2D</code> that stores the
	* result of transforming <code>ptSrc</code>
	* @return the <code>ptDst</code> after transforming
	* <code>ptSrc</code> and stroring the result in <code>ptDst</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function transform(ptSrc : java.awt.geom.Point2D, ptDst : java.awt.geom.Point2D) : java.awt.geom.Point2D;
	
	/**
	* Transforms an array of point objects by this transform.
	* If any element of the <code>ptDst</code> array is
	* <code>null</code>, a new <code>Point2D</code> object is allocated
	* and stored into that element before storing the results of the
	* transformation.
	* <p>
	* Note that this method does not take any precautions to
	* avoid problems caused by storing results into <code>Point2D</code>
	* objects that will be used as the source for calculations
	* further down the source array.
	* This method does guarantee that if a specified <code>Point2D</code>
	* object is both the source and destination for the same single point
	* transform operation then the results will not be stored until
	* the calculations are complete to avoid storing the results on
	* top of the operands.
	* If, however, the destination <code>Point2D</code> object for one
	* operation is the same object as the source <code>Point2D</code>
	* object for another operation further down the source array then
	* the original coordinates in that point are overwritten before
	* they can be converted.
	* @param ptSrc the array containing the source point objects
	* @param ptDst the array into which the transform point objects are
	* returned
	* @param srcOff the offset to the first point object to be
	* transformed in the source array
	* @param dstOff the offset to the location of the first
	* transformed point object that is stored in the destination array
	* @param numPts the number of point objects to be transformed
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function transform(ptSrc : java.NativeArray<java.awt.geom.Point2D>, srcOff : Int, ptDst : java.NativeArray<java.awt.geom.Point2D>, dstOff : Int, numPts : Int) : Void;
	
	/**
	* Transforms an array of floating point coordinates by this transform.
	* The two coordinate array sections can be exactly the same or
	* can be overlapping sections of the same array without affecting the
	* validity of the results.
	* This method ensures that no source coordinates are overwritten by a
	* previous operation before they can be transformed.
	* The coordinates are stored in the arrays starting at the specified
	* offset in the order <code>[x0, y0, x1, y1, ..., xn, yn]</code>.
	* @param srcPts the array containing the source point coordinates.
	* Each point is stored as a pair of x,&nbsp;y coordinates.
	* @param dstPts the array into which the transformed point coordinates
	* are returned.  Each point is stored as a pair of x,&nbsp;y
	* coordinates.
	* @param srcOff the offset to the first point to be transformed
	* in the source array
	* @param dstOff the offset to the location of the first
	* transformed point that is stored in the destination array
	* @param numPts the number of points to be transformed
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function transform(srcPts : java.NativeArray<Single>, srcOff : Int, dstPts : java.NativeArray<Single>, dstOff : Int, numPts : Int) : Void;
	
	/**
	* Transforms an array of double precision coordinates by this transform.
	* The two coordinate array sections can be exactly the same or
	* can be overlapping sections of the same array without affecting the
	* validity of the results.
	* This method ensures that no source coordinates are
	* overwritten by a previous operation before they can be transformed.
	* The coordinates are stored in the arrays starting at the indicated
	* offset in the order <code>[x0, y0, x1, y1, ..., xn, yn]</code>.
	* @param srcPts the array containing the source point coordinates.
	* Each point is stored as a pair of x,&nbsp;y coordinates.
	* @param dstPts the array into which the transformed point
	* coordinates are returned.  Each point is stored as a pair of
	* x,&nbsp;y coordinates.
	* @param srcOff the offset to the first point to be transformed
	* in the source array
	* @param dstOff the offset to the location of the first
	* transformed point that is stored in the destination array
	* @param numPts the number of point objects to be transformed
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function transform(srcPts : java.NativeArray<Float>, srcOff : Int, dstPts : java.NativeArray<Float>, dstOff : Int, numPts : Int) : Void;
	
	/**
	* Transforms an array of floating point coordinates by this transform
	* and stores the results into an array of doubles.
	* The coordinates are stored in the arrays starting at the specified
	* offset in the order <code>[x0, y0, x1, y1, ..., xn, yn]</code>.
	* @param srcPts the array containing the source point coordinates.
	* Each point is stored as a pair of x,&nbsp;y coordinates.
	* @param dstPts the array into which the transformed point coordinates
	* are returned.  Each point is stored as a pair of x,&nbsp;y
	* coordinates.
	* @param srcOff the offset to the first point to be transformed
	* in the source array
	* @param dstOff the offset to the location of the first
	* transformed point that is stored in the destination array
	* @param numPts the number of points to be transformed
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function transform(srcPts : java.NativeArray<Single>, srcOff : Int, dstPts : java.NativeArray<Float>, dstOff : Int, numPts : Int) : Void;
	
	/**
	* Transforms an array of double precision coordinates by this transform
	* and stores the results into an array of floats.
	* The coordinates are stored in the arrays starting at the specified
	* offset in the order <code>[x0, y0, x1, y1, ..., xn, yn]</code>.
	* @param srcPts the array containing the source point coordinates.
	* Each point is stored as a pair of x,&nbsp;y coordinates.
	* @param dstPts the array into which the transformed point
	* coordinates are returned.  Each point is stored as a pair of
	* x,&nbsp;y coordinates.
	* @param srcOff the offset to the first point to be transformed
	* in the source array
	* @param dstOff the offset to the location of the first
	* transformed point that is stored in the destination array
	* @param numPts the number of point objects to be transformed
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function transform(srcPts : java.NativeArray<Float>, srcOff : Int, dstPts : java.NativeArray<Single>, dstOff : Int, numPts : Int) : Void;
	
	/**
	* Inverse transforms the specified <code>ptSrc</code> and stores the
	* result in <code>ptDst</code>.
	* If <code>ptDst</code> is <code>null</code>, a new
	* <code>Point2D</code> object is allocated and then the result of the
	* transform is stored in this object.
	* In either case, <code>ptDst</code>, which contains the transformed
	* point, is returned for convenience.
	* If <code>ptSrc</code> and <code>ptDst</code> are the same
	* object, the input point is correctly overwritten with the
	* transformed point.
	* @param ptSrc the point to be inverse transformed
	* @param ptDst the resulting transformed point
	* @return <code>ptDst</code>, which contains the result of the
	* inverse transform.
	* @exception NoninvertibleTransformException  if the matrix cannot be
	*                                         inverted.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function inverseTransform(ptSrc : java.awt.geom.Point2D, ptDst : java.awt.geom.Point2D) : java.awt.geom.Point2D;
	
	/**
	* Inverse transforms an array of double precision coordinates by
	* this transform.
	* The two coordinate array sections can be exactly the same or
	* can be overlapping sections of the same array without affecting the
	* validity of the results.
	* This method ensures that no source coordinates are
	* overwritten by a previous operation before they can be transformed.
	* The coordinates are stored in the arrays starting at the specified
	* offset in the order <code>[x0, y0, x1, y1, ..., xn, yn]</code>.
	* @param srcPts the array containing the source point coordinates.
	* Each point is stored as a pair of x,&nbsp;y coordinates.
	* @param dstPts the array into which the transformed point
	* coordinates are returned.  Each point is stored as a pair of
	* x,&nbsp;y coordinates.
	* @param srcOff the offset to the first point to be transformed
	* in the source array
	* @param dstOff the offset to the location of the first
	* transformed point that is stored in the destination array
	* @param numPts the number of point objects to be transformed
	* @exception NoninvertibleTransformException  if the matrix cannot be
	*                                         inverted.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function inverseTransform(srcPts : java.NativeArray<Float>, srcOff : Int, dstPts : java.NativeArray<Float>, dstOff : Int, numPts : Int) : Void;
	
	/**
	* Transforms the relative distance vector specified by
	* <code>ptSrc</code> and stores the result in <code>ptDst</code>.
	* A relative distance vector is transformed without applying the
	* translation components of the affine transformation matrix
	* using the following equations:
	* <pre>
	*  [  x' ]   [  m00  m01 (m02) ] [  x  ]   [ m00x + m01y ]
	*  [  y' ] = [  m10  m11 (m12) ] [  y  ] = [ m10x + m11y ]
	*  [ (1) ]   [  (0)  (0) ( 1 ) ] [ (1) ]   [     (1)     ]
	* </pre>
	* If <code>ptDst</code> is <code>null</code>, a new
	* <code>Point2D</code> object is allocated and then the result of the
	* transform is stored in this object.
	* In either case, <code>ptDst</code>, which contains the
	* transformed point, is returned for convenience.
	* If <code>ptSrc</code> and <code>ptDst</code> are the same object,
	* the input point is correctly overwritten with the transformed
	* point.
	* @param ptSrc the distance vector to be delta transformed
	* @param ptDst the resulting transformed distance vector
	* @return <code>ptDst</code>, which contains the result of the
	* transformation.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function deltaTransform(ptSrc : java.awt.geom.Point2D, ptDst : java.awt.geom.Point2D) : java.awt.geom.Point2D;
	
	/**
	* Transforms an array of relative distance vectors by this
	* transform.
	* A relative distance vector is transformed without applying the
	* translation components of the affine transformation matrix
	* using the following equations:
	* <pre>
	*  [  x' ]   [  m00  m01 (m02) ] [  x  ]   [ m00x + m01y ]
	*  [  y' ] = [  m10  m11 (m12) ] [  y  ] = [ m10x + m11y ]
	*  [ (1) ]   [  (0)  (0) ( 1 ) ] [ (1) ]   [     (1)     ]
	* </pre>
	* The two coordinate array sections can be exactly the same or
	* can be overlapping sections of the same array without affecting the
	* validity of the results.
	* This method ensures that no source coordinates are
	* overwritten by a previous operation before they can be transformed.
	* The coordinates are stored in the arrays starting at the indicated
	* offset in the order <code>[x0, y0, x1, y1, ..., xn, yn]</code>.
	* @param srcPts the array containing the source distance vectors.
	* Each vector is stored as a pair of relative x,&nbsp;y coordinates.
	* @param dstPts the array into which the transformed distance vectors
	* are returned.  Each vector is stored as a pair of relative
	* x,&nbsp;y coordinates.
	* @param srcOff the offset to the first vector to be transformed
	* in the source array
	* @param dstOff the offset to the location of the first
	* transformed vector that is stored in the destination array
	* @param numPts the number of vector coordinate pairs to be
	* transformed
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function deltaTransform(srcPts : java.NativeArray<Float>, srcOff : Int, dstPts : java.NativeArray<Float>, dstOff : Int, numPts : Int) : Void;
	
	/**
	* Returns a new {@link Shape} object defined by the geometry of the
	* specified <code>Shape</code> after it has been transformed by
	* this transform.
	* @param pSrc the specified <code>Shape</code> object to be
	* transformed by this transform.
	* @return a new <code>Shape</code> object that defines the geometry
	* of the transformed <code>Shape</code>, or null if {@code pSrc} is null.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function createTransformedShape(pSrc : java.awt.Shape) : java.awt.Shape;
	
	/**
	* Returns a <code>String</code> that represents the value of this
	* {@link Object}.
	* @return a <code>String</code> representing the value of this
	* <code>Object</code>.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function toString() : String;
	
	/**
	* Returns <code>true</code> if this <code>AffineTransform</code> is
	* an identity transform.
	* @return <code>true</code> if this <code>AffineTransform</code> is
	* an identity transform; <code>false</code> otherwise.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function isIdentity() : Bool;
	
	/**
	* Returns a copy of this <code>AffineTransform</code> object.
	* @return an <code>Object</code> that is a copy of this
	* <code>AffineTransform</code> object.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function clone() : Dynamic;
	
	/**
	* Returns the hashcode for this transform.
	* @return      a hash code for this transform.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function hashCode() : Int;
	
	/**
	* Returns <code>true</code> if this <code>AffineTransform</code>
	* represents the same affine coordinate transform as the specified
	* argument.
	* @param obj the <code>Object</code> to test for equality with this
	* <code>AffineTransform</code>
	* @return <code>true</code> if <code>obj</code> equals this
	* <code>AffineTransform</code> object; <code>false</code> otherwise.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function equals(obj : Dynamic) : Bool;
	
	
}
