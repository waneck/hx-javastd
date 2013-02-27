package com.sun.tools.internal.ws.processor.model.jaxb;
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
extern class JAXBType extends com.sun.tools.internal.ws.processor.model.AbstractType
{
	/**
	* Top-level binding between JAXB generated Java type
	* and XML Schema element declaration.
	*
	* @author
	*     Vivek Pandey
	*/
	@:overload public function new(jaxbType : JAXBType) : Void;
	
	@:overload public function new() : Void;
	
	@:overload public function new(name : javax.xml.namespace.QName, type : com.sun.tools.internal.ws.processor.model.java.JavaType) : Void;
	
	@:overload public function new(name : javax.xml.namespace.QName, type : com.sun.tools.internal.ws.processor.model.java.JavaType, jaxbMapping : com.sun.tools.internal.ws.processor.model.jaxb.JAXBMapping, jaxbModel : com.sun.tools.internal.ws.processor.model.jaxb.JAXBModel) : Void;
	
	@:overload public function accept(visitor : com.sun.tools.internal.ws.processor.model.jaxb.JAXBTypeVisitor) : Void;
	
	@:overload public function isUnwrappable() : Bool;
	
	@:overload public function hasWrapperChildren() : Bool;
	
	@:overload override public function isLiteralType() : Bool;
	
	@:overload public function getWrapperChildren() : java.util.List<com.sun.tools.internal.ws.processor.model.jaxb.JAXBProperty>;
	
	@:overload public function setWrapperChildren(children : java.util.List<com.sun.tools.internal.ws.processor.model.jaxb.JAXBProperty>) : Void;
	
	@:overload public function getJaxbMapping() : com.sun.tools.internal.ws.processor.model.jaxb.JAXBMapping;
	
	@:overload public function setJaxbMapping(jaxbMapping : com.sun.tools.internal.ws.processor.model.jaxb.JAXBMapping) : Void;
	
	@:overload public function setUnwrapped(unwrapped : Bool) : Void;
	
	@:overload public function isUnwrapped() : Bool;
	
	@:overload public function getJaxbModel() : com.sun.tools.internal.ws.processor.model.jaxb.JAXBModel;
	
	@:overload public function setJaxbModel(jaxbModel : com.sun.tools.internal.ws.processor.model.jaxb.JAXBModel) : Void;
	
	
}
