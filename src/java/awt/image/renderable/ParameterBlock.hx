package java.awt.image.renderable;
/*
* Copyright (c) 1998, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class ParameterBlock implements java.lang.Cloneable implements java.io.Serializable
{
	/** A Vector of sources, stored as arbitrary Objects. */
	@:protected private var sources : java.util.Vector<Dynamic>;
	
	/** A Vector of non-source parameters, stored as arbitrary Objects. */
	@:protected private var parameters : java.util.Vector<Dynamic>;
	
	/** A dummy constructor. */
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a <code>ParameterBlock</code> with a given Vector
	* of sources.
	* @param sources a <code>Vector</code> of source images
	*/
	@:overload @:public public function new(sources : java.util.Vector<Dynamic>) : Void;
	
	/**
	* Constructs a <code>ParameterBlock</code> with a given Vector of sources and
	* Vector of parameters.
	* @param sources a <code>Vector</code> of source images
	* @param parameters a <code>Vector</code> of parameters to be used in the
	*        rendering operation
	*/
	@:overload @:public public function new(sources : java.util.Vector<Dynamic>, parameters : java.util.Vector<Dynamic>) : Void;
	
	/**
	* Creates a shallow copy of a <code>ParameterBlock</code>.  The source and
	* parameter Vectors are copied by reference -- additions or
	* changes will be visible to both versions.
	*
	* @return an Object clone of the <code>ParameterBlock</code>.
	*/
	@:overload @:public public function shallowClone() : Dynamic;
	
	/**
	* Creates a copy of a <code>ParameterBlock</code>.  The source and parameter
	* Vectors are cloned, but the actual sources and parameters are
	* copied by reference.  This allows modifications to the order
	* and number of sources and parameters in the clone to be invisible
	* to the original <code>ParameterBlock</code>.  Changes to the shared sources or
	* parameters themselves will still be visible.
	*
	* @return an Object clone of the <code>ParameterBlock</code>.
	*/
	@:overload @:public public function clone() : Dynamic;
	
	/**
	* Adds an image to end of the list of sources.  The image is
	* stored as an object in order to allow new node types in the
	* future.
	*
	* @param source an image object to be stored in the source list.
	* @return a new <code>ParameterBlock</code> containing the specified
	*         <code>source</code>.
	*/
	@:overload @:public public function addSource(source : Dynamic) : java.awt.image.renderable.ParameterBlock;
	
	/**
	* Returns a source as a general Object.  The caller must cast it into
	* an appropriate type.
	*
	* @param index the index of the source to be returned.
	* @return an <code>Object</code> that represents the source located
	*         at the specified index in the <code>sources</code>
	*         <code>Vector</code>.
	* @see #setSource(Object, int)
	*/
	@:overload @:public public function getSource(index : Int) : Dynamic;
	
	/**
	* Replaces an entry in the list of source with a new source.
	* If the index lies beyond the current source list,
	* the list is extended with nulls as needed.
	* @param source the specified source image
	* @param index the index into the <code>sources</code>
	*              <code>Vector</code> at which to
	*              insert the specified <code>source</code>
	* @return a new <code>ParameterBlock</code> that contains the
	*         specified <code>source</code> at the specified
	*         <code>index</code>.
	* @see #getSource(int)
	*/
	@:overload @:public public function setSource(source : Dynamic, index : Int) : java.awt.image.renderable.ParameterBlock;
	
	/**
	* Returns a source as a <code>RenderedImage</code>.  This method is
	* a convenience method.
	* An exception will be thrown if the source is not a RenderedImage.
	*
	* @param index the index of the source to be returned
	* @return a <code>RenderedImage</code> that represents the source
	*         image that is at the specified index in the
	*         <code>sources</code> <code>Vector</code>.
	*/
	@:overload @:public public function getRenderedSource(index : Int) : java.awt.image.RenderedImage;
	
	/**
	* Returns a source as a RenderableImage.  This method is a
	* convenience method.
	* An exception will be thrown if the sources is not a RenderableImage.
	*
	* @param index the index of the source to be returned
	* @return a <code>RenderableImage</code> that represents the source
	*         image that is at the specified index in the
	*         <code>sources</code> <code>Vector</code>.
	*/
	@:overload @:public public function getRenderableSource(index : Int) : java.awt.image.renderable.RenderableImage;
	
	/**
	* Returns the number of source images.
	* @return the number of source images in the <code>sources</code>
	*         <code>Vector</code>.
	*/
	@:overload @:public public function getNumSources() : Int;
	
	/**
	* Returns the entire Vector of sources.
	* @return the <code>sources</code> <code>Vector</code>.
	* @see #setSources(Vector)
	*/
	@:overload @:public public function getSources() : java.util.Vector<Dynamic>;
	
	/**
	* Sets the entire Vector of sources to a given Vector.
	* @param sources the <code>Vector</code> of source images
	* @see #getSources
	*/
	@:overload @:public public function setSources(sources : java.util.Vector<Dynamic>) : Void;
	
	/** Clears the list of source images. */
	@:overload @:public public function removeSources() : Void;
	
	/**
	* Returns the number of parameters (not including source images).
	* @return the number of parameters in the <code>parameters</code>
	*         <code>Vector</code>.
	*/
	@:overload @:public public function getNumParameters() : Int;
	
	/**
	* Returns the entire Vector of parameters.
	* @return the <code>parameters</code> <code>Vector</code>.
	* @see #setParameters(Vector)
	*/
	@:overload @:public public function getParameters() : java.util.Vector<Dynamic>;
	
	/**
	* Sets the entire Vector of parameters to a given Vector.
	* @param parameters the specified <code>Vector</code> of
	*        parameters
	* @see #getParameters
	*/
	@:overload @:public public function setParameters(parameters : java.util.Vector<Dynamic>) : Void;
	
	/** Clears the list of parameters. */
	@:overload @:public public function removeParameters() : Void;
	
	/**
	* Adds an object to the list of parameters.
	* @param obj the <code>Object</code> to add to the
	*            <code>parameters</code> <code>Vector</code>
	* @return a new <code>ParameterBlock</code> containing
	*         the specified parameter.
	*/
	@:overload @:public public function add(obj : Dynamic) : java.awt.image.renderable.ParameterBlock;
	
	/**
	* Adds a Byte to the list of parameters.
	* @param b the byte to add to the
	*            <code>parameters</code> <code>Vector</code>
	* @return a new <code>ParameterBlock</code> containing
	*         the specified parameter.
	*/
	@:overload @:public public function add(b : java.StdTypes.Int8) : java.awt.image.renderable.ParameterBlock;
	
	/**
	* Adds a Character to the list of parameters.
	* @param c the char to add to the
	*            <code>parameters</code> <code>Vector</code>
	* @return a new <code>ParameterBlock</code> containing
	*         the specified parameter.
	*/
	@:overload @:public public function add(c : java.StdTypes.Char16) : java.awt.image.renderable.ParameterBlock;
	
	/**
	* Adds a Short to the list of parameters.
	* @param s the short to add to the
	*            <code>parameters</code> <code>Vector</code>
	* @return a new <code>ParameterBlock</code> containing
	*         the specified parameter.
	*/
	@:overload @:public public function add(s : java.StdTypes.Int16) : java.awt.image.renderable.ParameterBlock;
	
	/**
	* Adds a Integer to the list of parameters.
	* @param i the int to add to the
	*            <code>parameters</code> <code>Vector</code>
	* @return a new <code>ParameterBlock</code> containing
	*         the specified parameter.
	*/
	@:overload @:public public function add(i : Int) : java.awt.image.renderable.ParameterBlock;
	
	/**
	* Adds a Long to the list of parameters.
	* @param l the long to add to the
	*            <code>parameters</code> <code>Vector</code>
	* @return a new <code>ParameterBlock</code> containing
	*         the specified parameter.
	*/
	@:overload @:public public function add(l : haxe.Int64) : java.awt.image.renderable.ParameterBlock;
	
	/**
	* Adds a Float to the list of parameters.
	* @param f the float to add to the
	*            <code>parameters</code> <code>Vector</code>
	* @return a new <code>ParameterBlock</code> containing
	*         the specified parameter.
	*/
	@:overload @:public public function add(f : Single) : java.awt.image.renderable.ParameterBlock;
	
	/**
	* Adds a Double to the list of parameters.
	* @param d the double to add to the
	*            <code>parameters</code> <code>Vector</code>
	* @return a new <code>ParameterBlock</code> containing
	*         the specified parameter.
	*/
	@:overload @:public public function add(d : Float) : java.awt.image.renderable.ParameterBlock;
	
	/**
	* Replaces an Object in the list of parameters.
	* If the index lies beyond the current source list,
	* the list is extended with nulls as needed.
	* @param obj the parameter that replaces the
	*        parameter at the specified index in the
	*        <code>parameters</code> <code>Vector</code>
	* @param index the index of the parameter to be
	*        replaced with the specified parameter
	* @return a new <code>ParameterBlock</code> containing
	*        the specified parameter.
	*/
	@:overload @:public public function set(obj : Dynamic, index : Int) : java.awt.image.renderable.ParameterBlock;
	
	/**
	* Replaces an Object in the list of parameters with a Byte.
	* If the index lies beyond the current source list,
	* the list is extended with nulls as needed.
	* @param b the parameter that replaces the
	*        parameter at the specified index in the
	*        <code>parameters</code> <code>Vector</code>
	* @param index the index of the parameter to be
	*        replaced with the specified parameter
	* @return a new <code>ParameterBlock</code> containing
	*        the specified parameter.
	*/
	@:overload @:public public function set(b : java.StdTypes.Int8, index : Int) : java.awt.image.renderable.ParameterBlock;
	
	/**
	* Replaces an Object in the list of parameters with a Character.
	* If the index lies beyond the current source list,
	* the list is extended with nulls as needed.
	* @param c the parameter that replaces the
	*        parameter at the specified index in the
	*        <code>parameters</code> <code>Vector</code>
	* @param index the index of the parameter to be
	*        replaced with the specified parameter
	* @return a new <code>ParameterBlock</code> containing
	*        the specified parameter.
	*/
	@:overload @:public public function set(c : java.StdTypes.Char16, index : Int) : java.awt.image.renderable.ParameterBlock;
	
	/**
	* Replaces an Object in the list of parameters with a Short.
	* If the index lies beyond the current source list,
	* the list is extended with nulls as needed.
	* @param s the parameter that replaces the
	*        parameter at the specified index in the
	*        <code>parameters</code> <code>Vector</code>
	* @param index the index of the parameter to be
	*        replaced with the specified parameter
	* @return a new <code>ParameterBlock</code> containing
	*        the specified parameter.
	*/
	@:overload @:public public function set(s : java.StdTypes.Int16, index : Int) : java.awt.image.renderable.ParameterBlock;
	
	/**
	* Replaces an Object in the list of parameters with an Integer.
	* If the index lies beyond the current source list,
	* the list is extended with nulls as needed.
	* @param i the parameter that replaces the
	*        parameter at the specified index in the
	*        <code>parameters</code> <code>Vector</code>
	* @param index the index of the parameter to be
	*        replaced with the specified parameter
	* @return a new <code>ParameterBlock</code> containing
	*        the specified parameter.
	*/
	@:overload @:public public function set(i : Int, index : Int) : java.awt.image.renderable.ParameterBlock;
	
	/**
	* Replaces an Object in the list of parameters with a Long.
	* If the index lies beyond the current source list,
	* the list is extended with nulls as needed.
	* @param l the parameter that replaces the
	*        parameter at the specified index in the
	*        <code>parameters</code> <code>Vector</code>
	* @param index the index of the parameter to be
	*        replaced with the specified parameter
	* @return a new <code>ParameterBlock</code> containing
	*        the specified parameter.
	*/
	@:overload @:public public function set(l : haxe.Int64, index : Int) : java.awt.image.renderable.ParameterBlock;
	
	/**
	* Replaces an Object in the list of parameters with a Float.
	* If the index lies beyond the current source list,
	* the list is extended with nulls as needed.
	* @param f the parameter that replaces the
	*        parameter at the specified index in the
	*        <code>parameters</code> <code>Vector</code>
	* @param index the index of the parameter to be
	*        replaced with the specified parameter
	* @return a new <code>ParameterBlock</code> containing
	*        the specified parameter.
	*/
	@:overload @:public public function set(f : Single, index : Int) : java.awt.image.renderable.ParameterBlock;
	
	/**
	* Replaces an Object in the list of parameters with a Double.
	* If the index lies beyond the current source list,
	* the list is extended with nulls as needed.
	* @param d the parameter that replaces the
	*        parameter at the specified index in the
	*        <code>parameters</code> <code>Vector</code>
	* @param index the index of the parameter to be
	*        replaced with the specified parameter
	* @return a new <code>ParameterBlock</code> containing
	*        the specified parameter.
	*/
	@:overload @:public public function set(d : Float, index : Int) : java.awt.image.renderable.ParameterBlock;
	
	/**
	* Gets a parameter as an object.
	* @param index the index of the parameter to get
	* @return an <code>Object</code> representing the
	*         the parameter at the specified index
	*         into the <code>parameters</code>
	*         <code>Vector</code>.
	*/
	@:overload @:public public function getObjectParameter(index : Int) : Dynamic;
	
	/**
	* A convenience method to return a parameter as a byte.  An
	* exception is thrown if the parameter is
	* <code>null</code> or not a <code>Byte</code>.
	*
	* @param index the index of the parameter to be returned.
	* @return the parameter at the specified index
	*         as a <code>byte</code> value.
	* @throws ClassCastException if the parameter at the
	*         specified index is not a <code>Byte</code>
	* @throws NullPointerException if the parameter at the specified
	*         index is <code>null</code>
	* @throws ArrayIndexOutOfBoundsException if <code>index</code>
	*         is negative or not less than the current size of this
	*         <code>ParameterBlock</code> object
	*/
	@:overload @:public public function getByteParameter(index : Int) : java.StdTypes.Int8;
	
	/**
	* A convenience method to return a parameter as a char.  An
	* exception is thrown if the parameter is
	* <code>null</code> or not a <code>Character</code>.
	*
	* @param index the index of the parameter to be returned.
	* @return the parameter at the specified index
	*         as a <code>char</code> value.
	* @throws ClassCastException if the parameter at the
	*         specified index is not a <code>Character</code>
	* @throws NullPointerException if the parameter at the specified
	*         index is <code>null</code>
	* @throws ArrayIndexOutOfBoundsException if <code>index</code>
	*         is negative or not less than the current size of this
	*         <code>ParameterBlock</code> object
	*/
	@:overload @:public public function getCharParameter(index : Int) : java.StdTypes.Char16;
	
	/**
	* A convenience method to return a parameter as a short.  An
	* exception is thrown if the parameter is
	* <code>null</code> or not a <code>Short</code>.
	*
	* @param index the index of the parameter to be returned.
	* @return the parameter at the specified index
	*         as a <code>short</code> value.
	* @throws ClassCastException if the parameter at the
	*         specified index is not a <code>Short</code>
	* @throws NullPointerException if the parameter at the specified
	*         index is <code>null</code>
	* @throws ArrayIndexOutOfBoundsException if <code>index</code>
	*         is negative or not less than the current size of this
	*         <code>ParameterBlock</code> object
	*/
	@:overload @:public public function getShortParameter(index : Int) : java.StdTypes.Int16;
	
	/**
	* A convenience method to return a parameter as an int.  An
	* exception is thrown if the parameter is
	* <code>null</code> or not an <code>Integer</code>.
	*
	* @param index the index of the parameter to be returned.
	* @return the parameter at the specified index
	*         as a <code>int</code> value.
	* @throws ClassCastException if the parameter at the
	*         specified index is not a <code>Integer</code>
	* @throws NullPointerException if the parameter at the specified
	*         index is <code>null</code>
	* @throws ArrayIndexOutOfBoundsException if <code>index</code>
	*         is negative or not less than the current size of this
	*         <code>ParameterBlock</code> object
	*/
	@:overload @:public public function getIntParameter(index : Int) : Int;
	
	/**
	* A convenience method to return a parameter as a long.  An
	* exception is thrown if the parameter is
	* <code>null</code> or not a <code>Long</code>.
	*
	* @param index the index of the parameter to be returned.
	* @return the parameter at the specified index
	*         as a <code>long</code> value.
	* @throws ClassCastException if the parameter at the
	*         specified index is not a <code>Long</code>
	* @throws NullPointerException if the parameter at the specified
	*         index is <code>null</code>
	* @throws ArrayIndexOutOfBoundsException if <code>index</code>
	*         is negative or not less than the current size of this
	*         <code>ParameterBlock</code> object
	*/
	@:overload @:public public function getLongParameter(index : Int) : haxe.Int64;
	
	/**
	* A convenience method to return a parameter as a float.  An
	* exception is thrown if the parameter is
	* <code>null</code> or not a <code>Float</code>.
	*
	* @param index the index of the parameter to be returned.
	* @return the parameter at the specified index
	*         as a <code>float</code> value.
	* @throws ClassCastException if the parameter at the
	*         specified index is not a <code>Float</code>
	* @throws NullPointerException if the parameter at the specified
	*         index is <code>null</code>
	* @throws ArrayIndexOutOfBoundsException if <code>index</code>
	*         is negative or not less than the current size of this
	*         <code>ParameterBlock</code> object
	*/
	@:overload @:public public function getFloatParameter(index : Int) : Single;
	
	/**
	* A convenience method to return a parameter as a double.  An
	* exception is thrown if the parameter is
	* <code>null</code> or not a <code>Double</code>.
	*
	* @param index the index of the parameter to be returned.
	* @return the parameter at the specified index
	*         as a <code>double</code> value.
	* @throws ClassCastException if the parameter at the
	*         specified index is not a <code>Double</code>
	* @throws NullPointerException if the parameter at the specified
	*         index is <code>null</code>
	* @throws ArrayIndexOutOfBoundsException if <code>index</code>
	*         is negative or not less than the current size of this
	*         <code>ParameterBlock</code> object
	*/
	@:overload @:public public function getDoubleParameter(index : Int) : Float;
	
	/**
	* Returns an array of Class objects describing the types
	* of the parameters.
	* @return an array of <code>Class</code> objects.
	*/
	@:overload @:public public function getParamClasses() : java.NativeArray<Class<Dynamic>>;
	
	
}
