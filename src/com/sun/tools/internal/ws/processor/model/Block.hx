package com.sun.tools.internal.ws.processor.model;
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
extern class Block extends com.sun.tools.internal.ws.processor.model.ModelObject
{
	/**
	*
	* @author WS Development Team
	*/
	@:public @:static @:final public static var UNBOUND(default, null) : Int;
	
	@:public @:static @:final public static var BODY(default, null) : Int;
	
	@:public @:static @:final public static var HEADER(default, null) : Int;
	
	@:public @:static @:final public static var ATTACHMENT(default, null) : Int;
	
	@:overload @:public public function new(name : javax.xml.namespace.QName, type : com.sun.tools.internal.ws.processor.model.AbstractType, entity : com.sun.tools.internal.ws.wsdl.framework.Entity) : Void;
	
	@:overload @:public public function getName() : javax.xml.namespace.QName;
	
	@:overload @:public public function getType() : com.sun.tools.internal.ws.processor.model.AbstractType;
	
	@:overload @:public public function setType(type : com.sun.tools.internal.ws.processor.model.AbstractType) : Void;
	
	@:overload @:public public function getLocation() : Int;
	
	@:overload @:public public function setLocation(i : Int) : Void;
	
	@:overload @:public override public function accept(visitor : com.sun.tools.internal.ws.processor.model.ModelVisitor) : Void;
	
	
}
