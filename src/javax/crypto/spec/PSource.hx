package javax.crypto.spec;
/*
* Copyright (c) 2003, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class PSource
{
	/**
	* Constructs a source of the encoding input P for OAEP
	* padding as defined in the PKCS #1 standard using the
	* specified PSource algorithm.
	* @param pSrcName the algorithm for the source of the
	* encoding input P.
	* @exception NullPointerException if <code>pSrcName</code>
	* is null.
	*/
	@:overload @:protected private function new(pSrcName : String) : Void;
	
	/**
	* Returns the PSource algorithm name.
	*
	* @return the PSource algorithm name.
	*/
	@:overload @:public public function getAlgorithm() : String;
	
	
}
/**
* This class is used to explicitly specify the value for
* encoding input P in OAEP Padding.
*
* @since 1.5
*/
@:require(java5) @:native('javax$crypto$spec$PSource$PSpecified') extern class PSource_PSpecified extends javax.crypto.spec.PSource
{
	/**
	* The encoding input P whose value equals byte[0].
	*/
	@:public @:static @:final public static var DEFAULT(default, null) : javax.crypto.spec.PSource.PSource_PSpecified;
	
	/**
	* Constructs the source explicitly with the specified
	* value <code>p</code> as the encoding input P.
	* Note:
	* @param p the value of the encoding input. The contents
	* of the array are copied to protect against subsequent
	* modification.
	* @exception NullPointerException if <code>p</code> is null.
	*/
	@:overload @:public public function new(p : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Returns the value of encoding input P.
	* @return the value of encoding input P. A new array is
	* returned each time this method is called.
	*/
	@:overload @:public public function getValue() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
