package com.sun.tools.internal.ws.processor.model.java;
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
extern class JavaType
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(type : com.sun.tools.internal.ws.processor.model.jaxb.JAXBTypeAndAnnotation) : Void;
	
	@:overload @:public public function new(name : String, present : Bool, initString : String) : Void;
	
	@:overload @:public public function new(name : String, present : Bool, initString : String, holderName : String) : Void;
	
	@:overload @:public public function getType() : com.sun.tools.internal.ws.processor.model.jaxb.JAXBTypeAndAnnotation;
	
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function doSetName(name : String) : Void;
	
	@:overload @:public public function getRealName() : String;
	
	/* serialization */
	@:overload @:public public function setRealName(s : String) : Void;
	
	@:overload @:public public function getFormalName() : String;
	
	@:overload @:public public function setFormalName(s : String) : Void;
	
	@:overload @:public public function isPresent() : Bool;
	
	/* serialization */
	@:overload @:public public function setPresent(b : Bool) : Void;
	
	@:overload @:public public function isHolder() : Bool;
	
	@:overload @:public public function setHolder(holder : Bool) : Void;
	
	@:overload @:public public function isHolderPresent() : Bool;
	
	@:overload @:public public function setHolderPresent(holderPresent : Bool) : Void;
	
	@:overload @:public public function getInitString() : String;
	
	/* serialization */
	@:overload @:public public function setInitString(s : String) : Void;
	
	@:overload @:public public function getHolderName() : String;
	
	@:overload @:public public function setHolderName(holderName : String) : Void;
	
	
}
