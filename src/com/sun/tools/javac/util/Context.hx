package com.sun.tools.javac.util;
/*
* Copyright (c) 2001, 2011, Oracle and/or its affiliates. All rights reserved.
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
/**
* Support for an abstract context, modelled loosely after ThreadLocal
* but using a user-provided context instead of the current thread.
*
* <p>Within the compiler, a single Context is used for each
* invocation of the compiler.  The context is then used to ensure a
* single copy of each compiler phase exists per compiler invocation.
*
* <p>The context can be used to assist in extending the compiler by
* extending its components.  To do that, the extended component must
* be registered before the base component.  We break initialization
* cycles by (1) registering a factory for the component rather than
* the component itself, and (2) a convention for a pattern of usage
* in which each base component registers itself by calling an
* instance method that is overridden in extended components.  A base
* phase supporting extension would look something like this:
*
* <p><pre>
* public class Phase {
*     protected static final Context.Key<Phase> phaseKey =
*         new Context.Key<Phase>();
*
*     public static Phase instance(Context context) {
*         Phase instance = context.get(phaseKey);
*         if (instance == null)
*             // the phase has not been overridden
*             instance = new Phase(context);
*         return instance;
*     }
*
*     protected Phase(Context context) {
*         context.put(phaseKey, this);
*         // other intitialization follows...
*     }
* }
* </pre>
*
* <p>In the compiler, we simply use Phase.instance(context) to get
* the reference to the phase.  But in extensions of the compiler, we
* must register extensions of the phases to replace the base phase,
* and this must be done before any reference to the phase is accessed
* using Phase.instance().  An extended phase might be declared thus:
*
* <p><pre>
* public class NewPhase extends Phase {
*     protected NewPhase(Context context) {
*         super(context);
*     }
*     public static void preRegister(final Context context) {
*         context.put(phaseKey, new Context.Factory<Phase>() {
*             public Phase make() {
*                 return new NewPhase(context);
*             }
*         });
*     }
* }
* </pre>
*
* <p>And is registered early in the extended compiler like this
*
* <p><pre>
*     NewPhase.preRegister(context);
* </pre>
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Context
{
	/** Set the factory for the key in this context. */
	@:overload public function put<T>(key : com.sun.tools.javac.util.Context.Context_Key<T>, fac : com.sun.tools.javac.util.Context.Context_Factory<T>) : Void;
	
	/** Set the value for the key in this context. */
	@:overload public function put<T>(key : com.sun.tools.javac.util.Context.Context_Key<T>, data : T) : Void;
	
	/** Get the value for the key in this context. */
	@:overload public function get<T>(key : com.sun.tools.javac.util.Context.Context_Key<T>) : T;
	
	@:overload public function new() : Void;
	
	@:overload public function new(prev : com.sun.tools.javac.util.Context) : Void;
	
	@:overload public function get<T>(clazz : Class<T>) : T;
	
	@:overload public function put<T>(clazz : Class<T>, data : T) : Void;
	
	@:overload public function put<T>(clazz : Class<T>, fac : com.sun.tools.javac.util.Context.Context_Factory<T>) : Void;
	
	@:overload public function dump() : Void;
	
	@:overload public function clear() : Void;
	
	
}
/** The client creates an instance of this class for each key.
*/
@:native('com$sun$tools$javac$util$Context$Key') extern class Context_Key<T>
{
	
}
/**
* The client can register a factory for lazy creation of the
* instance.
*/
@:native('com$sun$tools$javac$util$Context$Factory') extern interface Context_Factory<T>
{
	@:overload public function make(c : com.sun.tools.javac.util.Context) : T;
	
	
}
