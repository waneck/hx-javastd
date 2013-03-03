package com.sun.tools.doclets.internal.toolkit.util;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
* A tag that holds nothing but plain text.  This is useful for passing
* text to methods that only accept inline tags as a parameter.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Jamie Ho
* @since 1.5
*/
@:require(java5) extern class TextTag implements com.sun.javadoc.Tag
{
	/**
	*  Constructor
	*/
	@:overload @:public public function new(holder : com.sun.javadoc.Doc, text : String) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function name() : String;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function holder() : com.sun.javadoc.Doc;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function kind() : String;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function text() : String;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function inlineTags() : java.NativeArray<com.sun.javadoc.Tag>;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function firstSentenceTags() : java.NativeArray<com.sun.javadoc.Tag>;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function position() : com.sun.javadoc.SourcePosition;
	
	
}
