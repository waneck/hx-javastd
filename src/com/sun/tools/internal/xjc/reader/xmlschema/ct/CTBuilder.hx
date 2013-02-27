package com.sun.tools.internal.xjc.reader.xmlschema.ct;
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
@:internal extern class CTBuilder
{
	private var builder(default, null) : com.sun.tools.internal.xjc.reader.xmlschema.ct.ComplexTypeFieldBuilder;
	
	private var selector(default, null) : com.sun.tools.internal.xjc.reader.xmlschema.ClassSelector;
	
	private var simpleTypeBuilder(default, null) : com.sun.tools.internal.xjc.reader.xmlschema.SimpleTypeBuilder;
	
	private var errorReceiver(default, null) : com.sun.tools.internal.xjc.ErrorReceiver;
	
	private var green(default, null) : com.sun.tools.internal.xjc.reader.xmlschema.BindGreen;
	
	private var schemas(default, null) : com.sun.xml.internal.xsom.XSSchemaSet;
	
	private var bgmBuilder(default, null) : com.sun.tools.internal.xjc.reader.xmlschema.BGMBuilder;
	
	
}
