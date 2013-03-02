package com.sun.xml.internal.xsom.parser;
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
/**
* Enumeration used to represent the type of the schema component
* that is being parsed when the AnnotationParser is called.
*
* @author
*     Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
*/
extern class AnnotationContext
{
	@:overload public function toString() : String;
	
	public static var SCHEMA(default, null) : com.sun.xml.internal.xsom.parser.AnnotationContext;
	
	public static var NOTATION(default, null) : com.sun.xml.internal.xsom.parser.AnnotationContext;
	
	public static var ELEMENT_DECL(default, null) : com.sun.xml.internal.xsom.parser.AnnotationContext;
	
	public static var IDENTITY_CONSTRAINT(default, null) : com.sun.xml.internal.xsom.parser.AnnotationContext;
	
	public static var XPATH(default, null) : com.sun.xml.internal.xsom.parser.AnnotationContext;
	
	public static var MODELGROUP_DECL(default, null) : com.sun.xml.internal.xsom.parser.AnnotationContext;
	
	public static var SIMPLETYPE_DECL(default, null) : com.sun.xml.internal.xsom.parser.AnnotationContext;
	
	public static var COMPLEXTYPE_DECL(default, null) : com.sun.xml.internal.xsom.parser.AnnotationContext;
	
	public static var PARTICLE(default, null) : com.sun.xml.internal.xsom.parser.AnnotationContext;
	
	public static var MODELGROUP(default, null) : com.sun.xml.internal.xsom.parser.AnnotationContext;
	
	public static var ATTRIBUTE_USE(default, null) : com.sun.xml.internal.xsom.parser.AnnotationContext;
	
	public static var WILDCARD(default, null) : com.sun.xml.internal.xsom.parser.AnnotationContext;
	
	public static var ATTRIBUTE_GROUP(default, null) : com.sun.xml.internal.xsom.parser.AnnotationContext;
	
	public static var ATTRIBUTE_DECL(default, null) : com.sun.xml.internal.xsom.parser.AnnotationContext;
	
	
}
