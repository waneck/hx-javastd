package com.sun.jdi;
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
extern interface ArrayReference extends com.sun.jdi.ObjectReference
{
	/**
	* Returns the number of components in this array.
	*
	* @return the integer count of components in this array.
	*/
	@:overload public function length() : Int;
	
	/**
	* Returns an array component value.
	*
	* @param index the index of the component to retrieve
	* @return the {@link Value} at the given index.
	* @throws java.lang.IndexOutOfBoundsException if
	* <CODE><I>index</I></CODE> is outside the range of this array,
	* that is, if either of the following are true:
	* <PRE>
	*    <I>index</I> &lt; 0
	*    <I>index</I> &gt;= {@link #length() length()} </PRE>
	*/
	@:overload public function getValue(index : Int) : com.sun.jdi.Value;
	
	/**
	* Returns all of the components in this array.
	*
	* @return a list of {@link Value} objects, one for each array
	* component ordered by array index.  For zero length arrays,
	* an empty list is returned.
	*/
	@:overload public function getValues() : java.util.List<com.sun.jdi.Value>;
	
	/**
	* Returns a range of array components.
	*
	* @param index the index of the first component to retrieve
	* @param length the number of components to retrieve, or -1 to
	* retrieve all components to the end of this array.
	* @return a list of {@link Value} objects, one for each requested
	* array component ordered by array index.  When there are
	* no elements in the specified range (e.g.
	* <CODE><I>length</I></CODE> is zero) an empty list is returned
	*
	* @throws java.lang.IndexOutOfBoundsException if the range
	* specified with <CODE><I>index</I></CODE> and
	* <CODE><I>length</I></CODE> is not within the range of the array,
	* that is, if either of the following are true:
	* <PRE>
	*    <I>index</I> &lt; 0
	*    <I>index</I> &gt; {@link #length() length()} </PRE>
	* or if <CODE><I>length</I> != -1</CODE> and
	* either of the following are true:
	* <PRE>
	*    <I>length</I> &lt; 0
	*    <I>index</I> + <I>length</I> &gt;  {@link #length() length()}</PRE>
	*/
	@:overload public function getValues(index : Int, length : Int) : java.util.List<com.sun.jdi.Value>;
	
	/**
	* Replaces an array component with another value.
	* <p>
	* Object values must be assignment compatible with the component type
	* (This implies that the component type must be loaded through the
	* declaring class's class loader). Primitive values must be
	* either assignment compatible with the component type or must be
	* convertible to the component type without loss of information.
	* See JLS section 5.2 for more information on assignment
	* compatibility.
	*
	* @param value the new value
	* @param index the index of the component to set
	* @throws java.lang.IndexOutOfBoundsException if
	* <CODE><I>index</I></CODE> is outside the range of this array,
	* that is, if either of the following are true:
	* <PRE>
	*    <I>index</I> &lt; 0
	*    <I>index</I> &gt;= {@link #length() length()} </PRE>
	* @throws InvalidTypeException if the type of <CODE><I>value</I></CODE>
	* is not compatible with the declared type of array components.
	* @throws ClassNotLoadedException if the array component type
	* has not yet been loaded
	* through the appropriate class loader.
	* @throws VMCannotBeModifiedException if the VirtualMachine is read-only - see {@link VirtualMachine#canBeModified()}.
	*
	* @see ArrayType#componentType()
	*/
	@:overload public function setValue(index : Int, value : com.sun.jdi.Value) : Void;
	
	/**
	* Replaces all array components with other values. If the given
	* list is larger in size than the array, the values at the
	* end of the list are ignored.
	* <p>
	* Object values must be assignment compatible with the element type
	* (This implies that the component type must be loaded through the
	* enclosing class's class loader). Primitive values must be
	* either assignment compatible with the component type or must be
	* convertible to the component type without loss of information.
	* See JLS section 5.2 for more information on assignment
	* compatibility.
	*
	* @param values a list of {@link Value} objects to be placed
	* in this array.  If <CODE><I>values</I>.size()</CODE> is
	* less that the length of the array, the first
	* <CODE><I>values</I>.size()</CODE> elements are set.
	* @throws InvalidTypeException if any of the
	* new <CODE><I>values</I></CODE>
	* is not compatible with the declared type of array components.
	* @throws ClassNotLoadedException if the array component
	* type has not yet been loaded
	* through the appropriate class loader.
	* @throws VMCannotBeModifiedException if the VirtualMachine is read-only - see {@link VirtualMachine#canBeModified()}.
	*
	* @see ArrayType#componentType()
	*/
	@:overload public function setValues(values : java.util.List<com.sun.jdi.Value>) : Void;
	
	/**
	* Replaces a range of array components with other values.
	* <p>
	* Object values must be assignment compatible with the component type
	* (This implies that the component type must be loaded through the
	* enclosing class's class loader). Primitive values must be
	* either assignment compatible with the component type or must be
	* convertible to the component type without loss of information.
	* See JLS section 5.2 for more information on assignment
	* compatibility.
	*
	* @param index the index of the first component to set.
	* @param values a list of {@link Value} objects to be placed
	* in this array.
	* @param srcIndex the index of the first source value to use.
	* @param length the number of components to set, or -1 to set
	* all components to the end of this array or the end of
	* <CODE><I>values</I></CODE> (whichever comes first).
	* @throws InvalidTypeException if any element of
	* <CODE><I>values</I></CODE>
	* is not compatible with the declared type of array components.
	* @throws java.lang.IndexOutOfBoundsException if the
	* array range specified with
	* <CODE><I>index</I></CODE> and  <CODE><I>length</I></CODE>
	* is not within the range of the array,
	* or if the source range specified with
	* <CODE><I>srcIndex</I></CODE> and <CODE><I>length</I></CODE>
	* is not within <CODE><I>values</I></CODE>,
	* that is, if any of the following are true:
	* <PRE>
	*    <I>index</I> &lt; 0
	*    <I>index</I> &gt; {@link #length() length()}
	*    <I>srcIndex</I> &lt; 0
	*    <I>srcIndex</I> &gt; <I>values</I>.size() </PRE>
	* or if <CODE><I>length</I> != -1</CODE> and any of the
	* following are true:
	* <PRE>
	*    <I>length</I> &lt; 0
	*    <I>index</I> + <I>length</I> &gt; {@link #length() length()}
	*    <I>srcIndex</I> + <I>length</I> &gt; <I>values</I>.size() </PRE>
	* @throws VMCannotBeModifiedException if the VirtualMachine is read-only - see {@link VirtualMachine#canBeModified()}.
	* @see ArrayType#componentType()
	*/
	@:overload public function setValues(index : Int, values : java.util.List<com.sun.jdi.Value>, srcIndex : Int, length : Int) : Void;
	
	
}
