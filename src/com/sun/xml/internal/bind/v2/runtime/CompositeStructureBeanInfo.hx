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
extern class CompositeStructureBeanInfo extends com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<com.sun.xml.internal.bind.api.CompositeStructure>
{
	/**
	* @author Kohsuke Kawaguchi
	*/
	@:overload @:public public function new(context : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl) : Void;
	
	@:overload @:public public function getElementNamespaceURI(o : com.sun.xml.internal.bind.api.CompositeStructure) : String;
	
	@:overload @:public public function getElementLocalName(o : com.sun.xml.internal.bind.api.CompositeStructure) : String;
	
	@:overload @:public override public function createInstance(context : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext) : com.sun.xml.internal.bind.api.CompositeStructure;
	
	@:overload @:public public function reset(o : com.sun.xml.internal.bind.api.CompositeStructure, context : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext) : Bool;
	
	@:overload @:public public function getId(o : com.sun.xml.internal.bind.api.CompositeStructure, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : String;
	
	@:overload @:public override public function getLoader(context : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl, typeSubstitutionCapable : Bool) : com.sun.xml.internal.bind.v2.runtime.unmarshaller.Loader;
	
	@:overload @:public public function serializeRoot(o : com.sun.xml.internal.bind.api.CompositeStructure, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload @:public public function serializeURIs(o : com.sun.xml.internal.bind.api.CompositeStructure, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload @:public public function serializeAttributes(o : com.sun.xml.internal.bind.api.CompositeStructure, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload @:public public function serializeBody(o : com.sun.xml.internal.bind.api.CompositeStructure, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload @:public override public function getTransducer() : com.sun.xml.internal.bind.v2.runtime.Transducer<com.sun.xml.internal.bind.api.CompositeStructure>;
	
	
}
