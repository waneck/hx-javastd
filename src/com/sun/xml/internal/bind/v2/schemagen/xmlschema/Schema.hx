package com.sun.xml.internal.bind.v2.schemagen.xmlschema;
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
extern interface Schema extends com.sun.xml.internal.bind.v2.schemagen.xmlschema.SchemaTop extends com.sun.xml.internal.txw2.TypedXmlWriter
{
	@:overload @:public public function annotation() : com.sun.xml.internal.bind.v2.schemagen.xmlschema.Annotation;
	
	@:overload @:public public function _import() : com.sun.xml.internal.bind.v2.schemagen.xmlschema.Import;
	
	@:overload @:public public function targetNamespace(value : String) : com.sun.xml.internal.bind.v2.schemagen.xmlschema.Schema;
	
	@:overload @:public public function lang(value : String) : com.sun.xml.internal.bind.v2.schemagen.xmlschema.Schema;
	
	@:overload @:public public function id(value : String) : com.sun.xml.internal.bind.v2.schemagen.xmlschema.Schema;
	
	@:overload @:public public function elementFormDefault(value : String) : com.sun.xml.internal.bind.v2.schemagen.xmlschema.Schema;
	
	@:overload @:public public function attributeFormDefault(value : String) : com.sun.xml.internal.bind.v2.schemagen.xmlschema.Schema;
	
	@:overload @:public public function blockDefault(value : String) : com.sun.xml.internal.bind.v2.schemagen.xmlschema.Schema;
	
	@:overload @:public public function blockDefault(value : java.NativeArray<String>) : com.sun.xml.internal.bind.v2.schemagen.xmlschema.Schema;
	
	@:overload @:public public function finalDefault(value : String) : com.sun.xml.internal.bind.v2.schemagen.xmlschema.Schema;
	
	@:overload @:public public function finalDefault(value : java.NativeArray<String>) : com.sun.xml.internal.bind.v2.schemagen.xmlschema.Schema;
	
	@:overload @:public public function version(value : String) : com.sun.xml.internal.bind.v2.schemagen.xmlschema.Schema;
	
	
}
