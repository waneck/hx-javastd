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
extern class Parameter extends com.sun.tools.internal.ws.processor.model.ModelObject
{
	@:overload public function new(name : String, entity : com.sun.tools.internal.ws.wsdl.framework.Entity) : Void;
	
	@:overload public function getEntityName() : String;
	
	@:overload public function getName() : String;
	
	@:overload public function setName(s : String) : Void;
	
	@:overload public function getJavaParameter() : com.sun.tools.internal.ws.processor.model.java.JavaParameter;
	
	@:overload public function setJavaParameter(p : com.sun.tools.internal.ws.processor.model.java.JavaParameter) : Void;
	
	@:overload public function getType() : com.sun.tools.internal.ws.processor.model.AbstractType;
	
	@:overload public function setType(t : com.sun.tools.internal.ws.processor.model.AbstractType) : Void;
	
	@:overload public function getTypeName() : String;
	
	@:overload public function setTypeName(t : String) : Void;
	
	@:overload public function getBlock() : com.sun.tools.internal.ws.processor.model.Block;
	
	@:overload public function setBlock(d : com.sun.tools.internal.ws.processor.model.Block) : Void;
	
	@:overload public function getLinkedParameter() : com.sun.tools.internal.ws.processor.model.Parameter;
	
	@:overload public function setLinkedParameter(p : com.sun.tools.internal.ws.processor.model.Parameter) : Void;
	
	@:overload public function isEmbedded() : Bool;
	
	@:overload public function setEmbedded(b : Bool) : Void;
	
	@:overload public function accept(visitor : com.sun.tools.internal.ws.processor.model.ModelVisitor) : Void;
	
	@:overload public function getParameterIndex() : Int;
	
	@:overload public function setParameterIndex(parameterOrderPosition : Int) : Void;
	
	@:overload public function isReturn() : Bool;
	
	/**
	* @return Returns the customName.
	*/
	@:overload public function getCustomName() : String;
	
	/**
	* @param customName The customName to set.
	*/
	@:overload public function setCustomName(customName : String) : Void;
	
	/**
	* @return Returns the annotations.
	*/
	@:overload public function getAnnotations() : java.util.List<String>;
	
	/**
	* @param annotations The annotations to set.
	*/
	@:overload public function setAnnotations(annotations : java.util.List<String>) : Void;
	
	@:overload public function setMode(mode : Mode) : Void;
	
	@:overload public function isIN() : Bool;
	
	@:overload public function isOUT() : Bool;
	
	@:overload public function isINOUT() : Bool;
	
	
}
