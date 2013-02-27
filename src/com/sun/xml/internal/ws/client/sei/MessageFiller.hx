package com.sun.xml.internal.ws.client.sei;
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
@:internal extern class MessageFiller
{
	/**
	* The index of the method invocation parameters that this object looks for.
	*/
	private var methodPos(default, null) : Int;
	
	@:overload private function new(methodPos : Int) : Void;
	
	
}
/**
* Adds a parameter as an MIME attachment to {@link Message}.
*/
@:native('com$sun$xml$internal$ws$client$sei$MessageFiller$AttachmentFiller') @:internal extern class MessageFiller_AttachmentFiller extends MessageFiller
{
	private var param(default, null) : com.sun.xml.internal.ws.model.ParameterImpl;
	
	private var getter(default, null) : com.sun.xml.internal.ws.client.sei.ValueGetter;
	
	private var mimeType(default, null) : String;
	
	@:overload private function new(param : com.sun.xml.internal.ws.model.ParameterImpl, getter : com.sun.xml.internal.ws.client.sei.ValueGetter) : Void;
	
	/**
	* Creates an MessageFiller based on the parameter type
	*
	* @param param
	*      runtime Parameter that abstracts the annotated java parameter
	* @param getter
	*      Gets a value from an object that represents a parameter passed
	*      as a method argument.
	*/
	@:overload public static function createAttachmentFiller(param : com.sun.xml.internal.ws.model.ParameterImpl, getter : com.sun.xml.internal.ws.client.sei.ValueGetter) : MessageFiller;
	
	
}
@:native('com$sun$xml$internal$ws$client$sei$MessageFiller$ByteArrayFiller') @:internal extern class MessageFiller_ByteArrayFiller extends MessageFiller_AttachmentFiller
{
	@:overload private function new(param : com.sun.xml.internal.ws.model.ParameterImpl, getter : com.sun.xml.internal.ws.client.sei.ValueGetter) : Void;
	
	
}
@:native('com$sun$xml$internal$ws$client$sei$MessageFiller$DataHandlerFiller') @:internal extern class MessageFiller_DataHandlerFiller extends MessageFiller_AttachmentFiller
{
	@:overload private function new(param : com.sun.xml.internal.ws.model.ParameterImpl, getter : com.sun.xml.internal.ws.client.sei.ValueGetter) : Void;
	
	
}
@:native('com$sun$xml$internal$ws$client$sei$MessageFiller$JAXBFiller') @:internal extern class MessageFiller_JAXBFiller extends MessageFiller_AttachmentFiller
{
	@:overload private function new(param : com.sun.xml.internal.ws.model.ParameterImpl, getter : com.sun.xml.internal.ws.client.sei.ValueGetter) : Void;
	
	
}
/**
* Adds a parameter as an header.
*/
@:native('com$sun$xml$internal$ws$client$sei$MessageFiller$Header') @:internal extern class MessageFiller_Header extends MessageFiller
{
	@:overload private function new(methodPos : Int, bridge : com.sun.xml.internal.bind.api.Bridge<Dynamic>, getter : com.sun.xml.internal.ws.client.sei.ValueGetter) : Void;
	
	
}
