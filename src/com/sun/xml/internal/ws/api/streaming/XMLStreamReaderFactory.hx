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
extern class XMLStreamReaderFactory
{
	/**
	* Overrides the singleton {@link XMLStreamReaderFactory} instance that
	* the JAX-WS RI uses.
	*/
	@:overload public static function set(f : com.sun.xml.internal.ws.api.streaming.XMLStreamReaderFactory) : Void;
	
	@:overload public static function get() : com.sun.xml.internal.ws.api.streaming.XMLStreamReaderFactory;
	
	@:overload public static function create(source : org.xml.sax.InputSource, rejectDTDs : Bool) : javax.xml.stream.XMLStreamReader;
	
	@:overload public static function create(systemId : String, _in : java.io.InputStream, rejectDTDs : Bool) : javax.xml.stream.XMLStreamReader;
	
	@:overload public static function create(systemId : String, _in : java.io.InputStream, encoding : String, rejectDTDs : Bool) : javax.xml.stream.XMLStreamReader;
	
	@:overload public static function create(systemId : String, reader : java.io.Reader, rejectDTDs : Bool) : javax.xml.stream.XMLStreamReader;
	
	/**
	* Should be invoked when the code finished using an {@link XMLStreamReader}.
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
	@:overload public static function recycle(r : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload @:abstract public function doCreate(systemId : String, _in : java.io.InputStream, rejectDTDs : Bool) : javax.xml.stream.XMLStreamReader;
	
	@:overload @:abstract public function doCreate(systemId : String, reader : java.io.Reader, rejectDTDs : Bool) : javax.xml.stream.XMLStreamReader;
	
	@:overload @:abstract public function doRecycle(r : javax.xml.stream.XMLStreamReader) : Void;
	
	
}
/**
* Interface that can be implemented by {@link XMLStreamReader} to
* be notified when it's recycled.
*
* <p>
* This provides a filtering {@link XMLStreamReader} an opportunity to
* recycle its inner {@link XMLStreamReader}.
*/
@:native('com$sun$xml$internal$ws$api$streaming$XMLStreamReaderFactory$RecycleAware') extern interface XMLStreamReaderFactory_RecycleAware
{
	@:overload public function onRecycled() : Void;
	
	
}
/**
* {@link XMLStreamReaderFactory} implementation for SJSXP/JAXP RI.
*/
@:native('com$sun$xml$internal$ws$api$streaming$XMLStreamReaderFactory$Zephyr') extern class XMLStreamReaderFactory_Zephyr extends com.sun.xml.internal.ws.api.streaming.XMLStreamReaderFactory
{
	/**
	* Creates {@link Zephyr} instance if the given {@link XMLInputFactory} is the one
	* from Zephyr.
	*/
	@:overload public static function newInstance(xif : javax.xml.stream.XMLInputFactory) : com.sun.xml.internal.ws.api.streaming.XMLStreamReaderFactory;
	
	@:overload public function new(xif : javax.xml.stream.XMLInputFactory, clazz : Class<Dynamic>) : Void;
	
	@:overload override public function doRecycle(r : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload override public function doCreate(systemId : String, _in : java.io.InputStream, rejectDTDs : Bool) : javax.xml.stream.XMLStreamReader;
	
	@:overload override public function doCreate(systemId : String, _in : java.io.Reader, rejectDTDs : Bool) : javax.xml.stream.XMLStreamReader;
	
	
}
/**
* Default {@link XMLStreamReaderFactory} implementation
* that can work with any {@link XMLInputFactory}.
*
* <p>
* {@link XMLInputFactory} is not required to be thread-safe, but
* if the create method on this implementation is synchronized,
* it may run into (see <a href="https://jax-ws.dev.java.net/issues/show_bug.cgi?id=555">
* race condition</a>). Hence, using a XMLInputFactory per theread.
*/
@:native('com$sun$xml$internal$ws$api$streaming$XMLStreamReaderFactory$Default') extern class XMLStreamReaderFactory_Default extends com.sun.xml.internal.ws.api.streaming.XMLStreamReaderFactory
{
	@:overload override public function doCreate(systemId : String, _in : java.io.InputStream, rejectDTDs : Bool) : javax.xml.stream.XMLStreamReader;
	
	@:overload override public function doCreate(systemId : String, _in : java.io.Reader, rejectDTDs : Bool) : javax.xml.stream.XMLStreamReader;
	
	@:overload override public function doRecycle(r : javax.xml.stream.XMLStreamReader) : Void;
	
	
}
/**
* Similar to {@link Default} but doesn't do any synchronization.
*
* <p>
* This is useful when you know your {@link XMLInputFactory} is thread-safe by itself.
*/
@:native('com$sun$xml$internal$ws$api$streaming$XMLStreamReaderFactory$NoLock') extern class XMLStreamReaderFactory_NoLock extends com.sun.xml.internal.ws.api.streaming.XMLStreamReaderFactory
{
	@:overload public function new(xif : javax.xml.stream.XMLInputFactory) : Void;
	
	@:overload override public function doCreate(systemId : String, _in : java.io.InputStream, rejectDTDs : Bool) : javax.xml.stream.XMLStreamReader;
	
	@:overload override public function doCreate(systemId : String, _in : java.io.Reader, rejectDTDs : Bool) : javax.xml.stream.XMLStreamReader;
	
	@:overload override public function doRecycle(r : javax.xml.stream.XMLStreamReader) : Void;
	
	
}
/**
* Handles Woodstox's XIF but set properties to do the string interning.
* Woodstox {@link XMLInputFactory} is thread safe.
*/
@:native('com$sun$xml$internal$ws$api$streaming$XMLStreamReaderFactory$Woodstox') extern class XMLStreamReaderFactory_Woodstox extends com.sun.xml.internal.ws.api.streaming.XMLStreamReaderFactory.XMLStreamReaderFactory_NoLock
{
	@:overload public function new(xif : javax.xml.stream.XMLInputFactory) : Void;
	
	@:overload override public function doCreate(systemId : String, _in : java.io.InputStream, rejectDTDs : Bool) : javax.xml.stream.XMLStreamReader;
	
	@:overload override public function doCreate(systemId : String, _in : java.io.Reader, rejectDTDs : Bool) : javax.xml.stream.XMLStreamReader;
	
	
}
