package java.security;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class SecureClassLoader extends java.lang.ClassLoader
{
	/**
	* Creates a new SecureClassLoader using the specified parent
	* class loader for delegation.
	*
	* <p>If there is a security manager, this method first
	* calls the security manager's <code>checkCreateClassLoader</code>
	* method  to ensure creation of a class loader is allowed.
	* <p>
	* @param parent the parent ClassLoader
	* @exception  SecurityException  if a security manager exists and its
	*             <code>checkCreateClassLoader</code> method doesn't allow
	*             creation of a class loader.
	* @see SecurityManager#checkCreateClassLoader
	*/
	@:overload private function new(parent : java.lang.ClassLoader) : Void;
	
	/**
	* Creates a new SecureClassLoader using the default parent class
	* loader for delegation.
	*
	* <p>If there is a security manager, this method first
	* calls the security manager's <code>checkCreateClassLoader</code>
	* method  to ensure creation of a class loader is allowed.
	*
	* @exception  SecurityException  if a security manager exists and its
	*             <code>checkCreateClassLoader</code> method doesn't allow
	*             creation of a class loader.
	* @see SecurityManager#checkCreateClassLoader
	*/
	@:overload private function new() : Void;
	
	/**
	* Converts an array of bytes into an instance of class Class,
	* with an optional CodeSource. Before the
	* class can be used it must be resolved.
	* <p>
	* If a non-null CodeSource is supplied a ProtectionDomain is
	* constructed and associated with the class being defined.
	* <p>
	* @param      name the expected name of the class, or <code>null</code>
	*                  if not known, using '.' and not '/' as the separator
	*                  and without a trailing ".class" suffix.
	* @param      b    the bytes that make up the class data. The bytes in
	*             positions <code>off</code> through <code>off+len-1</code>
	*             should have the format of a valid class file as defined by
	*             <cite>The Java&trade; Virtual Machine Specification</cite>.
	* @param      off  the start offset in <code>b</code> of the class data
	* @param      len  the length of the class data
	* @param      cs   the associated CodeSource, or <code>null</code> if none
	* @return the <code>Class</code> object created from the data,
	*         and optional CodeSource.
	* @exception  ClassFormatError if the data did not contain a valid class
	* @exception  IndexOutOfBoundsException if either <code>off</code> or
	*             <code>len</code> is negative, or if
	*             <code>off+len</code> is greater than <code>b.length</code>.
	*
	* @exception  SecurityException if an attempt is made to add this class
	*             to a package that contains classes that were signed by
	*             a different set of certificates than this class, or if
	*             the class name begins with "java.".
	*/
	@:overload @:final private function defineClass(name : String, b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int, cs : java.security.CodeSource) : Class<Dynamic>;
	
	/**
	* Converts a {@link java.nio.ByteBuffer <tt>ByteBuffer</tt>}
	* into an instance of class <tt>Class</tt>, with an optional CodeSource.
	* Before the class can be used it must be resolved.
	* <p>
	* If a non-null CodeSource is supplied a ProtectionDomain is
	* constructed and associated with the class being defined.
	* <p>
	* @param      name the expected name of the class, or <code>null</code>
	*                  if not known, using '.' and not '/' as the separator
	*                  and without a trailing ".class" suffix.
	* @param      b    the bytes that make up the class data.  The bytes from positions
	*                  <tt>b.position()</tt> through <tt>b.position() + b.limit() -1</tt>
	*                  should have the format of a valid class file as defined by
	*                  <cite>The Java&trade; Virtual Machine Specification</cite>.
	* @param      cs   the associated CodeSource, or <code>null</code> if none
	* @return the <code>Class</code> object created from the data,
	*         and optional CodeSource.
	* @exception  ClassFormatError if the data did not contain a valid class
	* @exception  SecurityException if an attempt is made to add this class
	*             to a package that contains classes that were signed by
	*             a different set of certificates than this class, or if
	*             the class name begins with "java.".
	*
	* @since  1.5
	*/
	@:require(java5) @:overload @:final private function defineClass(name : String, b : java.nio.ByteBuffer, cs : java.security.CodeSource) : Class<Dynamic>;
	
	/**
	* Returns the permissions for the given CodeSource object.
	* <p>
	* This method is invoked by the defineClass method which takes
	* a CodeSource as an argument when it is constructing the
	* ProtectionDomain for the class being defined.
	* <p>
	* @param codesource the codesource.
	*
	* @return the permissions granted to the codesource.
	*
	*/
	@:overload private function getPermissions(codesource : java.security.CodeSource) : java.security.PermissionCollection;
	
	
}
