package com.sun.codemodel.internal;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class JDocComment extends com.sun.codemodel.internal.JCommentPart implements com.sun.codemodel.internal.JGenerable
{
	@:overload public function new(owner : com.sun.codemodel.internal.JCodeModel) : Void;
	
	@:overload override public function append(o : Dynamic) : JDocComment;
	
	/**
	* Append a text to a @param tag to the javadoc
	*/
	@:overload public function addParam(param : String) : com.sun.codemodel.internal.JCommentPart;
	
	/**
	* Append a text to an @param tag.
	*/
	@:overload public function addParam(param : com.sun.codemodel.internal.JVar) : com.sun.codemodel.internal.JCommentPart;
	
	/**
	* add an @throws tag to the javadoc
	*/
	@:overload public function addThrows(exception : Class<java.lang.Throwable>) : com.sun.codemodel.internal.JCommentPart;
	
	/**
	* add an @throws tag to the javadoc
	*/
	@:overload public function addThrows(exception : com.sun.codemodel.internal.JClass) : com.sun.codemodel.internal.JCommentPart;
	
	/**
	* Appends a text to @return tag.
	*/
	@:overload public function addReturn() : com.sun.codemodel.internal.JCommentPart;
	
	/**
	* add an @deprecated tag to the javadoc, with the associated message.
	*/
	@:overload public function addDeprecated() : com.sun.codemodel.internal.JCommentPart;
	
	/**
	* add an xdoclet.
	*/
	@:overload public function addXdoclet(name : String) : java.util.Map<String, String>;
	
	/**
	* add an xdoclet.
	*/
	@:overload public function addXdoclet(name : String, attributes : java.util.Map<String, String>) : java.util.Map<String, String>;
	
	/**
	* add an xdoclet.
	*/
	@:overload public function addXdoclet(name : String, attribute : String, value : String) : java.util.Map<String, String>;
	
	@:overload public function generate(f : com.sun.codemodel.internal.JFormatter) : Void;
	
	
}
