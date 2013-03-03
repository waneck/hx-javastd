package com.sun.xml.internal.bind.v2.runtime;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class BinderImpl<XmlNode> extends javax.xml.bind.Binder<XmlNode>
{
	@:overload @:public override public function marshal(jaxbObject : Dynamic, xmlNode : XmlNode) : Void;
	
	@:overload @:public override public function updateJAXB(xmlNode : XmlNode) : Dynamic;
	
	@:overload @:public override public function unmarshal(xmlNode : XmlNode) : Dynamic;
	
	@:overload @:public override public function unmarshal<T>(xmlNode : XmlNode, expectedType : Class<T>) : javax.xml.bind.JAXBElement<T>;
	
	@:overload @:public override public function setSchema(schema : javax.xml.validation.Schema) : Void;
	
	@:overload @:public override public function getSchema() : javax.xml.validation.Schema;
	
	@:overload @:public override public function getXMLNode(jaxbObject : Dynamic) : XmlNode;
	
	@:overload @:public override public function getJAXBNode(xmlNode : XmlNode) : Dynamic;
	
	@:overload @:public override public function updateXML(jaxbObject : Dynamic) : XmlNode;
	
	@:overload @:public override public function updateXML(jaxbObject : Dynamic, xmlNode : XmlNode) : XmlNode;
	
	@:overload @:public override public function setEventHandler(handler : javax.xml.bind.ValidationEventHandler) : Void;
	
	@:overload @:public override public function getEventHandler() : javax.xml.bind.ValidationEventHandler;
	
	@:overload @:public override public function getProperty(name : String) : Dynamic;
	
	@:overload @:public override public function setProperty(name : String, value : Dynamic) : Void;
	
	
}
