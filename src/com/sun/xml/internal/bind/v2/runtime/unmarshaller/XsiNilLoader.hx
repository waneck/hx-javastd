package com.sun.xml.internal.bind.v2.runtime.unmarshaller;
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
extern class XsiNilLoader extends com.sun.xml.internal.bind.v2.runtime.unmarshaller.ProxyLoader
{
	@:overload @:public public function new(defaultLoader : com.sun.xml.internal.bind.v2.runtime.unmarshaller.Loader) : Void;
	
	@:overload @:protected override private function selectLoader(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, ea : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName) : com.sun.xml.internal.bind.v2.runtime.unmarshaller.Loader;
	
	@:overload @:public override public function getExpectedChildElements() : java.util.Collection<javax.xml.namespace.QName>;
	
	@:overload @:public override public function getExpectedAttributes() : java.util.Collection<javax.xml.namespace.QName>;
	
	/**
	* Called when xsi:nil='true' was found.
	*/
	@:overload @:protected private function onNil(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State) : Void;
	
	
}
@:native('com$sun$xml$internal$bind$v2$runtime$unmarshaller$XsiNilLoader$Single') extern class XsiNilLoader_Single extends com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader
{
	@:overload @:public public function new(l : com.sun.xml.internal.bind.v2.runtime.unmarshaller.Loader, acc : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<Dynamic, Dynamic>) : Void;
	
	@:overload @:protected override private function onNil(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State) : Void;
	
	
}
@:native('com$sun$xml$internal$bind$v2$runtime$unmarshaller$XsiNilLoader$Array') extern class XsiNilLoader_Array extends com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader
{
	@:overload @:public public function new(core : com.sun.xml.internal.bind.v2.runtime.unmarshaller.Loader) : Void;
	
	@:overload @:protected override private function onNil(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State) : Void;
	
	
}
