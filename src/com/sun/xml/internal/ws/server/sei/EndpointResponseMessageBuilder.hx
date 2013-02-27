package com.sun.xml.internal.ws.server.sei;
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
@:internal extern class EndpointResponseMessageBuilder
{
	
}
@:native('com$sun$xml$internal$ws$server$sei$EndpointResponseMessageBuilder$Empty') @:internal extern class EndpointResponseMessageBuilder_Empty extends EndpointResponseMessageBuilder
{
	@:overload public function new(soapVersion : com.sun.xml.internal.ws.api.SOAPVersion) : Void;
	
	
}
/**
* Base class for those {@link EndpointResponseMessageBuilder}s that build a {@link Message}
* from JAXB objects.
*/
@:native('com$sun$xml$internal$ws$server$sei$EndpointResponseMessageBuilder$JAXB') @:internal extern class EndpointResponseMessageBuilder_JAXB extends EndpointResponseMessageBuilder
{
	@:overload private function new(bridge : com.sun.xml.internal.bind.api.Bridge<Dynamic>, soapVersion : com.sun.xml.internal.ws.api.SOAPVersion) : Void;
	
	
}
/**
* Used to create a payload JAXB object just by taking
* one of the parameters.
*/
@:native('com$sun$xml$internal$ws$server$sei$EndpointResponseMessageBuilder$Bare') @:internal extern class EndpointResponseMessageBuilder_Bare extends EndpointResponseMessageBuilder_JAXB
{
	
}
/**
* Used to handle a 'wrapper' style request.
* Common part of rpc/lit and doc/lit.
*/
@:native('com$sun$xml$internal$ws$server$sei$EndpointResponseMessageBuilder$Wrapped') @:internal extern class EndpointResponseMessageBuilder_Wrapped extends EndpointResponseMessageBuilder_JAXB
{
	/**
	* Where in the method argument list do they come from?
	*/
	private var indices(default, null) : java.NativeArray<Int>;
	
	/**
	* Abstracts away the {@link Holder} handling when touching method arguments.
	*/
	private var getters(default, null) : java.NativeArray<com.sun.xml.internal.ws.server.sei.ValueGetter>;
	
	@:overload private function new(wp : com.sun.xml.internal.ws.model.WrapperParameter, soapVersion : com.sun.xml.internal.ws.api.SOAPVersion) : Void;
	
	
}
/**
* Used to create a payload JAXB object by wrapping
* multiple parameters into one "wrapper bean".
*/
@:native('com$sun$xml$internal$ws$server$sei$EndpointResponseMessageBuilder$DocLit') @:internal extern class EndpointResponseMessageBuilder_DocLit extends EndpointResponseMessageBuilder_Wrapped
{
	
}
/**
* Used to create a payload JAXB object by wrapping
* multiple parameters into a {@link CompositeStructure}.
*
* <p>
* This is used for rpc/lit, as we don't have a wrapper bean for it.
* (TODO: Why don't we have a wrapper bean for this, when doc/lit does!?)
*/
@:native('com$sun$xml$internal$ws$server$sei$EndpointResponseMessageBuilder$RpcLit') @:internal extern class EndpointResponseMessageBuilder_RpcLit extends EndpointResponseMessageBuilder_Wrapped
{
	
}
