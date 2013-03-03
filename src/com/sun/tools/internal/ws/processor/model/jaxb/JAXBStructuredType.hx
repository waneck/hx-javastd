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
* Top-level binding between JAXB generated Java type
* and XML Schema element declaration.
*
* @author
*     Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
*/
extern class JAXBStructuredType extends com.sun.tools.internal.ws.processor.model.jaxb.JAXBType
{
	@:overload @:public public function new(jaxbType : com.sun.tools.internal.ws.processor.model.jaxb.JAXBType) : Void;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(name : javax.xml.namespace.QName) : Void;
	
	@:overload @:public public function new(name : javax.xml.namespace.QName, javaType : com.sun.tools.internal.ws.processor.model.java.JavaStructureType) : Void;
	
	@:overload @:public public function add(m : com.sun.tools.internal.ws.processor.model.jaxb.JAXBElementMember) : Void;
	
	@:overload @:public public function getElementMembers() : java.util.Iterator<Dynamic>;
	
	@:overload @:public public function getElementMembersCount() : Int;
	
	/* serialization */
	@:overload @:public public function getElementMembersList() : java.util.List<Dynamic>;
	
	/* serialization */
	@:overload @:public public function setElementMembersList(l : java.util.List<Dynamic>) : Void;
	
	@:overload @:public public function addSubtype(type : com.sun.tools.internal.ws.processor.model.jaxb.JAXBStructuredType) : Void;
	
	@:overload @:public public function getSubtypes() : java.util.Iterator<Dynamic>;
	
	/* (non-Javadoc)
	* @see JAXBType#isUnwrapped()
	*/
	@:overload @:public override public function isUnwrapped() : Bool;
	
	/* serialization */
	@:overload @:public public function getSubtypesSet() : java.util.Set<Dynamic>;
	
	/* serialization */
	@:overload @:public public function setSubtypesSet(s : java.util.Set<Dynamic>) : Void;
	
	@:overload @:public public function setParentType(parent : com.sun.tools.internal.ws.processor.model.jaxb.JAXBStructuredType) : Void;
	
	@:overload @:public public function getParentType() : com.sun.tools.internal.ws.processor.model.jaxb.JAXBStructuredType;
	
	
}
