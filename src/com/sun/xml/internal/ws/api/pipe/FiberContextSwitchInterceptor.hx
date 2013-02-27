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
extern interface FiberContextSwitchInterceptor
{
	/**
	* Allows the interception of the fiber execution.
	*
	* <p>
	* This method needs to be implemented like this:
	*
	* <pre>
	* &lt;R,P> R execute( Fiber f, P p, Work&lt;R,P> work ) {
	*   // do some preparation work
	*   ...
	*   try {
	*     // invoke
	*     return work.execute(p);
	*   } finally {
	*     // do some clean up work
	*     ...
	*   }
	* }
	* </pre>
	*
	* <p>
	* While somewhat unintuitive,
	* this interception mechanism enables the interceptor to wrap
	* the whole fiber execution into a {@link AccessController#doPrivileged(PrivilegedAction)},
	* for example.
	*
	* @param f
	*      {@link Fiber} to be executed.
	* @param p
	*      The opaque parameter value for {@link Work}. Simply pass this value to
	*      {@link Work#execute(Object)}.
	* @return
	*      The opaque return value from the the {@link Work}. Simply return
	*      the value from {@link Work#execute(Object)}.
	*/
	@:overload public function execute<R, P>(f : com.sun.xml.internal.ws.api.pipe.Fiber, p : P, work : FiberContextSwitchInterceptor_Work<R, P>) : R;
	
	
}
/**
* Abstraction of the execution that happens inside the interceptor.
*/
@:native('com$sun$xml$internal$ws$api$pipe$FiberContextSwitchInterceptor$Work') @:internal extern interface FiberContextSwitchInterceptor_Work<R, P>
{
	/**
	* Have the current thread executes the current fiber,
	* and returns when it stops doing so.
	*
	* <p>
	* The parameter and the return value is controlled by the
	* JAX-WS runtime, and interceptors should simply treat
	* them as opaque values.
	*/
	@:overload public function execute(param : P) : R;
	
	
}
