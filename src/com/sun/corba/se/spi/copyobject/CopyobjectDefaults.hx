package com.sun.corba.se.spi.copyobject;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class CopyobjectDefaults
{
	/** Obtain the ORB stream copier factory.  Note that this version behaves differently
	* than the others: each ObjectCopier produced by the factory only preserves aliasing
	* within a single call to copy.  The others copiers all preserve aliasing across
	* all calls to copy (on the same ObjectCopier instance).
	*/
	@:overload public static function makeORBStreamObjectCopierFactory(orb : com.sun.corba.se.spi.orb.ORB) : com.sun.corba.se.spi.copyobject.ObjectCopierFactory;
	
	@:overload public static function makeJavaStreamObjectCopierFactory(orb : com.sun.corba.se.spi.orb.ORB) : com.sun.corba.se.spi.copyobject.ObjectCopierFactory;
	
	/** Obtain the reference object "copier".  This does no copies: it just
	* returns whatever is passed to it.
	*/
	@:overload public static function getReferenceObjectCopierFactory() : com.sun.corba.se.spi.copyobject.ObjectCopierFactory;
	
	/** Create a fallback copier factory from the two ObjectCopierFactory
	* arguments.  This copier makes an ObjectCopierFactory that creates
	* instances of a fallback copier that first tries an ObjectCopier
	* created from f1, then tries one created from f2, if the first
	* throws a ReflectiveCopyException.
	*/
	@:overload public static function makeFallbackObjectCopierFactory(f1 : com.sun.corba.se.spi.copyobject.ObjectCopierFactory, f2 : com.sun.corba.se.spi.copyobject.ObjectCopierFactory) : com.sun.corba.se.spi.copyobject.ObjectCopierFactory;
	
	
}
