package com.sun.xml.internal.ws.api.server;
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
extern class Adapter<TK> implements com.sun.xml.internal.ws.api.config.management.Reconfigurable implements com.sun.xml.internal.ws.api.server.EndpointComponent
{
	/**
	* Receives incoming messages from a transport (such as HTTP, JMS, etc)
	* in a transport specific way, and delivers it to {@link WSEndpoint.PipeHead#process}.
	*
	* <p>
	* Since this class mostly concerns itself with converting a
	* transport-specific message representation to a {@link Packet},
	* the name is the "adapter".
	*
	* <p>
	* The purpose of this class is twofolds:
	*
	* <ol>
	* <li>
	* To hide the logic of converting a transport-specific connection
	* to a {@link Packet} and do the other way around.
	*
	* <li>
	* To manage thread-unsafe resources, such as {@link WSEndpoint.PipeHead},
	* and {@link Codec}.
	* </ol>
	*
	* <p>
	* {@link Adapter}s are extended to work with each kind of transport,
	* and therefore {@link Adapter} class itself is not all that
	* useful by itself --- it merely provides a design template
	* that can be followed.
	*
	* <p>
	* For managing resources, an adapter uses an object called {@link Toolkit}
	* (think of it as a tray full of tools that a dentist uses ---
	* trays are identical, but each patient has to get one. You have
	* a pool of them and you assign it to a patient.)
	*
	* {@link Adapter.Toolkit} can be extended by derived classes.
	* That actual type is the {@code TK} type parameter this class takes.
	*
	* @author Kohsuke Kawaguchi
	*/
	@:protected @:final private var endpoint(default, null) : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>;
	
	/**
	* Pool of {@link Toolkit}s.
	*
	* Instances of this pool may be replaced at runtime. Therefore, when you take
	* an object out of the pool, you must make sure that it is recycled by the
	* same instance of the pool.
	*/
	@:protected @:volatile private var pool : com.sun.xml.internal.ws.util.Pool<TK>;
	
	/**
	* Creates an {@link Adapter} that delivers
	* messages to the given endpoint.
	*/
	@:overload @:protected private function new(endpoint : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>) : Void;
	
	/**
	* The pool instance needs to be recreated to prevent reuse of old Toolkit instances.
	*/
	@:overload @:public public function reconfigure() : Void;
	
	@:overload @:public public function getSPI<T>(spiType : Class<T>) : T;
	
	/**
	* Gets the endpoint that this {@link Adapter} is serving.
	*
	* @return
	*      always non-null.
	*/
	@:overload @:public public function getEndpoint() : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>;
	
	/**
	* Returns a reference to the pool of Toolkits for this adapter.
	*
	* The pool may be recreated during runtime reconfiguration and this method
	* will then return a reference to a new instance. When you recycle a toolkit,
	* you must make sure that you return it to the same pool instance that you
	* took it from.
	*
	* @return
	*/
	@:overload @:protected private function getPool() : com.sun.xml.internal.ws.util.Pool<TK>;
	
	/**
	* Creates a {@link Toolkit} instance.
	*
	* <p>
	* If the derived class doesn't have to add any per-thread state
	* to {@link Toolkit}, simply implement this as {@code new Toolkit()}.
	*/
	@:overload @:protected @:abstract private function createToolkit() : TK;
	
	
}
/**
* Object that groups all thread-unsafe resources.
*/
@:native('com$sun$xml$internal$ws$api$server$Adapter$Toolkit') extern class Adapter_Toolkit
{
	/**
	* For encoding/decoding infoset to/from the byte stream.
	*/
	@:public @:final public var codec(default, null) : com.sun.xml.internal.ws.api.pipe.Codec;
	
	/**
	* This object from {@link WSEndpoint} serves the request.
	*/
	@:public @:final public var head(default, null) : com.sun.xml.internal.ws.api.server.WSEndpoint.WSEndpoint_PipeHead;
	
	@:overload @:public public function new() : Void;
	
	
}
