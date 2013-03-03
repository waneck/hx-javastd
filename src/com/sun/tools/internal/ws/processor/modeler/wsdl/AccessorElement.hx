package com.sun.tools.internal.ws.processor.modeler.wsdl;
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
@:internal extern class AccessorElement
{
	/**
	* @param type
	* @param name
	*/
	@:overload @:public public function new(name : String, type : javax.xml.namespace.QName) : Void;
	
	/**
	* @return Returns the type.
	*/
	@:overload @:public public function getType() : javax.xml.namespace.QName;
	
	/**
	* @param type The type to set.
	*/
	@:overload @:public public function setType(type : javax.xml.namespace.QName) : Void;
	
	/**
	* @return Returns the name.
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* @param name The name to set.
	*/
	@:overload @:public public function setName(name : String) : Void;
	
	
}
