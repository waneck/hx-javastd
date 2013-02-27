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
@:internal extern class EndpointArgumentsBuilder
{
	/**
	* The singleton instance that produces null return value.
	* Used for operations that doesn't have any output.
	*/
	public static var NONE : EndpointArgumentsBuilder;
	
	/**
	* Returns the 'uninitialized' value for the given type.
	*
	* <p>
	* For primitive types, it's '0', and for reference types, it's null.
	*/
	@:overload public static function getVMUninitializedValue(type : java.lang.reflect.Type) : Dynamic;
	
	/**
	* Gets the WSDL part name of this attachment.
	*
	* <p>
	* According to WSI AP 1.0
	* <PRE>
	* 3.8 Value-space of Content-Id Header
	*   Definition: content-id part encoding
	*   The "content-id part encoding" consists of the concatenation of:
	* The value of the name attribute of the wsdl:part element referenced by the mime:content, in which characters disallowed in content-id headers (non-ASCII characters as represented by code points above 0x7F) are escaped as follows:
	*     o Each disallowed character is converted to UTF-8 as one or more bytes.
	*     o Any bytes corresponding to a disallowed character are escaped with the URI escaping mechanism (that is, converted to %HH, where HH is the hexadecimal notation of the byte value).
	*     o The original character is replaced by the resulting character sequence.
	* The character '=' (0x3D).
	* A globally unique value such as a UUID.
	* The character '@' (0x40).
	* A valid domain name under the authority of the entity constructing the message.
	* </PRE>
	*
	* So a wsdl:part fooPart will be encoded as:
	*      <fooPart=somereallybignumberlikeauuid@example.com>
	*
	* @return null
	*      if the parsing fails.
	*/
	@:overload @:final public static function getWSDLPartName(att : com.sun.xml.internal.ws.api.message.Attachment) : String;
	
	
}
@:native('com$sun$xml$internal$ws$server$sei$EndpointArgumentsBuilder$None') @:internal extern class EndpointArgumentsBuilder_None extends EndpointArgumentsBuilder
{
	@:overload override public function readRequest(msg : com.sun.xml.internal.ws.api.message.Message, args : java.NativeArray<Dynamic>) : Void;
	
	
}
/**
* {@link EndpointArgumentsBuilder} that sets the VM uninitialized value to the type.
*/
@:native('com$sun$xml$internal$ws$server$sei$EndpointArgumentsBuilder$NullSetter') @:internal extern class EndpointArgumentsBuilder_NullSetter extends EndpointArgumentsBuilder
{
	@:overload public function new(setter : com.sun.xml.internal.ws.server.sei.EndpointValueSetter, nullValue : Dynamic) : Void;
	
	@:overload override public function readRequest(msg : com.sun.xml.internal.ws.api.message.Message, args : java.NativeArray<Dynamic>) : Void;
	
	
}
/**
* {@link EndpointArgumentsBuilder} that is a composition of multiple
* {@link EndpointArgumentsBuilder}s.
*
* <p>
* Sometimes we need to look at multiple parts of the reply message
* (say, two header params, one body param, and three attachments, etc.)
* and that's when this object is used to combine multiple {@link EndpointArgumentsBuilder}s
* (that each responsible for handling one part).
*
* <p>
* The model guarantees that only at most one {@link EndpointArgumentsBuilder} will
* return a value as a return value (and everything else has to go to
* {@link Holder}s.)
*/
@:native('com$sun$xml$internal$ws$server$sei$EndpointArgumentsBuilder$Composite') @:internal extern class EndpointArgumentsBuilder_Composite extends EndpointArgumentsBuilder
{
	@:overload public function new(builders : java.NativeArray<EndpointArgumentsBuilder>) : Void;
	
	@:overload public function new(builders : java.util.Collection<EndpointArgumentsBuilder>) : Void;
	
	@:overload override public function readRequest(msg : com.sun.xml.internal.ws.api.message.Message, args : java.NativeArray<Dynamic>) : Void;
	
	
}
/**
* Reads an Attachment into a Java parameter.
*/
@:native('com$sun$xml$internal$ws$server$sei$EndpointArgumentsBuilder$AttachmentBuilder') @:internal extern class EndpointArgumentsBuilder_AttachmentBuilder extends EndpointArgumentsBuilder
{
	private var setter(default, null) : com.sun.xml.internal.ws.server.sei.EndpointValueSetter;
	
	private var param(default, null) : com.sun.xml.internal.ws.model.ParameterImpl;
	
	private var pname(default, null) : String;
	
	private var pname1(default, null) : String;
	
	/**
	* Creates an AttachmentBuilder based on the parameter type
	*
	* @param param
	*      runtime Parameter that abstracts the annotated java parameter
	* @param setter
	*      specifies how the obtained value is set into the argument. Takes
	*      care of Holder arguments.
	*/
	@:overload public static function createAttachmentBuilder(param : com.sun.xml.internal.ws.model.ParameterImpl, setter : com.sun.xml.internal.ws.server.sei.EndpointValueSetter) : EndpointArgumentsBuilder;
	
	@:overload override public function readRequest(msg : com.sun.xml.internal.ws.api.message.Message, args : java.NativeArray<Dynamic>) : Void;
	
	
}
@:native('com$sun$xml$internal$ws$server$sei$EndpointArgumentsBuilder$DataHandlerBuilder') @:internal extern class EndpointArgumentsBuilder_DataHandlerBuilder extends EndpointArgumentsBuilder_AttachmentBuilder
{
	
}
@:native('com$sun$xml$internal$ws$server$sei$EndpointArgumentsBuilder$ByteArrayBuilder') @:internal extern class EndpointArgumentsBuilder_ByteArrayBuilder extends EndpointArgumentsBuilder_AttachmentBuilder
{
	
}
@:native('com$sun$xml$internal$ws$server$sei$EndpointArgumentsBuilder$SourceBuilder') @:internal extern class EndpointArgumentsBuilder_SourceBuilder extends EndpointArgumentsBuilder_AttachmentBuilder
{
	
}
@:native('com$sun$xml$internal$ws$server$sei$EndpointArgumentsBuilder$ImageBuilder') @:internal extern class EndpointArgumentsBuilder_ImageBuilder extends EndpointArgumentsBuilder_AttachmentBuilder
{
	
}
@:native('com$sun$xml$internal$ws$server$sei$EndpointArgumentsBuilder$InputStreamBuilder') @:internal extern class EndpointArgumentsBuilder_InputStreamBuilder extends EndpointArgumentsBuilder_AttachmentBuilder
{
	
}
@:native('com$sun$xml$internal$ws$server$sei$EndpointArgumentsBuilder$JAXBBuilder') @:internal extern class EndpointArgumentsBuilder_JAXBBuilder extends EndpointArgumentsBuilder_AttachmentBuilder
{
	
}
@:native('com$sun$xml$internal$ws$server$sei$EndpointArgumentsBuilder$StringBuilder') @:internal extern class EndpointArgumentsBuilder_StringBuilder extends EndpointArgumentsBuilder_AttachmentBuilder
{
	
}
/**
* Reads a header into a JAXB object.
*/
@:native('com$sun$xml$internal$ws$server$sei$EndpointArgumentsBuilder$Header') @:internal extern class EndpointArgumentsBuilder_Header extends EndpointArgumentsBuilder
{
	/**
	* @param name
	*      The name of the header element.
	* @param bridge
	*      specifies how to unmarshal a header into a JAXB object.
	* @param setter
	*      specifies how the obtained value is returned to the client.
	*/
	@:overload public function new(soapVersion : com.sun.xml.internal.ws.api.SOAPVersion, name : javax.xml.namespace.QName, bridge : com.sun.xml.internal.bind.api.Bridge<Dynamic>, setter : com.sun.xml.internal.ws.server.sei.EndpointValueSetter) : Void;
	
	@:overload public function new(soapVersion : com.sun.xml.internal.ws.api.SOAPVersion, param : com.sun.xml.internal.ws.model.ParameterImpl, setter : com.sun.xml.internal.ws.server.sei.EndpointValueSetter) : Void;
	
	@:overload override public function readRequest(msg : com.sun.xml.internal.ws.api.message.Message, args : java.NativeArray<Dynamic>) : Void;
	
	
}
/**
* Reads the whole payload into a single JAXB bean.
*/
@:native('com$sun$xml$internal$ws$server$sei$EndpointArgumentsBuilder$Body') @:internal extern class EndpointArgumentsBuilder_Body extends EndpointArgumentsBuilder
{
	/**
	* @param bridge
	*      specifies how to unmarshal the payload into a JAXB object.
	* @param setter
	*      specifies how the obtained value is returned to the client.
	*/
	@:overload public function new(bridge : com.sun.xml.internal.bind.api.Bridge<Dynamic>, setter : com.sun.xml.internal.ws.server.sei.EndpointValueSetter) : Void;
	
	@:overload override public function readRequest(msg : com.sun.xml.internal.ws.api.message.Message, args : java.NativeArray<Dynamic>) : Void;
	
	
}
/**
* Treats a payload as multiple parts wrapped into one element,
* and processes all such wrapped parts.
*/
@:native('com$sun$xml$internal$ws$server$sei$EndpointArgumentsBuilder$DocLit') @:internal extern class EndpointArgumentsBuilder_DocLit extends EndpointArgumentsBuilder
{
	@:overload public function new(wp : com.sun.xml.internal.ws.model.WrapperParameter, skipMode : Mode) : Void;
	
	@:overload override public function readRequest(msg : com.sun.xml.internal.ws.api.message.Message, args : java.NativeArray<Dynamic>) : Void;
	
	
}
/**
* Unmarshals each wrapped part into a JAXB object and moves it
* to the expected place.
*/
@:native('com$sun$xml$internal$ws$server$sei$EndpointArgumentsBuilder$DocLit$PartBuilder') @:internal extern class EndpointArgumentsBuilder_DocLit_PartBuilder
{
	/**
	* @param accessor
	*      specifies which portion of the wrapper bean to obtain the value from.
	* @param setter
	*      specifies how the obtained value is returned to the client.
	*/
	@:overload public function new(accessor : com.sun.xml.internal.bind.api.RawAccessor<Dynamic, Dynamic>, setter : com.sun.xml.internal.ws.server.sei.EndpointValueSetter) : Void;
	
	
}
/**
* Treats a payload as multiple parts wrapped into one element,
* and processes all such wrapped parts.
*/
@:native('com$sun$xml$internal$ws$server$sei$EndpointArgumentsBuilder$RpcLit') @:internal extern class EndpointArgumentsBuilder_RpcLit extends EndpointArgumentsBuilder
{
	@:overload public function new(wp : com.sun.xml.internal.ws.model.WrapperParameter) : Void;
	
	@:overload override public function readRequest(msg : com.sun.xml.internal.ws.api.message.Message, args : java.NativeArray<Dynamic>) : Void;
	
	
}
/**
* Unmarshals each wrapped part into a JAXB object and moves it
* to the expected place.
*/
@:native('com$sun$xml$internal$ws$server$sei$EndpointArgumentsBuilder$RpcLit$PartBuilder') @:internal extern class EndpointArgumentsBuilder_RpcLit_PartBuilder
{
	/**
	* @param bridge
	*      specifies how the part is unmarshalled.
	* @param setter
	*      specifies how the obtained value is returned to the endpoint.
	*/
	@:overload public function new(bridge : com.sun.xml.internal.bind.api.Bridge<Dynamic>, setter : com.sun.xml.internal.ws.server.sei.EndpointValueSetter) : Void;
	
	
}
