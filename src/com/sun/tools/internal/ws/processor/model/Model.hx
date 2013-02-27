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
/**
* The model is used to represent the entire Web Service.  The JAX-WS ProcessorActions can process
* this Model to generate Java artifacts such as the service interface.
*
* @author WS Development Team
*/
extern class Model extends com.sun.tools.internal.ws.processor.model.ModelObject
{
	@:overload public function new(entity : com.sun.tools.internal.ws.wsdl.framework.Entity) : Void;
	
	@:overload public function new(name : javax.xml.namespace.QName, entity : com.sun.tools.internal.ws.wsdl.framework.Entity) : Void;
	
	@:overload public function getName() : javax.xml.namespace.QName;
	
	@:overload public function setName(n : javax.xml.namespace.QName) : Void;
	
	@:overload public function getTargetNamespaceURI() : String;
	
	@:overload public function setTargetNamespaceURI(s : String) : Void;
	
	@:overload public function addService(service : com.sun.tools.internal.ws.processor.model.Service) : Void;
	
	@:overload public function getServiceByName(name : javax.xml.namespace.QName) : com.sun.tools.internal.ws.processor.model.Service;
	
	/* serialization */
	@:overload public function getServices() : java.util.List<com.sun.tools.internal.ws.processor.model.Service>;
	
	/* serialization */
	@:overload public function setServices(l : java.util.List<com.sun.tools.internal.ws.processor.model.Service>) : Void;
	
	@:overload public function addExtraType(type : com.sun.tools.internal.ws.processor.model.AbstractType) : Void;
	
	@:overload public function getExtraTypes() : java.util.Iterator<Dynamic>;
	
	/* serialization */
	@:overload public function getExtraTypesSet() : java.util.Set<com.sun.tools.internal.ws.processor.model.AbstractType>;
	
	/* serialization */
	@:overload public function setExtraTypesSet(s : java.util.Set<com.sun.tools.internal.ws.processor.model.AbstractType>) : Void;
	
	@:overload override public function accept(visitor : com.sun.tools.internal.ws.processor.model.ModelVisitor) : Void;
	
	/**
	* @return the source version
	*/
	@:overload public function getSource() : String;
	
	/**
	* @param string
	*/
	@:overload public function setSource(string : String) : Void;
	
	@:overload public function setJAXBModel(jaxBModel : com.sun.tools.internal.ws.processor.model.jaxb.JAXBModel) : Void;
	
	@:overload public function getJAXBModel() : com.sun.tools.internal.ws.processor.model.jaxb.JAXBModel;
	
	
}
