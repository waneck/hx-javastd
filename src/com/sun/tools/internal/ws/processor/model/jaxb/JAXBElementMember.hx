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
extern class JAXBElementMember
{
	/**
	* @author Kathy Walsh, Vivek Pandey
	*
	*
	*/
	@:overload public function new() : Void;
	
	@:overload public function new(name : javax.xml.namespace.QName, type : com.sun.tools.internal.ws.processor.model.jaxb.JAXBType) : Void;
	
	@:overload public function new(name : javax.xml.namespace.QName, type : com.sun.tools.internal.ws.processor.model.jaxb.JAXBType, javaStructureMember : com.sun.tools.internal.ws.processor.model.java.JavaStructureMember) : Void;
	
	@:overload public function getName() : javax.xml.namespace.QName;
	
	@:overload public function setName(n : javax.xml.namespace.QName) : Void;
	
	@:overload public function getType() : com.sun.tools.internal.ws.processor.model.jaxb.JAXBType;
	
	@:overload public function setType(t : com.sun.tools.internal.ws.processor.model.jaxb.JAXBType) : Void;
	
	@:overload public function isRepeated() : Bool;
	
	@:overload public function setRepeated(b : Bool) : Void;
	
	@:overload public function getJavaStructureMember() : com.sun.tools.internal.ws.processor.model.java.JavaStructureMember;
	
	@:overload public function setJavaStructureMember(javaStructureMember : com.sun.tools.internal.ws.processor.model.java.JavaStructureMember) : Void;
	
	@:overload public function isInherited() : Bool;
	
	@:overload public function setInherited(b : Bool) : Void;
	
	@:overload public function getProperty() : com.sun.tools.internal.ws.processor.model.jaxb.JAXBProperty;
	
	@:overload public function setProperty(prop : com.sun.tools.internal.ws.processor.model.jaxb.JAXBProperty) : Void;
	
	
}
