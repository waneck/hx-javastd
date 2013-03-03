package javax.xml.ws.soap;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class AddressingFeature extends javax.xml.ws.WebServiceFeature
{
	/**
	* Constant value identifying the AddressingFeature
	*/
	@:public @:static @:final public static var ID(default, null) : String;
	
	/**
	* If addressing is enabled, this property determines whether the endpoint
	* requires WS-Addressing. If required is true, WS-Addressing headers MUST
	* be present on incoming and outgoing messages.
	*/
	/* final */
	@:protected private var required : Bool;
	
	/**
	* Creates and configures an <code>AddressingFeature</code> with the
	* use of addressing requirements. The created feature enables
	* ws-addressing i.e. supports ws-addressing but doesn't require
	* its use. It is also configured to accept all the response types.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates and configures an <code>AddressingFeature</code> with the
	* use of addressing requirements. If <code>enabled</code> is true,
	* it enables ws-addressing i.e. supports ws-addressing but doesn't
	* require its use. It also configures to accept all the response types.
	*
	* @param enabled true enables ws-addressing i.e.ws-addressing
	* is supported but doesn't require its use
	*/
	@:overload @:public public function new(enabled : Bool) : Void;
	
	/**
	* Creates and configures an <code>AddressingFeature</code> with the
	* use of addressing requirements. If <code>enabled</code> and
	* <code>required</code> are true, it enables ws-addressing and
	* requires its use. It also configures to accept all the response types.
	*
	* @param enabled true enables ws-addressing i.e.ws-addressing
	* is supported but doesn't require its use
	* @param required true means requires the use of ws-addressing .
	*/
	@:overload @:public public function new(enabled : Bool, required : Bool) : Void;
	
	/**
	* Creates and configures an <code>AddressingFeature</code> with the
	* use of addressing requirements. If <code>enabled</code> and
	* <code>required</code> are true, it enables ws-addressing and
	* requires its use. Also, the response types can be configured using
	* <code>responses</code> parameter.
	*
	* @param enabled true enables ws-addressing i.e.ws-addressing
	* is supported but doesn't require its use
	* @param required true means requires the use of ws-addressing .
	* @param responses specifies what type of responses are required
	*
	* @since JAX-WS 2.2
	*/
	@:require(java2) @:overload @:public public function new(enabled : Bool, required : Bool, responses : javax.xml.ws.soap.AddressingFeature.AddressingFeature_Responses) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function getID() : String;
	
	/**
	* If addressing is enabled, this property determines whether the endpoint
	* requires WS-Addressing. If required is true, WS-Addressing headers MUST
	* be present on incoming and outgoing messages.
	*
	* @return the current required value
	*/
	@:overload @:public public function isRequired() : Bool;
	
	/**
	* If addressing is enabled, this property determines whether endpoint
	* requires the use of anonymous responses, or non-anonymous responses,
	* or all responses.
	*
	* <p>
	* @return {@link Responses#ALL} when endpoint supports all types of
	* responses,
	*         {@link Responses#ANONYMOUS} when endpoint requires the use of
	* only anonymous responses,
	*         {@link Responses#NON_ANONYMOUS} when endpoint requires the use
	* of only non-anonymous responses
	*
	* @since JAX-WS 2.2
	*/
	@:require(java2) @:overload @:public public function getResponses() : javax.xml.ws.soap.AddressingFeature.AddressingFeature_Responses;
	
	
}
/**
* If addressing is enabled, this property determines if endpoint requires
* the use of only anonymous responses, or only non-anonymous responses, or all.
*
* <p>
* {@link Responses#ALL} supports all response types and this is the default
* value.
*
* <p>
* {@link Responses#ANONYMOUS} requires the use of only anonymous
* responses. It will result into wsam:AnonymousResponses nested assertion
* as specified in
* <a href="http://www.w3.org/TR/ws-addr-metadata/#wspolicyanonresponses">
* 3.1.2 AnonymousResponses Assertion</a> in the generated WSDL.
*
* <p>
* {@link Responses#NON_ANONYMOUS} requires the use of only non-anonymous
* responses. It will result into
* wsam:NonAnonymousResponses nested assertion as specified in
* <a href="http://www.w3.org/TR/ws-addr-metadata/#wspolicynonanonresponses">
* 3.1.3 NonAnonymousResponses Assertion</a> in the generated WSDL.
*
* @since JAX-WS 2.2
*/
@:require(java2) @:native('javax$xml$ws$soap$AddressingFeature$Responses') extern enum AddressingFeature_Responses
{
	/**
	* Specifies the use of only anonymous
	* responses. It will result into wsam:AnonymousResponses nested assertion
	* as specified in
	* <a href="http://www.w3.org/TR/ws-addr-metadata/#wspolicyanonresponses">
	* 3.1.2 AnonymousResponses Assertion</a> in the generated WSDL.
	*/
	ANONYMOUS;
	/**
	* Specifies the use of only non-anonymous
	* responses. It will result into
	* wsam:NonAnonymousResponses nested assertion as specified in
	* <a href="http://www.w3.org/TR/ws-addr-metadata/#wspolicynonanonresponses">
	* 3.1.3 NonAnonymousResponses Assertion</a> in the generated WSDL.
	*/
	NON_ANONYMOUS;
	/**
	* Supports all response types and this is the default
	*/
	ALL;
	
}

