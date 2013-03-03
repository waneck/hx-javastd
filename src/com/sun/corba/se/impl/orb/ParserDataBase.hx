package com.sun.corba.se.impl.orb;
/*
* Copyright (c) 2002, Oracle and/or its affiliates. All rights reserved.
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
extern class ParserDataBase implements com.sun.corba.se.spi.orb.ParserData
{
	@:overload @:protected private function new(propertyName : String, operation : com.sun.corba.se.spi.orb.Operation, fieldName : String, defaultValue : Dynamic, testValue : Dynamic) : Void;
	
	@:overload @:public public function getPropertyName() : String;
	
	@:overload @:public public function getOperation() : com.sun.corba.se.spi.orb.Operation;
	
	@:overload @:public public function getFieldName() : String;
	
	@:overload @:public public function getDefaultValue() : Dynamic;
	
	@:overload @:public public function getTestValue() : Dynamic;
	
	@:overload @:public public function addToProperties(props : java.util.Properties) : Void;
	
	@:overload @:public public function addToParser(parser : com.sun.corba.se.spi.orb.PropertyParser) : Void;
	
	
}
