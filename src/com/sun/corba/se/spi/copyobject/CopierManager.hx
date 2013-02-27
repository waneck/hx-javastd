package com.sun.corba.se.spi.copyobject;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
/** Manager of ObjectCopier implementations used to support javax.rmi.CORBA.Util.copyObject(s).
* This provides simple methods for registering all supported ObjectCopier factories.
* A default copier is also supported, for use in contexts where no specific copier id
* is available.
*/
extern interface CopierManager
{
	/** Set the Id of the copier to use if no other copier has been set.
	*/
	@:overload public function setDefaultId(id : Int) : Void;
	
	/** Return the copier for the default copier id.  Throws a BAD_PARAM exception
	* if no default copier id has been set.
	*/
	@:overload public function getDefaultId() : Int;
	
	@:overload public function getObjectCopierFactory(id : Int) : com.sun.corba.se.spi.copyobject.ObjectCopierFactory;
	
	@:overload public function getDefaultObjectCopierFactory() : com.sun.corba.se.spi.copyobject.ObjectCopierFactory;
	
	/** Register an ObjectCopierFactory under a particular id.  This can be retrieved
	* later by getObjectCopierFactory.
	*/
	@:overload public function registerObjectCopierFactory(factory : com.sun.corba.se.spi.copyobject.ObjectCopierFactory, id : Int) : Void;
	
	
}
