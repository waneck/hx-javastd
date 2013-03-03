package javax.xml.ws.spi;
/*
* Copyright (c) 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class Invoker
{
	/**
	* JAX-WS runtimes calls this method to ask container to inject
	* WebServiceContext on the endpoint instance. The
	* <code>WebServiceContext</code> object uses thread-local information
	* to return the correct information during the actual endpoint invocation
	* regardless of how many threads are concurrently being used to serve
	* requests.
	*
	* @param webServiceContext a holder for MessageContext
	* @throws IllegalAccessException if the injection done
	*         by reflection API throws this exception
	* @throws IllegalArgumentException if the injection done
	*         by reflection API throws this exception
	* @throws InvocationTargetException if the injection done
	*         by reflection API throws this exception
	*/
	@:overload @:public @:abstract public function inject(webServiceContext : javax.xml.ws.WebServiceContext) : Void;
	
	/**
	* JAX-WS runtime calls this method to do the actual web service
	* invocation on endpoint instance. The injected
	* <code>WebServiceContext.getMessageContext()</code> gives the correct
	* information for this invocation.
	*
	* @param m Method to be invoked on the service
	* @param args Method arguments
	* @return return value of the method
	* @throws IllegalAccessException if the invocation done
	*         by reflection API throws this exception
	* @throws IllegalArgumentException if the invocation done
	*         by reflection API throws this exception
	* @throws InvocationTargetException if the invocation done
	*         by reflection API throws this exception

	* @see Method#invoke
	*/
	@:overload @:public @:abstract public function invoke(m : java.lang.reflect.Method, args : java.NativeArray<Dynamic>) : Dynamic;
	
	
}
