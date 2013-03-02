package javax.management.remote.rmi;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class NoCallStackClassLoader extends java.lang.ClassLoader
{
	/** Simplified constructor when this loader only defines one class.  */
	@:overload public function new(className : String, byteCode : java.NativeArray<java.StdTypes.Int8>, referencedClassNames : java.NativeArray<String>, referencedClassLoader : java.lang.ClassLoader, protectionDomain : java.security.ProtectionDomain) : Void;
	
	@:overload public function new(classNames : java.NativeArray<String>, byteCodes : java.NativeArray<java.NativeArray<java.StdTypes.Int8>>, referencedClassNames : java.NativeArray<String>, referencedClassLoader : java.lang.ClassLoader, protectionDomain : java.security.ProtectionDomain) : Void;
	
	/* This method is called at most once per name.  Define the name
	* if it is one of the classes whose byte code we have, or
	* delegate the load if it is one of the referenced classes.
	*/
	@:overload private function findClass(name : String) : Class<Dynamic>;
	
	/**
	* <p>Construct a <code>byte[]</code> using the characters of the
	* given <code>String</code>.  Only the low-order byte of each
	* character is used.  This method is useful to reduce the
	* footprint of classes that include big byte arrays (e.g. the
	* byte code of other classes), because a string takes up much
	* less space in a class file than the byte code to initialize a
	* <code>byte[]</code> with the same number of bytes.</p>
	*
	* <p>We use just one byte per character even though characters
	* contain two bytes.  The resultant output length is much the
	* same: using one byte per character is shorter because it has
	* more characters in the optimal 1-127 range but longer because
	* it has more zero bytes (which are frequent, and are encoded as
	* two bytes in classfile UTF-8).  But one byte per character has
	* two key advantages: (1) you can see the string constants, which
	* is reassuring, (2) you don't need to know whether the class
	* file length is odd.</p>
	*
	* <p>This method differs from {@link String#getBytes()} in that
	* it does not use any encoding.  So it is guaranteed that each
	* byte of the result is numerically identical (mod 256) to the
	* corresponding character of the input.
	*/
	@:overload public static function stringToBytes(s : String) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
