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
extern class Fault extends com.sun.tools.internal.ws.processor.model.ModelObject
{
	/**
	*
	* @author WS Development Team
	*/
	@:overload public function new(entity : com.sun.tools.internal.ws.wsdl.framework.Entity) : Void;
	
	@:overload public function new(name : String, entity : com.sun.tools.internal.ws.wsdl.framework.Entity) : Void;
	
	@:overload public function getName() : String;
	
	@:overload public function setName(s : String) : Void;
	
	@:overload public function getBlock() : com.sun.tools.internal.ws.processor.model.Block;
	
	@:overload public function setBlock(b : com.sun.tools.internal.ws.processor.model.Block) : Void;
	
	@:overload public function getJavaException() : com.sun.tools.internal.ws.processor.model.java.JavaException;
	
	@:overload public function setJavaException(e : com.sun.tools.internal.ws.processor.model.java.JavaException) : Void;
	
	@:overload override public function accept(visitor : com.sun.tools.internal.ws.processor.model.ModelVisitor) : Void;
	
	@:overload public function getParentFault() : com.sun.tools.internal.ws.processor.model.Fault;
	
	@:overload public function getSubfaults() : java.util.Iterator<Dynamic>;
	
	/* serialization */
	@:overload public function getSubfaultsSet() : java.util.Set<Dynamic>;
	
	/* serialization */
	@:overload public function setSubfaultsSet(s : java.util.Set<Dynamic>) : Void;
	
	@:overload public function getAllFaults() : java.util.Iterator<Dynamic>;
	
	@:overload public function getAllFaultsSet() : java.util.Set<Dynamic>;
	
	@:overload public function getElementName() : javax.xml.namespace.QName;
	
	@:overload public function setElementName(elementName : javax.xml.namespace.QName) : Void;
	
	@:overload public function getJavaMemberName() : String;
	
	@:overload public function setJavaMemberName(javaMemberName : String) : Void;
	
	/**
	* @return Returns the wsdlFault.
	*/
	@:overload public function isWsdlException() : Bool;
	
	/**
	* @param wsdlFault The wsdlFault to set.
	*/
	@:overload public function setWsdlException(wsdlFault : Bool) : Void;
	
	@:overload public function setExceptionClass(ex : com.sun.codemodel.internal.JClass) : Void;
	
	@:overload public function getExceptionClass() : com.sun.codemodel.internal.JClass;
	
	@:overload public function getWsdlFaultName() : String;
	
	@:overload public function setWsdlFaultName(wsdlFaultName : String) : Void;
	
	
}
