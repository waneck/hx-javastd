package com.sun.java.util.jar.pack;
/*
* Copyright (c) 2001, 2011, Oracle and/or its affiliates. All rights reserved.
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
* Reader for a class file that is being incorporated into a package.
* @author John Rose
*/
@:internal extern class ClassReader
{
	@:overload public function setAttrDefs(attrDefs : java.util.Map<com.sun.java.util.jar.pack.Attribute.Attribute_Layout, com.sun.java.util.jar.pack.Attribute>) : Void;
	
	@:overload public function setAttrCommands(attrCommands : java.util.Map<com.sun.java.util.jar.pack.Attribute.Attribute_Layout, String>) : Void;
	
	
}
@:native('com$sun$java$util$jar$pack$ClassReader$ClassFormatException') @:internal extern class ClassReader_ClassFormatException extends java.io.IOException
{
	@:overload public function new(message : String) : Void;
	
	@:overload public function new(message : String, cause : java.lang.Throwable) : Void;
	
	
}
