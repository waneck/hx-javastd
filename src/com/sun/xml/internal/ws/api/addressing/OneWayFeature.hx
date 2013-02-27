package com.sun.xml.internal.ws.api.addressing;
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
extern class OneWayFeature extends javax.xml.ws.WebServiceFeature
{
	/**
	* Constant value identifying the {@link OneWayFeature}
	*/
	public static var ID(default, null) : String;
	
	/**
	* Create an {@link OneWayFeature}. The instance created will be enabled.
	*/
	@:overload public function new() : Void;
	
	/**
	* Create an {@link OneWayFeature}
	*
	* @param enabled specifies whether this feature should
	*                be enabled or not.
	*/
	@:overload public function new(enabled : Bool) : Void;
	
	/**
	* Create an {@link OneWayFeature}
	*
	* @param enabled specifies whether this feature should be enabled or not.
	* @param replyTo specifies the {@link WSEndpointReference} of wsa:ReplyTo header.
	*/
	@:overload public function new(enabled : Bool, replyTo : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : Void;
	
	/**
	* Create an {@link OneWayFeature}
	*
	* @param enabled specifies whether this feature should be enabled or not.
	* @param replyTo specifies the {@link WSEndpointReference} of wsa:ReplyTo header.
	* @param from specifies the {@link WSEndpointReference} of wsa:From header.
	* @param relatesTo specifies the MessageID to be used for wsa:RelatesTo header.
	*/
	@:overload public function new(enabled : Bool, replyTo : com.sun.xml.internal.ws.api.addressing.WSEndpointReference, from : com.sun.xml.internal.ws.api.addressing.WSEndpointReference, relatesTo : String) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getID() : String;
	
	/**
	* Getter for wsa:ReplyTo header {@link WSEndpointReference} .
	*
	* @return address of the wsa:ReplyTo header
	*/
	@:overload public function getReplyTo() : com.sun.xml.internal.ws.api.addressing.WSEndpointReference;
	
	/**
	* Setter for wsa:ReplyTo header {@link WSEndpointReference}.
	*
	* @param address
	*/
	@:overload public function setReplyTo(address : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : Void;
	
	/**
	* Getter for wsa:From header {@link WSEndpointReference}.
	*
	* @return address of the wsa:From header
	*/
	@:overload public function getFrom() : com.sun.xml.internal.ws.api.addressing.WSEndpointReference;
	
	/**
	* Setter for wsa:From header {@link WSEndpointReference}.
	*
	* @param address of the wsa:From header
	*/
	@:overload public function setFrom(address : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : Void;
	
	/**
	* Getter for MessageID for wsa:RelatesTo header.
	*
	* @return address of the wsa:FaultTo header
	*/
	@:overload public function getRelatesToID() : String;
	
	/**
	* Setter for MessageID for wsa:RelatesTo header.
	*
	* @param id
	*/
	@:overload public function setRelatesToID(id : String) : Void;
	
	
}
