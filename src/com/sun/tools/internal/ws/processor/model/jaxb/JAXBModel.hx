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
/**
* Root of the JAXB Model.
*
* <p>
* This is just a wrapper around a list of {@link JAXBMapping}s.
*
* @author Kohsuke Kawaguchi, Vivek Pandey
*/
extern class JAXBModel
{
	@:overload @:public public function getRawJAXBModel() : com.sun.tools.internal.xjc.api.JAXBModel;
	
	/**
	* @return Schema to Java model
	*/
	@:overload @:public public function getS2JJAXBModel() : com.sun.tools.internal.xjc.api.S2JJAXBModel;
	
	/**
	* @return Java to Schema JAXBModel
	*/
	@:overload @:public public function getJ2SJAXBModel() : com.sun.tools.internal.xjc.api.J2SJAXBModel;
	
	/**
	* Default constructor for the persistence.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructor that fills in the values from the given raw model
	*/
	@:overload @:public public function new(rawModel : com.sun.tools.internal.xjc.api.JAXBModel) : Void;
	
	/**
	*/
	@:overload @:public public function getMappings() : java.util.List<com.sun.tools.internal.ws.processor.model.jaxb.JAXBMapping>;
	
	@:overload @:public public function setMappings(mappings : java.util.List<com.sun.tools.internal.ws.processor.model.jaxb.JAXBMapping>) : Void;
	
	/**
	*/
	@:overload @:public public function get(elementName : javax.xml.namespace.QName) : com.sun.tools.internal.ws.processor.model.jaxb.JAXBMapping;
	
	/**
	*/
	@:overload @:public public function get(className : String) : com.sun.tools.internal.ws.processor.model.jaxb.JAXBMapping;
	
	/**
	*
	* @return set of full qualified class names that jaxb will generate
	*/
	@:overload @:public public function getGeneratedClassNames() : java.util.Set<String>;
	
	@:overload @:public public function setGeneratedClassNames(generatedClassNames : java.util.Set<String>) : Void;
	
	
}
