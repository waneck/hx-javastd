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
@:internal extern class ArrayBeanInfoImpl extends com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<Dynamic>
{
	@:overload @:public public function new(owner : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl, rai : com.sun.xml.internal.bind.v2.model.runtime.RuntimeArrayInfo) : Void;
	
	@:overload @:protected override private function link(grammar : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl) : Void;
	
	@:overload @:protected private function toArray(list : java.util.List<Dynamic>) : Dynamic;
	
	@:overload @:public override public function serializeBody(array : Dynamic, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload @:public @:final override public function getElementNamespaceURI(array : Dynamic) : String;
	
	@:overload @:public @:final override public function getElementLocalName(array : Dynamic) : String;
	
	@:overload @:public @:final override public function createInstance(context : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext) : Dynamic;
	
	@:overload @:public @:final override public function reset(array : Dynamic, context : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext) : Bool;
	
	@:overload @:public @:final override public function getId(array : Dynamic, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : String;
	
	@:overload @:public @:final override public function serializeAttributes(array : Dynamic, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload @:public @:final override public function serializeRoot(array : Dynamic, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload @:public @:final override public function serializeURIs(array : Dynamic, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload @:public @:final override public function getTransducer() : com.sun.xml.internal.bind.v2.runtime.Transducer<Dynamic>;
	
	@:overload @:public @:final override public function getLoader(context : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl, typeSubstitutionCapable : Bool) : com.sun.xml.internal.bind.v2.runtime.unmarshaller.Loader;
	
	
}
@:native('com$sun$xml$internal$bind$v2$runtime$ArrayBeanInfoImpl$ArrayLoader') @:internal extern class ArrayBeanInfoImpl_ArrayLoader extends com.sun.xml.internal.bind.v2.runtime.unmarshaller.Loader implements com.sun.xml.internal.bind.v2.runtime.unmarshaller.Receiver
{
	@:overload @:public public function new(owner : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl) : Void;
	
	@:overload @:public override public function startElement(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, ea : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName) : Void;
	
	@:overload @:public override public function leaveElement(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, ea : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName) : Void;
	
	@:overload @:public override public function childElement(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, ea : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName) : Void;
	
	@:overload @:public override public function getExpectedChildElements() : java.util.Collection<javax.xml.namespace.QName>;
	
	@:overload @:public public function receive(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, o : Dynamic) : Void;
	
	
}
