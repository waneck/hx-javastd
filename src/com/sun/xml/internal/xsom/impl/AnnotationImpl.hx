package com.sun.xml.internal.xsom.impl;
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
extern class AnnotationImpl implements com.sun.xml.internal.xsom.XSAnnotation
{
	@:overload public function getAnnotation() : Dynamic;
	
	@:overload public function setAnnotation(o : Dynamic) : Dynamic;
	
	@:overload public function getLocator() : org.xml.sax.Locator;
	
	@:overload public function new(o : Dynamic, _loc : org.xml.sax.Locator) : Void;
	
	@:overload public function new() : Void;
	
	
}
@:native('com$sun$xml$internal$xsom$impl$AnnotationImpl$LocatorImplUnmodifiable') @:internal extern class AnnotationImpl_LocatorImplUnmodifiable extends org.xml.sax.helpers.LocatorImpl
{
	@:overload override public function setColumnNumber(columnNumber : Int) : Void;
	
	@:overload override public function setPublicId(publicId : String) : Void;
	
	@:overload override public function setSystemId(systemId : String) : Void;
	
	@:overload override public function setLineNumber(lineNumber : Int) : Void;
	
	
}
