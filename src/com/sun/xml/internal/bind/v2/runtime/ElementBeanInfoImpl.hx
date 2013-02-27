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
extern class ElementBeanInfoImpl extends com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<javax.xml.bind.JAXBElement<Dynamic>>
{
	public var expectedType(default, null) : Class<Dynamic>;
	
	/**
	* The constructor for the sole instanceof {@link JaxBeanInfo} for
	* handling user-created {@link JAXBElement}.
	*
	* Such {@link JaxBeanInfo} is used only for marshalling.
	*
	* This is a hack.
	*/
	@:overload private function new(grammar : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl) : Void;
	
	@:overload public function getElementNamespaceURI(e : javax.xml.bind.JAXBElement<Dynamic>) : String;
	
	@:overload public function getElementLocalName(e : javax.xml.bind.JAXBElement<Dynamic>) : String;
	
	@:overload override public function getLoader(context : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl, typeSubstitutionCapable : Bool) : com.sun.xml.internal.bind.v2.runtime.unmarshaller.Loader;
	
	@:overload @:final override public function createInstance(context : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext) : javax.xml.bind.JAXBElement<Dynamic>;
	
	@:overload @:final public function createInstanceFromValue(o : Dynamic) : javax.xml.bind.JAXBElement<Dynamic>;
	
	@:overload public function reset(e : javax.xml.bind.JAXBElement<Dynamic>, context : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext) : Bool;
	
	@:overload public function getId(e : javax.xml.bind.JAXBElement<Dynamic>, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : String;
	
	@:overload public function serializeBody(element : javax.xml.bind.JAXBElement<Dynamic>, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload public function serializeRoot(e : javax.xml.bind.JAXBElement<Dynamic>, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload public function serializeAttributes(e : javax.xml.bind.JAXBElement<Dynamic>, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload public function serializeURIs(e : javax.xml.bind.JAXBElement<Dynamic>, target : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload @:final override public function getTransducer() : com.sun.xml.internal.bind.v2.runtime.Transducer<javax.xml.bind.JAXBElement<Dynamic>>;
	
	@:overload override public function wrapUp() : Void;
	
	@:overload override public function link(grammar : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl) : Void;
	
	
}
/**
* Use the previous {@link UnmarshallingContext.State}'s target to store
* {@link JAXBElement} object to be unmarshalled. This allows the property {@link Loader}
* to correctly find the parent object.
* This is a hack.
*/
@:native('com$sun$xml$internal$bind$v2$runtime$ElementBeanInfoImpl$IntercepterLoader') @:internal extern class ElementBeanInfoImpl_IntercepterLoader extends com.sun.xml.internal.bind.v2.runtime.unmarshaller.Loader implements com.sun.xml.internal.bind.v2.runtime.unmarshaller.Intercepter
{
	@:overload public function new(core : com.sun.xml.internal.bind.v2.runtime.unmarshaller.Loader) : Void;
	
	@:overload @:final override public function startElement(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, ea : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName) : Void;
	
	@:overload public function intercept(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, o : Dynamic) : Dynamic;
	
	
}
