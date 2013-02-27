package com.sun.mirror.type;
/*
* Copyright (c) 2004, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class MirroredTypesException extends java.lang.RuntimeException
{
	/**
	* Constructs a new MirroredTypesException for the specified types.
	*
	* @param types  an ordered collection of the types being accessed
	*/
	@:overload public function new(types : java.util.Collection<com.sun.mirror.type.TypeMirror>) : Void;
	
	/**
	* Returns the type mirrors corresponding to the types being accessed.
	* The type mirrors may be unavailable if this exception has been
	* serialized and then read back in.
	*
	* @return the type mirrors in order, or <tt>null</tt> if unavailable
	*/
	@:overload public function getTypeMirrors() : java.util.Collection<com.sun.mirror.type.TypeMirror>;
	
	/**
	* Returns the fully qualified names of the types being accessed.
	* More precisely, returns the canonical names of each class,
	* interface, array, or primitive, and <tt>"void"</tt> for
	* the pseudo-type representing the type of <tt>void</tt>.
	*
	* @return the fully qualified names, in order, of the types being
	*          accessed
	*/
	@:overload public function getQualifiedNames() : java.util.Collection<String>;
	
	
}
