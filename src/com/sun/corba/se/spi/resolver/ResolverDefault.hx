package com.sun.corba.se.spi.resolver;
/*
* Copyright (c) 2002, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class ResolverDefault
{
	/** Return a local resolver that simply stores bindings in a map.
	*/
	@:overload @:public @:static public static function makeLocalResolver() : com.sun.corba.se.spi.resolver.LocalResolver;
	
	/** Return a resolver that relies on configured values of ORBInitRef for data.
	*/
	@:overload @:public @:static public static function makeORBInitRefResolver(urlOperation : com.sun.corba.se.spi.orb.Operation, initRefs : java.NativeArray<com.sun.corba.se.spi.orb.StringPair>) : com.sun.corba.se.spi.resolver.Resolver;
	
	@:overload @:public @:static public static function makeORBDefaultInitRefResolver(urlOperation : com.sun.corba.se.spi.orb.Operation, defaultInitRef : String) : com.sun.corba.se.spi.resolver.Resolver;
	
	/** Return a resolver that uses the proprietary bootstrap protocol
	* to implement a resolver.  Obtains the necessary host and port
	* information from the ORB.
	*/
	@:overload @:public @:static public static function makeBootstrapResolver(orb : com.sun.corba.se.spi.orb.ORB, host : String, port : Int) : com.sun.corba.se.spi.resolver.Resolver;
	
	/** Return a resolver composed of the two given resolvers.  result.list() is the
	* union of first.list() and second.list().  result.resolve( name ) returns
	* first.resolve( name ) if that is not null, otherwise returns the result of
	* second.resolve( name ).
	*/
	@:overload @:public @:static public static function makeCompositeResolver(first : com.sun.corba.se.spi.resolver.Resolver, second : com.sun.corba.se.spi.resolver.Resolver) : com.sun.corba.se.spi.resolver.Resolver;
	
	@:overload @:public @:static public static function makeINSURLOperation(orb : com.sun.corba.se.spi.orb.ORB, bootstrapResolver : com.sun.corba.se.spi.resolver.Resolver) : com.sun.corba.se.spi.orb.Operation;
	
	@:overload @:public @:static public static function makeSplitLocalResolver(resolver : com.sun.corba.se.spi.resolver.Resolver, localResolver : com.sun.corba.se.spi.resolver.LocalResolver) : com.sun.corba.se.spi.resolver.LocalResolver;
	
	@:overload @:public @:static public static function makeFileResolver(orb : com.sun.corba.se.spi.orb.ORB, file : java.io.File) : com.sun.corba.se.spi.resolver.Resolver;
	
	
}
