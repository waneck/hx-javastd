package java.net;
/*
* Copyright (c) 1995, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class ContentHandler
{
	/**
	* Given a URL connect stream positioned at the beginning of the
	* representation of an object, this method reads that stream and
	* creates an object from it.
	*
	* @param      urlc   a URL connection.
	* @return     the object read by the <code>ContentHandler</code>.
	* @exception  IOException  if an I/O error occurs while reading the object.
	*/
	@:overload @:abstract public function getContent(urlc : java.net.URLConnection) : Dynamic;
	
	/**
	* Given a URL connect stream positioned at the beginning of the
	* representation of an object, this method reads that stream and
	* creates an object that matches one of the types specified.
	*
	* The default implementation of this method should call getContent()
	* and screen the return type for a match of the suggested types.
	*
	* @param      urlc   a URL connection.
	* @param      classes      an array of types requested
	* @return     the object read by the <code>ContentHandler</code> that is
	*                 the first match of the suggested types.
	*                 null if none of the requested  are supported.
	* @exception  IOException  if an I/O error occurs while reading the object.
	* @since 1.3
	*/
	@:require(java3) @:overload public function getContent(urlc : java.net.URLConnection, classes : java.NativeArray<Class<Dynamic>>) : Dynamic;
	
	
}
