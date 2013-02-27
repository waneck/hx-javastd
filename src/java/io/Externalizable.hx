package java.io;
/*
* Copyright (c) 1996, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface Externalizable extends java.io.Serializable
{
	/**
	* The object implements the writeExternal method to save its contents
	* by calling the methods of DataOutput for its primitive values or
	* calling the writeObject method of ObjectOutput for objects, strings,
	* and arrays.
	*
	* @serialData Overriding methods should use this tag to describe
	*             the data layout of this Externalizable object.
	*             List the sequence of element types and, if possible,
	*             relate the element to a public/protected field and/or
	*             method of this Externalizable class.
	*
	* @param out the stream to write the object to
	* @exception IOException Includes any I/O exceptions that may occur
	*/
	@:overload public function writeExternal(out : java.io.ObjectOutput) : Void;
	
	/**
	* The object implements the readExternal method to restore its
	* contents by calling the methods of DataInput for primitive
	* types and readObject for objects, strings and arrays.  The
	* readExternal method must read the values in the same sequence
	* and with the same types as were written by writeExternal.
	*
	* @param in the stream to read data from in order to restore the object
	* @exception IOException if I/O errors occur
	* @exception ClassNotFoundException If the class for an object being
	*              restored cannot be found.
	*/
	@:overload public function readExternal(_in : java.io.ObjectInput) : Void;
	
	
}
