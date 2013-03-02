package com.sun.xml.internal.ws.api.streaming;
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
extern class XMLStreamWriterFactory
{
	/**
	* See {@link #create(OutputStream)} for the contract.
	* This method may be invoked concurrently.
	*/
	@:overload @:abstract public function doCreate(out : java.io.OutputStream) : javax.xml.stream.XMLStreamWriter;
	
	/**
	* See {@link #create(OutputStream,String)} for the contract.
	* This method may be invoked concurrently.
	*/
	@:overload @:abstract public function doCreate(out : java.io.OutputStream, encoding : String) : javax.xml.stream.XMLStreamWriter;
	
	/**
	* See {@link #recycle(XMLStreamWriter)} for the contract.
	* This method may be invoked concurrently.
	*/
	@:overload @:abstract public function doRecycle(r : javax.xml.stream.XMLStreamWriter) : Void;
	
	/**
	* Should be invoked when the code finished using an {@link XMLStreamWriter}.
	*
	* <p>
	* If the recycled instance implements {@link RecycleAware},
	* {@link RecycleAware#onRecycled()} will be invoked to let the instance
	* know that it's being recycled.
	*
	* <p>
	* It is not a hard requirement to call this method on every {@link XMLStreamReader}
	* instance. Not doing so just reduces the performance by throwing away
	* possibly reusable instances. So the caller should always consider the effort
	* it takes to recycle vs the possible performance gain by doing so.
	*
	* <p>
	* This method may be invked by multiple threads concurrently.
	*
	* @param r
	*      The {@link XMLStreamReader} instance that the caller finished using.
	*      This could be any {@link XMLStreamReader} implementation, not just
	*      the ones that were created from this factory. So the implementation
	*      of this class needs to be aware of that.
	*/
	@:overload public static function recycle(r : javax.xml.stream.XMLStreamWriter) : Void;
	
	/**
	* Gets the singleton instance.
	*/
	@:overload public static function get() : com.sun.xml.internal.ws.api.streaming.XMLStreamWriterFactory;
	
	/**
	* Overrides the singleton {@link XMLStreamWriterFactory} instance that
	* the JAX-WS RI uses.
	*
	* @param f
	*      must not be null.
	*/
	@:overload public static function set(f : com.sun.xml.internal.ws.api.streaming.XMLStreamWriterFactory) : Void;
	
	/**
	* Short-cut for {@link #create(OutputStream, String)} with UTF-8.
	*/
	@:overload public static function create(out : java.io.OutputStream) : javax.xml.stream.XMLStreamWriter;
	
	@:overload public static function create(out : java.io.OutputStream, encoding : String) : javax.xml.stream.XMLStreamWriter;
	
	/**
	* @deprecated
	*      Use {@link #create(OutputStream)}
	*/
	@:overload public static function createXMLStreamWriter(out : java.io.OutputStream) : javax.xml.stream.XMLStreamWriter;
	
	/**
	* @deprecated
	*      Use {@link #create(OutputStream, String)}
	*/
	@:overload public static function createXMLStreamWriter(out : java.io.OutputStream, encoding : String) : javax.xml.stream.XMLStreamWriter;
	
	/**
	* @deprecated
	*      Use {@link #create(OutputStream, String)}. The boolean flag was unused anyway.
	*/
	@:overload public static function createXMLStreamWriter(out : java.io.OutputStream, encoding : String, declare : Bool) : javax.xml.stream.XMLStreamWriter;
	
	
}
/**
* Interface that can be implemented by {@link XMLStreamWriter} to
* be notified when it's recycled.
*
* <p>
* This provides a filtering {@link XMLStreamWriter} an opportunity to
* recycle its inner {@link XMLStreamWriter}.
*/
@:native('com$sun$xml$internal$ws$api$streaming$XMLStreamWriterFactory$RecycleAware') extern interface XMLStreamWriterFactory_RecycleAware
{
	@:overload public function onRecycled() : Void;
	
	
}
/**
* Default {@link XMLStreamWriterFactory} implementation
* that can work with any {@link XMLOutputFactory}.
*
* <p>
* {@link XMLOutputFactory} is not required to be thread-safe, so the
* create method on this implementation is synchronized.
*/
@:native('com$sun$xml$internal$ws$api$streaming$XMLStreamWriterFactory$Default') extern class XMLStreamWriterFactory_Default extends com.sun.xml.internal.ws.api.streaming.XMLStreamWriterFactory
{
	@:overload public function new(xof : javax.xml.stream.XMLOutputFactory) : Void;
	
	@:overload override public function doCreate(out : java.io.OutputStream) : javax.xml.stream.XMLStreamWriter;
	
	@:overload @:synchronized override public function doCreate(out : java.io.OutputStream, encoding : String) : javax.xml.stream.XMLStreamWriter;
	
	@:overload override public function doRecycle(r : javax.xml.stream.XMLStreamWriter) : Void;
	
	
}
/**
* {@link XMLStreamWriterFactory} implementation for Sun's StaX implementation.
*
* <p>
* This implementation supports instance reuse.
*/
@:native('com$sun$xml$internal$ws$api$streaming$XMLStreamWriterFactory$Zephyr') extern class XMLStreamWriterFactory_Zephyr extends com.sun.xml.internal.ws.api.streaming.XMLStreamWriterFactory
{
	@:overload public static function newInstance(xof : javax.xml.stream.XMLOutputFactory) : com.sun.xml.internal.ws.api.streaming.XMLStreamWriterFactory;
	
	@:overload override public function doCreate(out : java.io.OutputStream) : javax.xml.stream.XMLStreamWriter;
	
	@:overload override public function doCreate(out : java.io.OutputStream, encoding : String) : javax.xml.stream.XMLStreamWriter;
	
	@:overload override public function doRecycle(r : javax.xml.stream.XMLStreamWriter) : Void;
	
	
}
/**
*
* For {@link javax.xml.stream.XMLOutputFactory} is thread safe.
*/
@:native('com$sun$xml$internal$ws$api$streaming$XMLStreamWriterFactory$NoLock') extern class XMLStreamWriterFactory_NoLock extends com.sun.xml.internal.ws.api.streaming.XMLStreamWriterFactory
{
	@:overload public function new(xof : javax.xml.stream.XMLOutputFactory) : Void;
	
	@:overload override public function doCreate(out : java.io.OutputStream) : javax.xml.stream.XMLStreamWriter;
	
	@:overload override public function doCreate(out : java.io.OutputStream, encoding : String) : javax.xml.stream.XMLStreamWriter;
	
	@:overload override public function doRecycle(r : javax.xml.stream.XMLStreamWriter) : Void;
	
	
}
