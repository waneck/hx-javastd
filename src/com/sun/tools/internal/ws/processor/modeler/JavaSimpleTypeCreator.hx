package com.sun.tools.internal.ws.processor.modeler;
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
extern class JavaSimpleTypeCreator implements com.sun.tools.internal.ws.processor.modeler.ModelerConstants
{
	/*
	* Mapped JavaSimpleTypes
	*/
	@:public public var BOOLEAN_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var BOXED_BOOLEAN_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var BYTE_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var BYTE_ARRAY_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var BOXED_BYTE_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var BOXED_BYTE_ARRAY_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var DOUBLE_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var BOXED_DOUBLE_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var FLOAT_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var BOXED_FLOAT_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var INT_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var BOXED_INTEGER_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var LONG_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var BOXED_LONG_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var SHORT_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var BOXED_SHORT_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var DECIMAL_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var BIG_INTEGER_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var CALENDAR_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var DATE_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var STRING_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var STRING_ARRAY_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var QNAME_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var VOID_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var OBJECT_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var SOAPELEMENT_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var URI_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var IMAGE_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var MIME_MULTIPART_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var SOURCE_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:public public var DATA_HANDLER_JAVATYPE : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function getJavaSimpleType(classname : String) : com.sun.tools.internal.ws.processor.model.java.JavaSimpleType;
	
	
}
