package com.sun.xml.internal.ws.api.pipe;
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
extern class Fiber implements java.lang.Runnable
{
	public var owner(default, null) : com.sun.xml.internal.ws.api.pipe.Engine;
	
	/**
	* Starts the execution of this fiber asynchronously.
	*
	* <p>
	* This method works like {@link Thread#start()}.
	*
	* @param tubeline
	*      The first tube of the tubeline that will act on the packet.
	* @param request
	*      The request packet to be passed to <tt>startPoint.processRequest()</tt>.
	* @param completionCallback
	*      The callback to be invoked when the processing is finished and the
	*      final response packet is available.
	*
	* @see #runSync(Tube,Packet)
	*/
	@:overload public function start(tubeline : com.sun.xml.internal.ws.api.pipe.Tube, request : com.sun.xml.internal.ws.api.message.Packet, completionCallback : Fiber_CompletionCallback) : Void;
	
	@:overload public function runAsync(tubeline : com.sun.xml.internal.ws.api.pipe.Tube, request : com.sun.xml.internal.ws.api.message.Packet, completionCallback : Fiber_CompletionCallback) : Void;
	
	/**
	* Wakes up a suspended fiber.
	*
	* <p>
	* If a fiber was suspended without specifying the next {@link Tube},
	* then the execution will be resumed in the response processing direction,
	* by calling the {@link Tube#processResponse(Packet)} method on the next/first
	* {@link Tube} in the {@link Fiber}'s processing stack with the specified resume
	* packet as the parameter.
	*
	* <p>
	* If a fiber was suspended with specifying the next {@link Tube},
	* then the execution will be resumed in the request processing direction,
	* by calling the next tube's {@link Tube#processRequest(Packet)} method with the
	* specified resume packet as the parameter.
	*
	* <p>
	* This method is implemented in a race-free way. Another thread can invoke
	* this method even before this fiber goes into the suspension mode. So the caller
	* need not worry about synchronizing {@link NextAction#suspend()} and this method.
	*
	* @param resumePacket packet used in the resumed processing
	*/
	@:overload @:synchronized public function resume(resumePacket : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	/**
	* Wakes up a suspended fiber with an exception.
	*
	* <p>
	* The execution of the suspended fiber will be resumed in the response
	* processing direction, by calling the {@link Tube#processException(Throwable)} method
	* on the next/first {@link Tube} in the {@link Fiber}'s processing stack with
	* the specified exception as the parameter.
	*
	* <p>
	* This method is implemented in a race-free way. Another thread can invoke
	* this method even before this fiber goes into the suspension mode. So the caller
	* need not worry about synchronizing {@link NextAction#suspend()} and this method.
	*
	* @param throwable exception that is used in the resumed processing
	*/
	@:overload @:synchronized public function resume(throwable : java.lang.Throwable) : Void;
	
	/**
	* Adds a new {@link FiberContextSwitchInterceptor} to this fiber.
	*
	* <p>
	* The newly installed fiber will take effect immediately after the current
	* tube returns from its {@link Tube#processRequest(Packet)} or
	* {@link Tube#processResponse(Packet)}, before the next tube begins processing.
	*
	* <p>
	* So when the tubeline consists of X and Y, and when X installs an interceptor,
	* the order of execution will be as follows:
	*
	* <ol>
	*  <li>X.processRequest()
	*  <li>interceptor gets installed
	*  <li>interceptor.execute() is invoked
	*  <li>Y.processRequest()
	* </ol>
	*/
	@:overload public function addInterceptor(interceptor : com.sun.xml.internal.ws.api.pipe.FiberContextSwitchInterceptor) : Void;
	
	/**
	* Removes a {@link FiberContextSwitchInterceptor} from this fiber.
	*
	* <p>
	* The removal of the interceptor takes effect immediately after the current
	* tube returns from its {@link Tube#processRequest(Packet)} or
	* {@link Tube#processResponse(Packet)}, before the next tube begins processing.
	*
	*
	* <p>
	* So when the tubeline consists of X and Y, and when Y uninstalls an interceptor
	* on the way out, then the order of execution will be as follows:
	*
	* <ol>
	*  <li>Y.processResponse() (notice that this happens with interceptor.execute() in the callstack)
	*  <li>interceptor gets uninstalled
	*  <li>interceptor.execute() returns
	*  <li>X.processResponse()
	* </ol>
	*
	* @return
	*      true if the specified interceptor was removed. False if
	*      the specified interceptor was not registered with this fiber to begin with.
	*/
	@:overload public function removeInterceptor(interceptor : com.sun.xml.internal.ws.api.pipe.FiberContextSwitchInterceptor) : Bool;
	
	/**
	* Gets the context {@link ClassLoader} of this fiber.
	*/
	@:overload public function getContextClassLoader() : java.lang.ClassLoader;
	
	/**
	* Sets the context {@link ClassLoader} of this fiber.
	*/
	@:overload public function setContextClassLoader(contextClassLoader : java.lang.ClassLoader) : java.lang.ClassLoader;
	
	/**
	* DO NOT CALL THIS METHOD. This is an implementation detail
	* of {@link Fiber}.
	*/
	@:overload public function run() : Void;
	
	/**
	* Runs a given {@link Tube} (and everything thereafter) synchronously.
	*
	* <p>
	* This method blocks and returns only when all the successive {@link Tube}s
	* complete their request/response processing. This method can be used
	* if a {@link Tube} needs to fallback to synchronous processing.
	*
	* <h3>Example:</h3>
	* <pre>
	* class FooTube extends {@link AbstractFilterTubeImpl} {
	*   NextAction processRequest(Packet request) {
	*     // run everything synchronously and return with the response packet
	*     return doReturnWith(Fiber.current().runSync(next,request));
	*   }
	*   NextAction processResponse(Packet response) {
	*     // never be invoked
	*   }
	* }
	* </pre>
	*
	* @param tubeline
	*      The first tube of the tubeline that will act on the packet.
	* @param request
	*      The request packet to be passed to <tt>startPoint.processRequest()</tt>.
	* @return
	*      The response packet to the <tt>request</tt>.
	*
	* @see #start(Tube, Packet, CompletionCallback)
	*/
	@:overload @:synchronized public function runSync(tubeline : com.sun.xml.internal.ws.api.pipe.Tube, request : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.message.Packet;
	
	@:overload public function toString() : String;
	
	/**
	* Gets the current {@link Packet} associated with this fiber.
	*
	* <p>
	* This method returns null if no packet has been associated with the fiber yet.
	*/
	@:overload public function getPacket() : com.sun.xml.internal.ws.api.message.Packet;
	
	/**
	* Returns true if this fiber is still running or suspended.
	*/
	@:overload public function isAlive() : Bool;
	
	/**
	* (ADVANCED) Returns true if the current fiber is being executed synchronously.
	*
	* <p>
	* Fiber may run synchronously for various reasons. Perhaps this is
	* on client side and application has invoked a synchronous method call.
	* Perhaps this is on server side and we have deployed on a synchronous
	* transport (like servlet.)
	*
	* <p>
	* When a fiber is run synchronously (IOW by {@link #runSync(Tube, Packet)}),
	* further invocations to {@link #runSync(Tube, Packet)} can be done
	* without degrading the performance.
	*
	* <p>
	* So this value can be used as a further optimization hint for
	* advanced {@link Tube}s to choose the best strategy to invoke
	* the next {@link Tube}. For example, a tube may want to install
	* a {@link FiberContextSwitchInterceptor} if running async, yet
	* it might find it faster to do {@link #runSync(Tube, Packet)}
	* if it's already running synchronously.
	*/
	@:overload public static function isSynchronous() : Bool;
	
	/**
	* Gets the current fiber that's running.
	*
	* <p>
	* This works like {@link Thread#currentThread()}.
	* This method only works when invoked from {@link Tube}.
	*/
	@:overload public static function current() : Fiber;
	
	/**
	* Set this boolean to true to execute fibers sequentially one by one.
	* See class javadoc.
	*/
	@:volatile public static var serializeExecution : Bool;
	
	
}
/**
* Callback to be invoked when a {@link Fiber} finishs execution.
*/
@:native('com$sun$xml$internal$ws$api$pipe$Fiber$CompletionCallback') extern interface Fiber_CompletionCallback
{
	/**
	* Indicates that the fiber has finished its execution.
	*
	* <p>
	* Since the JAX-WS RI runs asynchronously,
	* this method maybe invoked by a different thread
	* than any of the threads that started it or run a part of tubeline.
	*/
	@:overload public function onCompletion(response : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	/**
	* Indicates that the fiber has finished abnormally, by throwing a given {@link Throwable}.
	*/
	@:overload public function onCompletion(error : java.lang.Throwable) : Void;
	
	
}
/**
* Invokes all registered {@link InterceptorHandler}s and then call into
* {@link Fiber#__doRun(Tube)}.
*/
@:native('com$sun$xml$internal$ws$api$pipe$Fiber$InterceptorHandler') @:internal extern class Fiber_InterceptorHandler implements com.sun.xml.internal.ws.api.pipe.FiberContextSwitchInterceptor.FiberContextSwitchInterceptor_Work<com.sun.xml.internal.ws.api.pipe.Tube, com.sun.xml.internal.ws.api.pipe.Tube>
{
	@:overload public function execute(next : com.sun.xml.internal.ws.api.pipe.Tube) : com.sun.xml.internal.ws.api.pipe.Tube;
	
	
}
