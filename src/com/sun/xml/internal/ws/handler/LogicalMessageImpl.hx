package com.sun.xml.internal.ws.handler;
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
@:internal extern class LogicalMessageImpl implements javax.xml.ws.LogicalMessage
{
	@:protected private var defaultJaxbContext : javax.xml.bind.JAXBContext;
	
	@:overload @:public public function new(defaultJaxbContext : javax.xml.bind.JAXBContext, packet : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	@:overload @:public public function getPayload() : javax.xml.transform.Source;
	
	@:overload @:public public function setPayload(payload : javax.xml.transform.Source) : Void;
	
	@:overload @:public public function getPayload(context : javax.xml.bind.JAXBContext) : Dynamic;
	
	@:overload @:public public function setPayload(payload : Dynamic, context : javax.xml.bind.JAXBContext) : Void;
	
	@:overload @:public public function isPayloadModifed() : Bool;
	
	/**
	* This should be called by first checking if the payload is modified.
	*
	* @param headers
	* @param attachments
	* @param binding
	* @return
	*/
	@:overload @:public public function getMessage(headers : com.sun.xml.internal.ws.api.message.HeaderList, attachments : com.sun.xml.internal.ws.api.message.AttachmentSet, binding : com.sun.xml.internal.ws.api.WSBinding) : com.sun.xml.internal.ws.api.message.Message;
	
	
}
@:native('com$sun$xml$internal$ws$handler$LogicalMessageImpl$ImmutableLM') @:internal extern class LogicalMessageImpl_ImmutableLM
{
	@:overload @:public @:abstract public function getPayload() : javax.xml.transform.Source;
	
	@:overload @:public @:abstract public function getPayload(context : javax.xml.bind.JAXBContext) : Dynamic;
	
	@:overload @:public @:abstract public function getMessage(headers : com.sun.xml.internal.ws.api.message.HeaderList, attachments : com.sun.xml.internal.ws.api.message.AttachmentSet, binding : com.sun.xml.internal.ws.api.WSBinding) : com.sun.xml.internal.ws.api.message.Message;
	
	
}
@:native('com$sun$xml$internal$ws$handler$LogicalMessageImpl$DOMLogicalMessageImpl') @:internal extern class LogicalMessageImpl_DOMLogicalMessageImpl extends com.sun.xml.internal.ws.handler.LogicalMessageImpl.LogicalMessageImpl_SourceLogicalMessageImpl
{
	@:overload @:public public function new(dom : javax.xml.transform.dom.DOMSource) : Void;
	
	@:overload @:public override public function getPayload() : javax.xml.transform.Source;
	
	@:overload @:public override public function getMessage(headers : com.sun.xml.internal.ws.api.message.HeaderList, attachments : com.sun.xml.internal.ws.api.message.AttachmentSet, binding : com.sun.xml.internal.ws.api.WSBinding) : com.sun.xml.internal.ws.api.message.Message;
	
	
}
@:native('com$sun$xml$internal$ws$handler$LogicalMessageImpl$EmptyLogicalMessageImpl') @:internal extern class LogicalMessageImpl_EmptyLogicalMessageImpl extends com.sun.xml.internal.ws.handler.LogicalMessageImpl.LogicalMessageImpl_ImmutableLM
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function getPayload() : javax.xml.transform.Source;
	
	@:overload @:public override public function getPayload(context : javax.xml.bind.JAXBContext) : Dynamic;
	
	@:overload @:public override public function getMessage(headers : com.sun.xml.internal.ws.api.message.HeaderList, attachments : com.sun.xml.internal.ws.api.message.AttachmentSet, binding : com.sun.xml.internal.ws.api.WSBinding) : com.sun.xml.internal.ws.api.message.Message;
	
	
}
@:native('com$sun$xml$internal$ws$handler$LogicalMessageImpl$JAXBLogicalMessageImpl') @:internal extern class LogicalMessageImpl_JAXBLogicalMessageImpl extends com.sun.xml.internal.ws.handler.LogicalMessageImpl.LogicalMessageImpl_ImmutableLM
{
	@:overload @:public public function new(ctxt : javax.xml.bind.JAXBContext, o : Dynamic) : Void;
	
	@:overload @:public override public function getPayload() : javax.xml.transform.Source;
	
	@:overload @:public override public function getPayload(context : javax.xml.bind.JAXBContext) : Dynamic;
	
	@:overload @:public override public function getMessage(headers : com.sun.xml.internal.ws.api.message.HeaderList, attachments : com.sun.xml.internal.ws.api.message.AttachmentSet, binding : com.sun.xml.internal.ws.api.WSBinding) : com.sun.xml.internal.ws.api.message.Message;
	
	
}
@:native('com$sun$xml$internal$ws$handler$LogicalMessageImpl$SourceLogicalMessageImpl') @:internal extern class LogicalMessageImpl_SourceLogicalMessageImpl extends com.sun.xml.internal.ws.handler.LogicalMessageImpl.LogicalMessageImpl_ImmutableLM
{
	@:overload @:public public function new(source : javax.xml.transform.Source) : Void;
	
	@:overload @:public override public function getPayload() : javax.xml.transform.Source;
	
	@:overload @:public override public function getPayload(context : javax.xml.bind.JAXBContext) : Dynamic;
	
	@:overload @:public override public function getMessage(headers : com.sun.xml.internal.ws.api.message.HeaderList, attachments : com.sun.xml.internal.ws.api.message.AttachmentSet, binding : com.sun.xml.internal.ws.api.WSBinding) : com.sun.xml.internal.ws.api.message.Message;
	
	
}
