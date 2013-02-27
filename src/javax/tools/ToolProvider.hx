package javax.tools;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
/**
* Provides methods for locating tool providers, for example,
* providers of compilers.  This class complements the
* functionality of {@link java.util.ServiceLoader}.
*
* @author Peter von der Ah&eacute;
* @since 1.6
*/
@:require(java6) extern class ToolProvider
{
	/**
	* Gets the Java&trade; programming language compiler provided
	* with this platform.
	* @return the compiler provided with this platform or
	* {@code null} if no compiler is provided
	*/
	@:overload public static function getSystemJavaCompiler() : javax.tools.JavaCompiler;
	
	/**
	* Returns the class loader for tools provided with this platform.
	* This does not include user-installed tools.  Use the
	* {@linkplain java.util.ServiceLoader service provider mechanism}
	* for locating user installed tools.
	*
	* @return the class loader for tools provided with this platform
	* or {@code null} if no tools are provided
	*/
	@:overload public static function getSystemToolClassLoader() : java.lang.ClassLoader;
	
	
}
