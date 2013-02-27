package com.sun.tools.doclets.internal.toolkit.util;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
* For a given class method, build an array of interface methods which it
* implements.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Atul M Dambalkar
*/
extern class ImplementedMethods
{
	@:overload public function new(method : com.sun.javadoc.MethodDoc, configuration : com.sun.tools.doclets.internal.toolkit.Configuration) : Void;
	
	/**
	* Return the array of interface methods which the method passed in the
	* constructor is implementing. The search/build order is as follows:
	* <pre>
	* 1. Search in all the immediate interfaces which this method's class is
	*    implementing. Do it recursively for the superinterfaces as well.
	* 2. Traverse all the superclasses and search recursively in the
	*    interfaces which those superclasses implement.
	*</pre>
	*
	* @return MethodDoc[] Array of implemented methods.
	*/
	@:overload public function build(sort : Bool) : java.NativeArray<com.sun.javadoc.MethodDoc>;
	
	@:overload public function build() : java.NativeArray<com.sun.javadoc.MethodDoc>;
	
	@:overload public function getMethodHolder(methodDoc : com.sun.javadoc.MethodDoc) : com.sun.javadoc.Type;
	
	
}
