package com.sun.xml.internal.ws.api.message;
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
extern class HeaderList extends java.util.ArrayList<com.sun.xml.internal.ws.api.message.Header>
{
	/**
	* Creates an empty {@link HeaderList}.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Copy constructor.
	*/
	@:overload @:public public function new(that : com.sun.xml.internal.ws.api.message.HeaderList) : Void;
	
	/**
	* The total number of headers.
	*/
	@:overload @:public override public function size() : Int;
	
	/**
	* Adds all the headers.
	*/
	@:overload @:public public function addAll(headers : java.NativeArray<com.sun.xml.internal.ws.api.message.Header>) : Void;
	
	/**
	* Gets the {@link Header} at the specified index.
	*
	* <p>
	* This method does not mark the returned {@link Header} as understood.
	*
	* @see #understood(int)
	*/
	@:overload @:public override public function get(index : Int) : com.sun.xml.internal.ws.api.message.Header;
	
	/**
	* Marks the {@link Header} at the specified index as
	* <a href="#MU">"understood"</a>.
	*/
	@:overload @:public public function understood(index : Int) : Void;
	
	/**
	* Returns true if a {@link Header} at the given index
	* was <a href="#MU">"understood"</a>.
	*/
	@:overload @:public public function isUnderstood(index : Int) : Bool;
	
	/**
	* Marks the specified {@link Header} as <a href="#MU">"understood"</a>.
	*
	* @deprecated
	* By the definition of {@link ArrayList}, this operation requires
	* O(n) search of the array, and thus inherently inefficient.
	*
	* Because of this, if you are developing a {@link Pipe} for
	* a performance sensitive environment, do not use this method.
	*
	* @throws IllegalArgumentException
	*      if the given header is not {@link #contains(Object) contained}
	*      in this header.
	*/
	@:overload @:public public function understood(header : com.sun.xml.internal.ws.api.message.Header) : Void;
	
	/**
	* Gets the first {@link Header} of the specified name.
	*
	* @param markAsUnderstood
	*      If this parameter is true, the returned header will
	*      be marked as <a href="#MU">"understood"</a>.
	* @return null if not found.
	*/
	@:overload @:public public function get(nsUri : String, localName : String, markAsUnderstood : Bool) : com.sun.xml.internal.ws.api.message.Header;
	
	/**
	* @deprecated
	*      Use {@link #get(String, String, boolean)}
	*/
	@:overload @:public public function get(nsUri : String, localName : String) : com.sun.xml.internal.ws.api.message.Header;
	
	/**
	* Gets the first {@link Header} of the specified name.
	*
	* @param markAsUnderstood
	*      If this parameter is true, the returned header will
	*      be marked as <a href="#MU">"understood"</a>.
	* @return null
	*      if not found.
	*/
	@:overload @:public public function get(name : javax.xml.namespace.QName, markAsUnderstood : Bool) : com.sun.xml.internal.ws.api.message.Header;
	
	/**
	* @deprecated
	*      Use {@link #get(QName)}
	*/
	@:overload @:public public function get(name : javax.xml.namespace.QName) : com.sun.xml.internal.ws.api.message.Header;
	
	/**
	* @deprecated
	*      Use {@link #getHeaders(String, String, boolean)}
	*/
	@:overload @:public public function getHeaders(nsUri : String, localName : String) : java.util.Iterator<com.sun.xml.internal.ws.api.message.Header>;
	
	/**
	* Gets all the {@link Header}s of the specified name,
	* including duplicates (if any.)
	*
	* @param markAsUnderstood
	*      If this parameter is true, the returned headers will
	*      be marked as <a href="#MU">"understood"</a> when they are returned
	*      from {@link Iterator#next()}.
	* @return empty iterator if not found.
	*/
	@:overload @:public public function getHeaders(nsUri : String, localName : String, markAsUnderstood : Bool) : java.util.Iterator<com.sun.xml.internal.ws.api.message.Header>;
	
	/**
	* @see #getHeaders(String, String, boolean)
	*/
	@:overload @:public public function getHeaders(headerName : javax.xml.namespace.QName, markAsUnderstood : Bool) : java.util.Iterator<com.sun.xml.internal.ws.api.message.Header>;
	
	/**
	* @deprecated
	*      use {@link #getHeaders(String, boolean)}.
	*/
	@:overload @:public public function getHeaders(nsUri : String) : java.util.Iterator<com.sun.xml.internal.ws.api.message.Header>;
	
	/**
	* Gets an iteration of headers {@link Header} in the specified namespace,
	* including duplicates (if any.)
	*
	* @param markAsUnderstood
	*      If this parameter is true, the returned headers will
	*      be marked as <a href="#MU">"understood"</a> when they are returned
	*      from {@link Iterator#next()}.
	* @return
	*      empty iterator if not found.
	*/
	@:overload @:public public function getHeaders(nsUri : String, markAsUnderstood : Bool) : java.util.Iterator<com.sun.xml.internal.ws.api.message.Header>;
	
	/**
	* Returns the value of WS-Addressing <code>To</code> header. The <code>version</code>
	* identifies the WS-Addressing version and the header returned is targeted at
	* the current implicit role. Caches the value for subsequent invocation.
	* Duplicate <code>To</code> headers are detected earlier.
	*
	* @param av WS-Addressing version
	* @param sv SOAP version
	* @throws IllegalArgumentException if either <code>av</code> or <code>sv</code> is null.
	* @return Value of WS-Addressing To header, anonymous URI if no header is present
	*/
	@:overload @:public public function getTo(av : com.sun.xml.internal.ws.api.addressing.AddressingVersion, sv : com.sun.xml.internal.ws.api.SOAPVersion) : String;
	
	/**
	* Returns the value of WS-Addressing <code>Action</code> header. The <code>version</code>
	* identifies the WS-Addressing version and the header returned is targeted at
	* the current implicit role. Caches the value for subsequent invocation.
	* Duplicate <code>Action</code> headers are detected earlier.
	*
	* @param av WS-Addressing version
	* @param sv SOAP version
	* @throws IllegalArgumentException if either <code>av</code> or <code>sv</code> is null.
	* @return Value of WS-Addressing Action header, null if no header is present
	*/
	@:overload @:public public function getAction(av : com.sun.xml.internal.ws.api.addressing.AddressingVersion, sv : com.sun.xml.internal.ws.api.SOAPVersion) : String;
	
	/**
	* Returns the value of WS-Addressing <code>ReplyTo</code> header. The <code>version</code>
	* identifies the WS-Addressing version and the header returned is targeted at
	* the current implicit role. Caches the value for subsequent invocation.
	* Duplicate <code>ReplyTo</code> headers are detected earlier.
	*
	* @param av WS-Addressing version
	* @param sv SOAP version
	* @throws IllegalArgumentException if either <code>av</code> or <code>sv</code> is null.
	* @return Value of WS-Addressing ReplyTo header, null if no header is present
	*/
	@:overload @:public public function getReplyTo(av : com.sun.xml.internal.ws.api.addressing.AddressingVersion, sv : com.sun.xml.internal.ws.api.SOAPVersion) : com.sun.xml.internal.ws.api.addressing.WSEndpointReference;
	
	/**
	* Returns the value of WS-Addressing <code>FaultTo</code> header. The <code>version</code>
	* identifies the WS-Addressing version and the header returned is targeted at
	* the current implicit role. Caches the value for subsequent invocation.
	* Duplicate <code>FaultTo</code> headers are detected earlier.
	*
	* @param av WS-Addressing version
	* @param sv SOAP version
	* @throws IllegalArgumentException if either <code>av</code> or <code>sv</code> is null.
	* @return Value of WS-Addressing FaultTo header, null if no header is present
	*/
	@:overload @:public public function getFaultTo(av : com.sun.xml.internal.ws.api.addressing.AddressingVersion, sv : com.sun.xml.internal.ws.api.SOAPVersion) : com.sun.xml.internal.ws.api.addressing.WSEndpointReference;
	
	/**
	* Returns the value of WS-Addressing <code>MessageID</code> header. The <code>version</code>
	* identifies the WS-Addressing version and the header returned is targeted at
	* the current implicit role. Caches the value for subsequent invocation.
	* Duplicate <code>MessageID</code> headers are detected earlier.
	*
	* @param av WS-Addressing version
	* @param sv SOAP version
	* @throws WebServiceException if either <code>av</code> or <code>sv</code> is null.
	* @return Value of WS-Addressing MessageID header, null if no header is present
	*/
	@:overload @:public public function getMessageID(av : com.sun.xml.internal.ws.api.addressing.AddressingVersion, sv : com.sun.xml.internal.ws.api.SOAPVersion) : String;
	
	/**
	* Returns the value of WS-Addressing <code>RelatesTo</code> header. The <code>version</code>
	* identifies the WS-Addressing version and the header returned is targeted at
	* the current implicit role. Caches the value for subsequent invocation.
	* Duplicate <code>RelatesTo</code> headers are detected earlier.
	*
	* @param av WS-Addressing version
	* @param sv SOAP version
	* @throws WebServiceException if either <code>av</code> or <code>sv</code> is null.
	* @return Value of WS-Addressing RelatesTo header, null if no header is present
	*/
	@:overload @:public public function getRelatesTo(av : com.sun.xml.internal.ws.api.addressing.AddressingVersion, sv : com.sun.xml.internal.ws.api.SOAPVersion) : String;
	
	/**
	* Creates a set of outbound WS-Addressing headers on the client with the
	* specified Action Message Addressing Property value.
	* <p><p>
	* This method needs to be invoked right after such a Message is
	* created which is error prone but so far only MEX, RM and JAX-WS
	* creates a request so this ugliness is acceptable. This method is also used
	* to create protocol messages that are not associated with any {@link WSBinding}
	* and {@link WSDLPort}.
	*
	* @param packet request packet
	* @param av WS-Addressing version
	* @param sv SOAP version
	* @param oneway Indicates if the message exchange pattern is oneway
	* @param action Action Message Addressing Property value
	* @param mustUnderstand to indicate if the addressing headers are set with mustUnderstand attribute
	*/
	@:overload @:public public function fillRequestAddressingHeaders(packet : com.sun.xml.internal.ws.api.message.Packet, av : com.sun.xml.internal.ws.api.addressing.AddressingVersion, sv : com.sun.xml.internal.ws.api.SOAPVersion, oneway : Bool, action : String, mustUnderstand : Bool) : Void;
	
	@:overload @:public public function fillRequestAddressingHeaders(packet : com.sun.xml.internal.ws.api.message.Packet, av : com.sun.xml.internal.ws.api.addressing.AddressingVersion, sv : com.sun.xml.internal.ws.api.SOAPVersion, oneway : Bool, action : String) : Void;
	
	/**
	* Creates a set of outbound WS-Addressing headers on the client with the
	* default Action Message Addressing Property value.
	* <p><p>
	* This method needs to be invoked right after such a Message is
	* created which is error prone but so far only MEX, RM and JAX-WS
	* creates a request so this ugliness is acceptable. If more components
	* are identified using this, then we may revisit this.
	* <p><p>
	* This method is used if default Action Message Addressing Property is to
	* be used. See
	* {@link #fillRequestAddressingHeaders(Packet, com.sun.xml.internal.ws.api.addressing.AddressingVersion, com.sun.xml.internal.ws.api.SOAPVersion, boolean, String)}
	* if non-default Action is to be used, for example when creating a protocol message not
	* associated with {@link WSBinding} and {@link WSDLPort}.
	* This method uses SOAPAction as the Action unless set expplicitly in the wsdl.
	* @param wsdlPort request WSDL port
	* @param binding request WSBinding
	* @param packet request packet
	*/
	@:overload @:public public function fillRequestAddressingHeaders(wsdlPort : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort, binding : com.sun.xml.internal.ws.api.WSBinding, packet : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	/**
	* Adds a new {@link Header}.
	*
	* <p>
	* Order doesn't matter in headers, so this method
	* does not make any guarantee as to where the new header
	* is inserted.
	*
	* @return
	*      always true. Don't use the return value.
	*/
	@:overload @:public public function add(header : com.sun.xml.internal.ws.api.message.Header) : Bool;
	
	/**
	* Removes the first {@link Header} of the specified name.
	*
	* @param nsUri namespace URI of the header to remove
	* @param localName local part of the FQN of the header to remove
	*
	* @return null if not found.
	*/
	@:overload @:public public function remove(nsUri : String, localName : String) : com.sun.xml.internal.ws.api.message.Header;
	
	/**
	* Removes the first {@link Header} of the specified name.
	*
	* @param name fully qualified name of the header to remove
	*
	* @return null if not found.
	*/
	@:overload @:public public function remove(name : javax.xml.namespace.QName) : com.sun.xml.internal.ws.api.message.Header;
	
	/**
	* Removes the first {@link Header} of the specified name.
	*
	* @param index index of the header to remove
	*
	* @return removed header
	*/
	@:overload @:public override public function remove(index : Int) : com.sun.xml.internal.ws.api.message.Header;
	
	/**
	* Removes a single instance of the specified element from this
	* header list, if it is present.  More formally,
	* removes a header <tt>h</tt> such that <tt>(o==null ? h==null :
	* o.equals(h))</tt>, if the header list contains one or more such
	* headers.  Returns <tt>true</tt> if the list contained the
	* specified element (or equivalently, if the list changed as a
	* result of the call).<p>
	*
	* @param o element to be removed from this list, if present.
	* @return <tt>true</tt> if the list contained the specified element.
	* @see #remove(javax.xml.namespace.QName)
	*/
	@:overload @:public override public function remove(o : Dynamic) : Bool;
	
	/**
	* Creates a copy.
	*
	* This handles null {@link HeaderList} correctly.
	*
	* @param original
	*      Can be null, in which case null will be returned.
	*/
	@:overload @:public @:static public static function copy(original : com.sun.xml.internal.ws.api.message.HeaderList) : com.sun.xml.internal.ws.api.message.HeaderList;
	
	@:overload @:public public function readResponseAddressingHeaders(wsdlPort : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort, binding : com.sun.xml.internal.ws.api.WSBinding) : Void;
	
	
}
