package com.sun.xml.internal.bind.v2.runtime.property;
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
@:internal extern class ArrayERProperty<BeanT, ListT, ItemT> extends com.sun.xml.internal.bind.v2.runtime.property.ArrayProperty<BeanT, ListT, ItemT>
{
	/**
	* Wrapper tag name if any, or null.
	*/
	private var wrapperTagName(default, null) : com.sun.xml.internal.bind.v2.runtime.Name;
	
	/**
	* True if the wrapper tag name is nillable.
	* Always false if {@link #wrapperTagName}==null.
	*/
	private var isWrapperNillable(default, null) : Bool;
	
	@:overload private function new(grammar : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl, prop : com.sun.xml.internal.bind.v2.model.runtime.RuntimePropertyInfo, tagName : javax.xml.namespace.QName, isWrapperNillable : Bool) : Void;
	
	@:overload @:final override public function serializeBody(o : BeanT, w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, outerPeer : Dynamic) : Void;
	
	/**
	* Serializes the items of the list.
	* This method is invoked after the necessary wrapper tag is produced (if necessary.)
	*
	* @param list
	*      always non-null.
	*/
	@:overload @:abstract private function serializeListBody(o : BeanT, w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, list : ListT) : Void;
	
	/**
	* Creates the unmarshaler to unmarshal the body.
	*/
	@:overload @:abstract private function createBodyUnmarshaller(chain : com.sun.xml.internal.bind.v2.runtime.property.UnmarshallerChain, loaders : com.sun.xml.internal.bind.v2.util.QNameMap<com.sun.xml.internal.bind.v2.runtime.unmarshaller.ChildLoader>) : Void;
	
	@:overload @:final override public function buildChildElementUnmarshallers(chain : com.sun.xml.internal.bind.v2.runtime.property.UnmarshallerChain, loaders : com.sun.xml.internal.bind.v2.util.QNameMap<com.sun.xml.internal.bind.v2.runtime.unmarshaller.ChildLoader>) : Void;
	
	
}
/**
* Used to handle the collection wrapper element.
*/
@:native('com$sun$xml$internal$bind$v2$runtime$property$ArrayERProperty$ItemsLoader') @:internal extern class ArrayERProperty_ItemsLoader extends com.sun.xml.internal.bind.v2.runtime.unmarshaller.Loader
{
	@:overload public function new(acc : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<Dynamic, Dynamic>, lister : com.sun.xml.internal.bind.v2.runtime.reflect.Lister<Dynamic, Dynamic, Dynamic, Dynamic>, children : com.sun.xml.internal.bind.v2.util.QNameMap<com.sun.xml.internal.bind.v2.runtime.unmarshaller.ChildLoader>) : Void;
	
	@:overload override public function startElement(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, ea : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName) : Void;
	
	@:overload override public function childElement(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, ea : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName) : Void;
	
	@:overload override public function leaveElement(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, ea : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName) : Void;
	
	@:overload override public function getExpectedChildElements() : java.util.Collection<javax.xml.namespace.QName>;
	
	
}
/**
* {@link Receiver} that puts the child object into the {@link Scope} object.
*/
@:native('com$sun$xml$internal$bind$v2$runtime$property$ArrayERProperty$ReceiverImpl') extern class ArrayERProperty_ReceiverImpl implements com.sun.xml.internal.bind.v2.runtime.unmarshaller.Receiver
{
	@:overload private function new(offset : Int) : Void;
	
	@:overload public function receive(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, o : Dynamic) : Void;
	
	
}
